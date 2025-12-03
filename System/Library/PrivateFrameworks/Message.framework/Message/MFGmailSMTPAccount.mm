@interface MFGmailSMTPAccount
- (id)_urlFromResponse:(id)response;
- (id)errorForResponse:(id)response;
@end

@implementation MFGmailSMTPAccount

- (id)_urlFromResponse:(id)response
{
  v34 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  continuationResponses = [responseCopy continuationResponses];
  v6 = [v4 initWithArray:continuationResponses];

  [v6 addObject:responseCopy];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v27 = v6;
    v9 = 0;
    v10 = *v30;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if ([responseCopy failureReason] == 7)
        {
          statusString = [v12 statusString];
          v14 = [statusString rangeOfString:@">"];
          v15 = v14;
          if (v9)
          {
            if (v14 == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v9 appendString:statusString];
LABEL_15:

              continue;
            }

            v18 = [statusString substringToIndex:v14];
            [v9 appendString:v18];

            v19 = [(GmailAccount *)self->_account _URLFromUncleanString:v9];
          }

          else
          {
            v16 = [statusString rangeOfString:@"<"];
            v17 = v16;
            if (v16 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v9 = 0;
              goto LABEL_15;
            }

            if (v15 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v20 = objc_alloc(MEMORY[0x1E696AD60]);
              v21 = [statusString substringFromIndex:v17 + 1];
              v9 = [v20 initWithString:v21];

              goto LABEL_15;
            }

            v22 = v15 - (v16 + 1);
            account = self->_account;
            v24 = [statusString substringWithRange:{v16 + 1, v22}];
            v19 = [(GmailAccount *)account _URLFromUncleanString:v24];
          }

          if (v19)
          {
            goto LABEL_22;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v8)
      {
        v19 = 0;
        goto LABEL_22;
      }
    }
  }

  v19 = 0;
  v9 = 0;
LABEL_22:

  v25 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)errorForResponse:(id)response
{
  responseCopy = response;
  if ([responseCopy failureReason] != 7 || (account = self->_account, -[MFGmailSMTPAccount _urlFromResponse:](self, "_urlFromResponse:", responseCopy), v6 = objc_claimAutoreleasedReturnValue(), -[GmailAccount _webLoginErrorWithURL:](account, "_webLoginErrorWithURL:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v9.receiver = self;
    v9.super_class = MFGmailSMTPAccount;
    v7 = [(SMTPAccount *)&v9 errorForResponse:responseCopy];
  }

  return v7;
}

@end