@interface MFGmailSMTPAccount
- (id)_urlFromResponse:(id)response;
- (id)errorForResponse:(id)response;
- (void)dealloc;
@end

@implementation MFGmailSMTPAccount

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFGmailSMTPAccount;
  [(SMTPAccount *)&v3 dealloc];
}

- (id)_urlFromResponse:(id)response
{
  responseCopy = response;
  v25 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:{objc_msgSend(response, "continuationResponses")}];
  [v4 addObject:responseCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v5)
  {
    v15 = 0;
    v7 = 0;
    goto LABEL_22;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v21;
  v18 = responseCopy;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v20 + 1) + 8 * i);
      if ([responseCopy failureReason] != 7)
      {
        continue;
      }

      statusString = [v10 statusString];
      v12 = [statusString rangeOfString:@">"];
      v13 = v12;
      if (v7)
      {
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v7 appendString:statusString];
        }

        else
        {
          [v7 appendString:{objc_msgSend(statusString, "substringToIndex:", v12)}];
          v15 = [(GmailAccount *)self->_account _URLFromUncleanString:v7];
          if (v15)
          {
            goto LABEL_22;
          }
        }

        continue;
      }

      v14 = [statusString rangeOfString:@"<"];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = 0;
LABEL_16:
        responseCopy = v18;
        continue;
      }

      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{objc_msgSend(statusString, "substringFromIndex:", v14 + 1)}];
        goto LABEL_16;
      }

      v15 = -[GmailAccount _URLFromUncleanString:](self->_account, "_URLFromUncleanString:", [statusString substringWithRange:{v14 + 1, v13 - (v14 + 1)}]);
      responseCopy = v18;
      if (v15)
      {
        goto LABEL_22;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v6);
  v15 = 0;
LABEL_22:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)errorForResponse:(id)response
{
  if ([response failureReason] != 7 || (result = -[GmailAccount _webLoginErrorWithURL:](self->_account, "_webLoginErrorWithURL:", -[MFGmailSMTPAccount _urlFromResponse:](self, "_urlFromResponse:", response))) == 0)
  {
    v6.receiver = self;
    v6.super_class = MFGmailSMTPAccount;
    return [(SMTPAccount *)&v6 errorForResponse:response];
  }

  return result;
}

@end