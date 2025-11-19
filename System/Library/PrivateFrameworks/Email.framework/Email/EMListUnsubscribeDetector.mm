@interface EMListUnsubscribeDetector
+ (id)receivingAccountFromMessage:(id)a3;
+ (id)validatedUnsubscribeTypeForHeader:(id)a3 dkimVerified:(unint64_t)a4;
+ (int64_t)unsubscribeTypeForHeader:(id)a3;
+ (uint64_t)_validateHeaders:(uint64_t)a3 dkimVerified:;
- (BOOL)shouldIgnoreMessageWithHeaders:(id)a3;
- (EMListUnsubscribeDetector)init;
- (EMListUnsubscribeDetector)initWithMutableDictionary:(id)a3;
- (id)_listIDString:(id)a3;
- (id)_normalizedAddress:(id)a3;
- (id)_persistentKeyForHeaders:(id)a3;
- (id)_senderString:(id)a3;
- (id)commandForMessage:(id)a3 dkimVerified:(unint64_t)a4;
- (id)commandForMessage:(id)a3 mailToOnly:(BOOL)a4 dkimVerified:(unint64_t)a5;
- (void)acceptCommand:(id)a3;
- (void)ignoreCommand:(id)a3;
@end

@implementation EMListUnsubscribeDetector

+ (uint64_t)_validateHeaders:(uint64_t)a3 dkimVerified:
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = a2;
  objc_opt_self();
  v4 = [v19 encodedHeaders];
  v5 = EMRecodeDataToNetwork(v4);

  if (v5)
  {
    v24 = 0;
    v17 = objc_alloc_init(MEMORY[0x1E699B230]);
    v6 = [v17 verificationContextForMessageData:v5 error:&v24];
    v18 = v24;
    v7 = 2;
    if (a3 != 1 && v6 && !v18)
    {
      [v6 dkimSignatureHeaders];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v8 = v21 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v9)
      {
        v10 = *v21;
        v11 = *MEMORY[0x1E699B118];
        v12 = *MEMORY[0x1E699B120];
LABEL_7:
        v13 = 0;
        while (1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [*(*(&v20 + 1) + 8 * v13) signedHeaderFields];
          if ([v14 containsObject:v11])
          {
            if ([v14 containsObject:v12])
            {
              break;
            }
          }

          if (v9 == ++v13)
          {
            v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
            if (v9)
            {
              goto LABEL_7;
            }

            goto LABEL_19;
          }
        }

        if (a3)
        {
          if (a3 != 2)
          {
            goto LABEL_20;
          }

          v7 = 1;
        }

        else if ([v17 verifyMessageWithContext:v6 options:1 error:0])
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }
      }

      else
      {
LABEL_19:

LABEL_20:
        v7 = 2;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (int64_t)unsubscribeTypeForHeader:(id)a3
{
  v3 = a3;
  [(EMListUnsubscribeDetector *)[[_EMUnsubscribeInfo alloc] initWithHeaders:v3] unsubscribeTypeForHeader:v3, &v5];
  return v5;
}

+ (id)validatedUnsubscribeTypeForHeader:(id)a3 dkimVerified:(unint64_t)a4
{
  v5 = a3;
  v6 = [[_EMUnsubscribeInfo alloc] initWithHeaders:v5];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_17;
  }

  mailtoURL = v6->_mailtoURL;
  postURL = v6->_postURL;
  v13 = mailtoURL == 0;
  v10 = mailtoURL != 0;
  v11 = 2;
  if (!v13)
  {
    v11 = 3;
  }

  if (postURL)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (!v6->_postContent)
  {
    goto LABEL_18;
  }

  v12 = postURL ? v10 | 6 : v10;
  v13 = !postURL || (v12 & 2) == 0;
  if (v13)
  {
    goto LABEL_18;
  }

  v14 = [EMListUnsubscribeDetector _validateHeaders:v5 dkimVerified:a4];
  if (v14)
  {
    if (v14 != 2)
    {
LABEL_18:
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      goto LABEL_19;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (EMListUnsubscribeDetector)initWithMutableDictionary:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"EMListUnsubscribeDetector.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
  }

  v11.receiver = self;
  v11.super_class = EMListUnsubscribeDetector;
  v7 = [(EMListUnsubscribeDetector *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_persistentDictionary, a3);
  }

  return v8;
}

- (EMListUnsubscribeDetector)init
{
  v3 = [EMUbiquitouslyPersistedDictionary sharedDictionaryWithIdentifier:@"com.apple.mail.listUnsubscribeInfo"];
  v4 = [(EMListUnsubscribeDetector *)self initWithMutableDictionary:v3];

  return v4;
}

- (id)commandForMessage:(id)a3 mailToOnly:(BOOL)a4 dkimVerified:(unint64_t)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 headers];
  if ([(EMListUnsubscribeDetector *)self shouldIgnoreMessageWithHeaders:v9])
  {
    v10 = 0;
    goto LABEL_50;
  }

  v11 = [objc_opt_class() receivingAccountFromMessage:v8];
  v12 = [v11 deliveryAccount];

  if (v12)
  {
    if (a4)
    {
      v13 = 1;
    }

    else
    {
      v14 = MEMORY[0x1E699B7C8];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __71__EMListUnsubscribeDetector_commandForMessage_mailToOnly_dkimVerified___block_invoke;
      v51[3] = &unk_1E826D648;
      v52 = v9;
      v53 = a5;
      v15 = [v14 futureWithBlock:v51];
      v16 = [v15 resultWithTimeout:0 error:3.0];
      v17 = v16;
      if (v16)
      {
        v13 = [v16 integerValue] != 1;
      }

      else
      {
        v18 = EMLogCategoryMessageLoading();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          [(EMListUnsubscribeDetector *)v20 commandForMessage:v8 mailToOnly:buf dkimVerified:v18];
        }

        v13 = 1;
      }
    }

    v50 = [v9 firstHeaderForKey:*MEMORY[0x1E699B110]];
    v21 = [[_EMUnsubscribeInfo alloc] initWithHeaders:v9];
    v22 = v21;
    if (v21)
    {
      postContent = v21->_postContent;
      postURL = v21->_postURL;
      mailtoURL = v21->_mailtoURL;
    }

    else
    {
      postContent = 0;
      postURL = 0;
      mailtoURL = 0;
    }

    if (postContent)
    {
      v26 = v13;
    }

    else
    {
      v26 = 1;
    }

    if ((v26 & 1) != 0 || !postURL)
    {
      if (!mailtoURL)
      {
        v10 = 0;
        goto LABEL_48;
      }

      if (v21)
      {
        v38 = v21->_mailtoURL;
      }

      else
      {
        v38 = 0;
      }

      v27 = [EMMailToURLComponents componentsWithURL:v38];
      v39 = [v27 toRecipients];
      v40 = [v39 count] == 0;

      if (v40)
      {
        v10 = 0;
        goto LABEL_47;
      }

      v28 = [v27 toRecipients];
      v29 = [v28 objectAtIndexedSubscript:0];
      v30 = [v9 firstSenderAddress];
      v49 = [v9 senderForUnsubscribeMessage];
      v48 = [v27 subject];
      v41 = [v27 body];
      if (v22)
      {
        v42 = v22->_mailtoURL;
        v43 = v22->_postURL;
        v35 = v42 == 0;
        v44 = v42 != 0;
        v45 = 2;
        if (!v35)
        {
          v45 = 3;
        }

        if (!v43)
        {
          v45 = v44;
        }

        if (v22->_postContent)
        {
          v45 = v44 | 6;
          if (!v43)
          {
            v45 = v44;
          }
        }
      }

      else
      {
        v45 = 0;
      }

      v10 = [EMListUnsubscribeCommand mailtoUnsubscribeCommandWithListID:v50 address:v29 sender:v30 senderForUnsubscribeMessage:v49 subject:v48 body:v41 account:v11 headerUnsubscribeTypes:v45];
    }

    else
    {
      v27 = [v9 firstSenderAddress];
      v28 = [v9 senderForUnsubscribeMessage];
      if (v22)
      {
        v29 = v22->_postURL;
        v30 = v22->_postContent;
        v31 = v22->_mailtoURL;
        v32 = v22->_postURL;
        v35 = v31 == 0;
        v33 = v31 != 0;
        v34 = 2;
        if (!v35)
        {
          v34 = 3;
        }

        v35 = v32 == 0;
        if (v32)
        {
          v36 = v34;
        }

        else
        {
          v36 = v33;
        }

        if (!v35)
        {
          v33 |= 6uLL;
        }

        if (v22->_postContent)
        {
          v37 = v33;
        }

        else
        {
          v37 = v36;
        }
      }

      else
      {
        v30 = 0;
        v29 = 0;
        v37 = 0;
      }

      v10 = [EMListUnsubscribeCommand oneClickUnsubscribeCommandWithListID:v50 sender:v27 senderForUnsubscribeMessage:v28 URL:v29 postContent:v30 headerUnsubscribeTypes:v37];
    }

LABEL_47:
LABEL_48:

    goto LABEL_49;
  }

  v10 = 0;
LABEL_49:

LABEL_50:
  v46 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t __71__EMListUnsubscribeDetector_commandForMessage_mailToOnly_dkimVerified___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [EMListUnsubscribeDetector _validateHeaders:*(a1 + 40) dkimVerified:?];

  return [v1 numberWithInteger:v2];
}

- (id)commandForMessage:(id)a3 dkimVerified:(unint64_t)a4
{
  v4 = [(EMListUnsubscribeDetector *)self commandForMessage:a3 mailToOnly:0 dkimVerified:a4];

  return v4;
}

- (void)acceptCommand:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"EMListUnsubscribeDetector.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"command"}];

    v5 = 0;
  }

  v6 = [(EMListUnsubscribeDetector *)self _persistentKeyForHeaders:v5];
  if (v6)
  {
    [(EMMutableDictionaryProtocol *)self->_persistentDictionary setObject:@"accepted" forKey:v6];
  }
}

- (void)ignoreCommand:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"EMListUnsubscribeDetector.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"command"}];

    v5 = 0;
  }

  v6 = [(EMListUnsubscribeDetector *)self _persistentKeyForHeaders:v5];
  if (v6)
  {
    [(EMMutableDictionaryProtocol *)self->_persistentDictionary setObject:@"ignored" forKey:v6];
  }
}

- (id)_normalizedAddress:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^[^<>]*<([^>]+)>\\s*$|^(.+)$" options:8 error:0];
    v5 = [v4 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{objc_msgSend(v3, "length"), @"$1$2"}];
    v6 = [v5 lowercaseString];

    v7 = [MEMORY[0x1E699AFD0] idnaEncodedAddressForAddress:v6];

    if ([v7 length] > 0x3E)
    {
      v8 = [v7 substringToIndex:62];
    }

    else
    {
      v8 = v7;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_listIDString:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(EMListUnsubscribeDetector *)self _normalizedAddress:a3];
  v5 = [v3 stringWithFormat:@"L:%@", v4];

  return v5;
}

- (id)_senderString:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(EMListUnsubscribeDetector *)self _normalizedAddress:a3];
  v5 = [v3 stringWithFormat:@"S:%@", v4];

  return v5;
}

- (id)_persistentKeyForHeaders:(id)a3
{
  v4 = a3;
  v5 = [v4 sender];
  v6 = [v4 listID];
  if ([v6 length])
  {
    v7 = [(EMListUnsubscribeDetector *)self _listIDString:v6];
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  if ([v5 length])
  {
    v7 = [(EMListUnsubscribeDetector *)self _senderString:v5];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (BOOL)shouldIgnoreMessageWithHeaders:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 firstHeaderForKey:*MEMORY[0x1E699B110]];
    v7 = [(EMListUnsubscribeDetector *)self _listIDString:v6];

    v8 = [v5 firstSenderAddress];
    v9 = [(EMListUnsubscribeDetector *)self _senderString:v8];

    v10 = [(EMMutableDictionaryProtocol *)self->_persistentDictionary objectForKey:v7];
    if (v10 || ([(EMMutableDictionaryProtocol *)self->_persistentDictionary objectForKey:v9], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      if ([v10 isEqual:@"accepted"])
      {
        v11 = 1;
      }

      else
      {
        v11 = [v10 isEqual:@"ignored"];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (id)receivingAccountFromMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 account];
  v5 = [v4 conformsToProtocol:&unk_1F46417C8];

  if (v5)
  {
    v6 = [v3 account];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)unsubscribeTypeForHeader:(uint64_t *)a3 .cold.1(void *a1, void *a2, uint64_t *a3)
{
  if (a1)
  {
    v3 = a1[1];
    v4 = a1[2];
    v7 = v3 == 0;
    v5 = v3 != 0;
    v6 = 2;
    if (!v7)
    {
      v6 = 3;
    }

    v7 = v4 == 0;
    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    if (!v7)
    {
      v5 |= 6uLL;
    }

    if (!a1[3])
    {
      v5 = v8;
    }
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
}

- (void)commandForMessage:(uint8_t *)buf mailToOnly:(os_log_t)log dkimVerified:.cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "<%{public}@> Timeout validating headers for: %@", buf, 0x16u);
}

@end