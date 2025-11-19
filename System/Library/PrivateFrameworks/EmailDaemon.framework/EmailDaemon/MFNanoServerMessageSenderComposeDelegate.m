@interface MFNanoServerMessageSenderComposeDelegate
- (MFNanoServerMessageSenderComposeDelegate)init;
- (id)accountProxyGenerator;
- (id)attachments;
- (id)bccRecipients;
- (id)composeWebView;
- (id)sendingAccountProxy;
- (void)addSignature:(BOOL)a3;
- (void)didInsertAttachment:(id)a3;
- (void)setSendingEmailAddress:(id)a3;
@end

@implementation MFNanoServerMessageSenderComposeDelegate

- (MFNanoServerMessageSenderComposeDelegate)init
{
  v5.receiver = self;
  v5.super_class = MFNanoServerMessageSenderComposeDelegate;
  v2 = [(MFNanoServerMessageSenderComposeDelegate *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    [(MFNanoServerMessageSenderComposeDelegate *)v2 setAttachmentsAdded:v3];
  }

  return v2;
}

- (id)composeWebView
{
  bodyField = self->_bodyField;
  if (!bodyField)
  {
    v4 = objc_alloc_init(MFComposeWebView);
    v5 = self->_bodyField;
    self->_bodyField = v4;

    v6 = self->_bodyField;
    v7 = [(_MFMailCompositionContext *)self->_compositionContext contextID];
    [(MFComposeWebView *)v6 setCompositionContextID:v7];

    [(MFComposeWebView *)self->_bodyField setMailComposeViewDelegate:self];
    bodyField = self->_bodyField;
  }

  return bodyField;
}

- (id)bccRecipients
{
  v3 = [(MFNanoServerMessageSenderComposeDelegate *)self bcc];
  v4 = +[NSUserDefaults em_userDefaults];
  v5 = [v4 BOOLForKey:EMUserDefaultAlwaysBCCSelf];

  if (v5)
  {
    v6 = [(MFNanoServerMessageSenderComposeDelegate *)self sendingEmailAddress];
    v7 = [MailAccount accountContainingEmailAddress:v6 includingInactive:1];

    if (v7 || (+[MailAccount defaultMailAccountForDelivery], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v7 emailAddressStrings];
      v9 = [v8 count];

      if (v9)
      {
        v10 = [v7 emailAddressStrings];
        v11 = [v10 objectAtIndexedSubscript:0];
        v12 = [v11 emailAddressValue];
        v13 = [ECEmailAddressComponents componentsWithEmailAddress:v12];

        v14 = [v7 fullUserName];
        [v13 setDisplayName:v14];

        v9 = [v13 stringValue];
      }
    }

    else
    {
      v9 = 0;
    }

    if ([v9 length] && (objc_msgSend(v3, "containsObject:", v9) & 1) == 0)
    {
      v15 = [NSMutableArray arrayWithArray:v3];
      [v15 addObject:v9];
    }

    else
    {
      v15 = v3;
    }

    v3 = v15;
  }

  return v3;
}

- (void)setSendingEmailAddress:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  sendingEmailAddress = self->_sendingEmailAddress;
  self->_sendingEmailAddress = v4;
}

- (id)attachments
{
  v3 = [(MFNanoServerMessageSenderComposeDelegate *)self compositionContext];
  v4 = [v3 contextID];

  if ([v4 length])
  {
    v5 = [(MFNanoServerMessageSenderComposeDelegate *)self compositionContext];
    v6 = [v5 attachmentManager];
    v7 = [v6 attachmentsForContext:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
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
  v3 = [(MFNanoServerMessageSenderComposeDelegate *)self accountProxyGenerator];
  v4 = [v3 accountProxyContainingEmailAddress:self->_sendingEmailAddress includingInactive:0 originatingBundleID:0 sourceAccountManagement:0];

  return v4;
}

- (void)addSignature:(BOOL)a3
{
  v3 = a3;
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  v8 = [v5 signature];

  if ([v8 length])
  {
    bodyField = self->_bodyField;
    if (v3)
    {
      v7 = [NSString stringWithFormat:@"<br/><br/>%@<br/><br/>", v8];
      [(MFComposeWebView *)bodyField prependMarkupString:v7 quote:0];
    }

    else
    {
      v7 = [NSString stringWithFormat:@"<br/><br/>%@", v8];
      [(MFComposeWebView *)bodyField appendMarkupString:v7 quote:0];
    }
  }
}

- (void)didInsertAttachment:(id)a3
{
  v10 = a3;
  v4 = [(MFNanoServerMessageSenderComposeDelegate *)self attachmentsAdded];
  v5 = [v10 contentID];
  [v4 addObject:v5];

  v6 = [(MFNanoServerMessageSenderComposeDelegate *)self attachmentsAdded];
  v7 = [v6 count];
  v8 = [(MFNanoServerMessageSenderComposeDelegate *)self attachments];
  if (v7 == [v8 count])
  {
    v9 = [(MFNanoServerMessageSenderComposeDelegate *)self attachmentConfigCompletion];

    if (!v9)
    {
      goto LABEL_6;
    }

    v6 = [(MFNanoServerMessageSenderComposeDelegate *)self attachmentConfigCompletion];
    v6[2]();
  }

  else
  {
  }

LABEL_6:
}

@end