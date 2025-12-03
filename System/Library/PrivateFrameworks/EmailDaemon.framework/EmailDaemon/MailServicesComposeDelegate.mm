@interface MailServicesComposeDelegate
- (id)accountProxyGenerator;
- (id)bccRecipients;
- (id)composeWebView;
- (id)sendingAccountProxy;
- (id)shouldCreateRichTextRepresentation;
- (void)setSendingEmailAddress:(id)address;
@end

@implementation MailServicesComposeDelegate

- (id)composeWebView
{
  bodyField = self->_bodyField;
  if (!bodyField)
  {
    v4 = objc_alloc_init(MFComposeWebView);
    v5 = self->_bodyField;
    self->_bodyField = v4;

    bodyField = self->_bodyField;
  }

  return bodyField;
}

- (id)bccRecipients
{
  v3 = [(MailServicesComposeDelegate *)self bcc];
  v4 = +[NSUserDefaults em_userDefaults];
  v5 = [v4 BOOLForKey:EMUserDefaultAlwaysBCCSelf];

  if (v5)
  {
    sendingEmailAddress = [(MailServicesComposeDelegate *)self sendingEmailAddress];
    v7 = [MailAccount accountContainingEmailAddress:sendingEmailAddress includingInactive:1];

    if (v7 || (+[MailAccount defaultMailAccountForDelivery], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      emailAddressStrings = [v7 emailAddressStrings];
      firstObject = [emailAddressStrings firstObject];

      v10 = [ECEmailAddressComponents componentsWithString:firstObject];
      fullUserName = [v7 fullUserName];
      [v10 setDisplayName:fullUserName];

      v12 = objc_alloc_init(ECEmailAddressFormatter);
      [v12 setShouldIncludeDisplayName:1];
      emailAddressValue = [v10 emailAddressValue];
      v14 = emailAddressValue;
      if (emailAddressValue)
      {
        v15 = emailAddressValue;
      }

      else
      {
        v15 = firstObject;
      }

      v16 = [v12 stringFromEmailAddressConvertible:v15];
    }

    else
    {
      v16 = 0;
    }

    if ([v16 length] && (objc_msgSend(v3, "containsObject:", v16) & 1) == 0)
    {
      v17 = [NSMutableArray arrayWithArray:v3];
      [v17 addObject:v16];
    }

    else
    {
      v17 = v3;
    }

    v3 = v17;
  }

  return v3;
}

- (void)setSendingEmailAddress:(id)address
{
  addressCopy = address;
  if (self->_sendingEmailAddress != addressCopy)
  {
    v7 = addressCopy;
    v5 = [(NSString *)addressCopy copy];
    sendingEmailAddress = self->_sendingEmailAddress;
    self->_sendingEmailAddress = v5;

    addressCopy = v7;
  }
}

- (id)shouldCreateRichTextRepresentation
{
  composeWebView = [(MailServicesComposeDelegate *)self composeWebView];
  containsRichText = [composeWebView containsRichText];

  return containsRichText;
}

- (id)accountProxyGenerator
{
  accountProxyGenerator = self->_accountProxyGenerator;
  if (!accountProxyGenerator)
  {
    v4 = [[MFMailAccountProxyGenerator alloc] initWithAllowsRestrictedAccounts:0];
    v5 = self->_accountProxyGenerator;
    self->_accountProxyGenerator = v4;

    accountProxyGenerator = self->_accountProxyGenerator;
  }

  return accountProxyGenerator;
}

- (id)sendingAccountProxy
{
  accountProxyGenerator = [(MailServicesComposeDelegate *)self accountProxyGenerator];
  v4 = [accountProxyGenerator accountProxyContainingEmailAddress:self->_sendingEmailAddress includingInactive:0 originatingBundleID:0 sourceAccountManagement:0];

  return v4;
}

@end