@interface EMListUnsubscribeDetector
+ (id)receivingAccountFromMessage:(id)message;
+ (id)validatedUnsubscribeTypeForHeader:(id)header dkimVerified:(unint64_t)verified;
+ (int64_t)unsubscribeTypeForHeader:(id)header;
+ (uint64_t)_validateHeaders:(uint64_t)headers dkimVerified:;
- (BOOL)shouldIgnoreMessageWithHeaders:(id)headers;
- (EMListUnsubscribeDetector)init;
- (EMListUnsubscribeDetector)initWithMutableDictionary:(id)dictionary;
- (id)_listIDString:(id)string;
- (id)_normalizedAddress:(id)address;
- (id)_persistentKeyForHeaders:(id)headers;
- (id)_senderString:(id)string;
- (id)commandForMessage:(id)message dkimVerified:(unint64_t)verified;
- (id)commandForMessage:(id)message mailToOnly:(BOOL)only dkimVerified:(unint64_t)verified;
- (void)acceptCommand:(id)command;
- (void)ignoreCommand:(id)command;
@end

@implementation EMListUnsubscribeDetector

+ (uint64_t)_validateHeaders:(uint64_t)headers dkimVerified:
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = a2;
  objc_opt_self();
  encodedHeaders = [v19 encodedHeaders];
  v5 = EMRecodeDataToNetwork(encodedHeaders);

  if (v5)
  {
    v24 = 0;
    v17 = objc_alloc_init(MEMORY[0x1E699B230]);
    v6 = [v17 verificationContextForMessageData:v5 error:&v24];
    v18 = v24;
    v7 = 2;
    if (headers != 1 && v6 && !v18)
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

          signedHeaderFields = [*(*(&v20 + 1) + 8 * v13) signedHeaderFields];
          if ([signedHeaderFields containsObject:v11])
          {
            if ([signedHeaderFields containsObject:v12])
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

        if (headers)
        {
          if (headers != 2)
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

+ (int64_t)unsubscribeTypeForHeader:(id)header
{
  headerCopy = header;
  [(EMListUnsubscribeDetector *)[[_EMUnsubscribeInfo alloc] initWithHeaders:headerCopy] unsubscribeTypeForHeader:headerCopy, &v5];
  return v5;
}

+ (id)validatedUnsubscribeTypeForHeader:(id)header dkimVerified:(unint64_t)verified
{
  headerCopy = header;
  v6 = [[_EMUnsubscribeInfo alloc] initWithHeaders:headerCopy];
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

  v14 = [EMListUnsubscribeDetector _validateHeaders:headerCopy dkimVerified:verified];
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

- (EMListUnsubscribeDetector)initWithMutableDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMListUnsubscribeDetector.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
  }

  v11.receiver = self;
  v11.super_class = EMListUnsubscribeDetector;
  v7 = [(EMListUnsubscribeDetector *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_persistentDictionary, dictionary);
  }

  return v8;
}

- (EMListUnsubscribeDetector)init
{
  v3 = [EMUbiquitouslyPersistedDictionary sharedDictionaryWithIdentifier:@"com.apple.mail.listUnsubscribeInfo"];
  v4 = [(EMListUnsubscribeDetector *)self initWithMutableDictionary:v3];

  return v4;
}

- (id)commandForMessage:(id)message mailToOnly:(BOOL)only dkimVerified:(unint64_t)verified
{
  v55 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  headers = [messageCopy headers];
  if ([(EMListUnsubscribeDetector *)self shouldIgnoreMessageWithHeaders:headers])
  {
    v10 = 0;
    goto LABEL_50;
  }

  v11 = [objc_opt_class() receivingAccountFromMessage:messageCopy];
  deliveryAccount = [v11 deliveryAccount];

  if (deliveryAccount)
  {
    if (only)
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
      v52 = headers;
      verifiedCopy = verified;
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
          [(EMListUnsubscribeDetector *)v20 commandForMessage:messageCopy mailToOnly:buf dkimVerified:v18];
        }

        v13 = 1;
      }
    }

    v50 = [headers firstHeaderForKey:*MEMORY[0x1E699B110]];
    v21 = [[_EMUnsubscribeInfo alloc] initWithHeaders:headers];
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

      firstSenderAddress2 = [EMMailToURLComponents componentsWithURL:v38];
      toRecipients = [firstSenderAddress2 toRecipients];
      v40 = [toRecipients count] == 0;

      if (v40)
      {
        v10 = 0;
        goto LABEL_47;
      }

      toRecipients2 = [firstSenderAddress2 toRecipients];
      v29 = [toRecipients2 objectAtIndexedSubscript:0];
      firstSenderAddress = [headers firstSenderAddress];
      senderForUnsubscribeMessage = [headers senderForUnsubscribeMessage];
      subject = [firstSenderAddress2 subject];
      body = [firstSenderAddress2 body];
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

      v10 = [EMListUnsubscribeCommand mailtoUnsubscribeCommandWithListID:v50 address:v29 sender:firstSenderAddress senderForUnsubscribeMessage:senderForUnsubscribeMessage subject:subject body:body account:v11 headerUnsubscribeTypes:v45];
    }

    else
    {
      firstSenderAddress2 = [headers firstSenderAddress];
      toRecipients2 = [headers senderForUnsubscribeMessage];
      if (v22)
      {
        v29 = v22->_postURL;
        firstSenderAddress = v22->_postContent;
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
        firstSenderAddress = 0;
        v29 = 0;
        v37 = 0;
      }

      v10 = [EMListUnsubscribeCommand oneClickUnsubscribeCommandWithListID:v50 sender:firstSenderAddress2 senderForUnsubscribeMessage:toRecipients2 URL:v29 postContent:firstSenderAddress headerUnsubscribeTypes:v37];
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

- (id)commandForMessage:(id)message dkimVerified:(unint64_t)verified
{
  v4 = [(EMListUnsubscribeDetector *)self commandForMessage:message mailToOnly:0 dkimVerified:verified];

  return v4;
}

- (void)acceptCommand:(id)command
{
  commandCopy = command;
  v8 = commandCopy;
  if (!commandCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMListUnsubscribeDetector.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"command"}];

    commandCopy = 0;
  }

  v6 = [(EMListUnsubscribeDetector *)self _persistentKeyForHeaders:commandCopy];
  if (v6)
  {
    [(EMMutableDictionaryProtocol *)self->_persistentDictionary setObject:@"accepted" forKey:v6];
  }
}

- (void)ignoreCommand:(id)command
{
  commandCopy = command;
  v8 = commandCopy;
  if (!commandCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMListUnsubscribeDetector.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"command"}];

    commandCopy = 0;
  }

  v6 = [(EMListUnsubscribeDetector *)self _persistentKeyForHeaders:commandCopy];
  if (v6)
  {
    [(EMMutableDictionaryProtocol *)self->_persistentDictionary setObject:@"ignored" forKey:v6];
  }
}

- (id)_normalizedAddress:(id)address
{
  addressCopy = address;
  if (addressCopy)
  {
    v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^[^<>]*<([^>]+)>\\s*$|^(.+)$" options:8 error:0];
    v5 = [v4 stringByReplacingMatchesInString:addressCopy options:0 range:0 withTemplate:{objc_msgSend(addressCopy, "length"), @"$1$2"}];
    lowercaseString = [v5 lowercaseString];

    v7 = [MEMORY[0x1E699AFD0] idnaEncodedAddressForAddress:lowercaseString];

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

- (id)_listIDString:(id)string
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(EMListUnsubscribeDetector *)self _normalizedAddress:string];
  v5 = [v3 stringWithFormat:@"L:%@", v4];

  return v5;
}

- (id)_senderString:(id)string
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(EMListUnsubscribeDetector *)self _normalizedAddress:string];
  v5 = [v3 stringWithFormat:@"S:%@", v4];

  return v5;
}

- (id)_persistentKeyForHeaders:(id)headers
{
  headersCopy = headers;
  sender = [headersCopy sender];
  listID = [headersCopy listID];
  if ([listID length])
  {
    v7 = [(EMListUnsubscribeDetector *)self _listIDString:listID];
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  if ([sender length])
  {
    v7 = [(EMListUnsubscribeDetector *)self _senderString:sender];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (BOOL)shouldIgnoreMessageWithHeaders:(id)headers
{
  headersCopy = headers;
  v5 = headersCopy;
  if (headersCopy)
  {
    v6 = [headersCopy firstHeaderForKey:*MEMORY[0x1E699B110]];
    v7 = [(EMListUnsubscribeDetector *)self _listIDString:v6];

    firstSenderAddress = [v5 firstSenderAddress];
    v9 = [(EMListUnsubscribeDetector *)self _senderString:firstSenderAddress];

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

+ (id)receivingAccountFromMessage:(id)message
{
  messageCopy = message;
  account = [messageCopy account];
  v5 = [account conformsToProtocol:&unk_1F46417C8];

  if (v5)
  {
    account2 = [messageCopy account];
  }

  else
  {
    account2 = 0;
  }

  return account2;
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