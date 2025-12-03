@interface MFNanoServerMessageSenderComposeDelegate
- (MFNanoServerMessageSenderComposeDelegate)init;
- (id)accountProxyGenerator;
- (id)attachments;
- (id)bccRecipients;
- (id)composeWebView;
- (id)sendingAccountProxy;
- (void)addSignature:(BOOL)signature;
- (void)didInsertAttachment:(id)attachment;
- (void)setSendingEmailAddress:(id)address;
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
    contextID = [(_MFMailCompositionContext *)self->_compositionContext contextID];
    [(MFComposeWebView *)v6 setCompositionContextID:contextID];

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
    sendingEmailAddress = [(MFNanoServerMessageSenderComposeDelegate *)self sendingEmailAddress];
    v7 = [MailAccount accountContainingEmailAddress:sendingEmailAddress includingInactive:1];

    if (v7 || (+[MailAccount defaultMailAccountForDelivery], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      emailAddressStrings = [v7 emailAddressStrings];
      stringValue = [emailAddressStrings count];

      if (stringValue)
      {
        emailAddressStrings2 = [v7 emailAddressStrings];
        v11 = [emailAddressStrings2 objectAtIndexedSubscript:0];
        emailAddressValue = [v11 emailAddressValue];
        v13 = [ECEmailAddressComponents componentsWithEmailAddress:emailAddressValue];

        fullUserName = [v7 fullUserName];
        [v13 setDisplayName:fullUserName];

        stringValue = [v13 stringValue];
      }
    }

    else
    {
      stringValue = 0;
    }

    if ([stringValue length] && (objc_msgSend(v3, "containsObject:", stringValue) & 1) == 0)
    {
      v15 = [NSMutableArray arrayWithArray:v3];
      [v15 addObject:stringValue];
    }

    else
    {
      v15 = v3;
    }

    v3 = v15;
  }

  return v3;
}

- (void)setSendingEmailAddress:(id)address
{
  addressCopy = address;
  v4 = [addressCopy copy];
  sendingEmailAddress = self->_sendingEmailAddress;
  self->_sendingEmailAddress = v4;
}

- (id)attachments
{
  compositionContext = [(MFNanoServerMessageSenderComposeDelegate *)self compositionContext];
  contextID = [compositionContext contextID];

  if ([contextID length])
  {
    compositionContext2 = [(MFNanoServerMessageSenderComposeDelegate *)self compositionContext];
    attachmentManager = [compositionContext2 attachmentManager];
    v7 = [attachmentManager attachmentsForContext:contextID];
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
  accountProxyGenerator = [(MFNanoServerMessageSenderComposeDelegate *)self accountProxyGenerator];
  v4 = [accountProxyGenerator accountProxyContainingEmailAddress:self->_sendingEmailAddress includingInactive:0 originatingBundleID:0 sourceAccountManagement:0];

  return v4;
}

- (void)addSignature:(BOOL)signature
{
  signatureCopy = signature;
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  signature = [v5 signature];

  if ([signature length])
  {
    bodyField = self->_bodyField;
    if (signatureCopy)
    {
      v7 = [NSString stringWithFormat:@"<br/><br/>%@<br/><br/>", signature];
      [(MFComposeWebView *)bodyField prependMarkupString:v7 quote:0];
    }

    else
    {
      v7 = [NSString stringWithFormat:@"<br/><br/>%@", signature];
      [(MFComposeWebView *)bodyField appendMarkupString:v7 quote:0];
    }
  }
}

- (void)didInsertAttachment:(id)attachment
{
  attachmentCopy = attachment;
  attachmentsAdded = [(MFNanoServerMessageSenderComposeDelegate *)self attachmentsAdded];
  contentID = [attachmentCopy contentID];
  [attachmentsAdded addObject:contentID];

  attachmentsAdded2 = [(MFNanoServerMessageSenderComposeDelegate *)self attachmentsAdded];
  v7 = [attachmentsAdded2 count];
  attachments = [(MFNanoServerMessageSenderComposeDelegate *)self attachments];
  if (v7 == [attachments count])
  {
    attachmentConfigCompletion = [(MFNanoServerMessageSenderComposeDelegate *)self attachmentConfigCompletion];

    if (!attachmentConfigCompletion)
    {
      goto LABEL_6;
    }

    attachmentsAdded2 = [(MFNanoServerMessageSenderComposeDelegate *)self attachmentConfigCompletion];
    attachmentsAdded2[2]();
  }

  else
  {
  }

LABEL_6:
}

@end