@interface MFOutgoingMessageDelivery
+ (id)newWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other charsets:(id)charsets;
+ (id)newWithMessage:(id)message;
- (MFOutgoingMessageDelivery)init;
- (MFOutgoingMessageDelivery)initWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other charsets:(id)charsets;
- (MFOutgoingMessageDelivery)initWithHeaders:(id)headers mixedContent:(id)content textPartsAreHTML:(BOOL)l;
- (MFOutgoingMessageDelivery)initWithMessage:(id)message;
- (id)_currentDeliveryObject;
- (id)_deliverSynchronouslyWithCurrentSettings:(BOOL)settings;
- (id)_deliveryAccountForInitializers;
- (id)account;
- (id)deliverSynchronouslyWithCompletion:(id)completion;
- (id)message;
- (id)originalHeaders;
- (int64_t)deliveryStatus;
- (void)dealloc;
- (void)setAccount:(id)account;
- (void)setArchiveAccount:(id)account;
- (void)setCompositionSpecification:(id)specification;
@end

@implementation MFOutgoingMessageDelivery

- (MFOutgoingMessageDelivery)init
{
  v3.receiver = self;
  v3.super_class = MFOutgoingMessageDelivery;
  return [(MFOutgoingMessageDelivery *)&v3 init];
}

- (MFOutgoingMessageDelivery)initWithMessage:(id)message
{
  v4 = [(MFOutgoingMessageDelivery *)self init];
  if (v4)
  {
    v4->_message = message;
  }

  return v4;
}

- (MFOutgoingMessageDelivery)initWithHeaders:(id)headers mixedContent:(id)content textPartsAreHTML:(BOOL)l
{
  v8 = [(MFOutgoingMessageDelivery *)self init];
  if (v8)
  {
    v8->_headers = headers;
    v8->_mixedContent = content;
    v8->_textPartsAreHTML = l;
  }

  return v8;
}

- (MFOutgoingMessageDelivery)initWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other charsets:(id)charsets
{
  v12 = [(MFOutgoingMessageDelivery *)self init];
  if (v12)
  {
    v12->_headers = headers;
    v12->_htmlBody = l;
    v12->_plainTextAlternative = alternative;
    v12->_otherHTMLAndAttachments = other;
    v12->_charsets = charsets;
  }

  return v12;
}

+ (id)newWithMessage:(id)message
{
  v4 = [self alloc];

  return [v4 initWithMessage:message];
}

+ (id)newWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other charsets:(id)charsets
{
  v12 = [self alloc];

  return [v12 initWithHeaders:headers HTML:l plainTextAlternative:alternative other:other charsets:charsets];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFOutgoingMessageDelivery;
  [(MFOutgoingMessageDelivery *)&v3 dealloc];
}

- (id)_currentDeliveryObject
{
  result = self->_currentDeliveryObject;
  if (!result)
  {
    account = [(MFOutgoingMessageDelivery *)self account];
    message = self->_message;
    if (account)
    {
      if (message)
      {
        v6 = [-[MFOutgoingMessageDelivery account](self "account")];
      }

      else if (self->_mixedContent)
      {
        v6 = [-[MFOutgoingMessageDelivery account](self "account")];
      }

      else
      {
        if (!self->_htmlBody && !self->_plainTextAlternative)
        {
          goto LABEL_18;
        }

        v6 = [-[MFOutgoingMessageDelivery account](self "account")];
      }
    }

    else if (message)
    {
      v6 = [[MFMailDelivery alloc] initWithMessage:self->_message];
    }

    else if (self->_mixedContent)
    {
      v6 = [[MFMailDelivery alloc] initWithHeaders:self->_headers mixedContent:self->_mixedContent textPartsAreHTML:self->_textPartsAreHTML];
    }

    else
    {
      if (!self->_htmlBody && !self->_plainTextAlternative)
      {
        goto LABEL_18;
      }

      v6 = [[MFMailDelivery alloc] initWithHeaders:self->_headers HTML:self->_htmlBody plainTextAlternative:self->_plainTextAlternative other:self->_otherHTMLAndAttachments charsets:self->_charsets];
    }

    self->_currentDeliveryObject = v6;
LABEL_18:
    [(MFMailDelivery *)self->_currentDeliveryObject setDelegate:self->_delegate];
    [(MFMailDelivery *)self->_currentDeliveryObject setCompositionSpecification:[(MFOutgoingMessageDelivery *)self compositionSpecification]];
    result = self->_currentDeliveryObject;
    if (self->_archiveAccount)
    {
      [result setArchiveAccount:?];
      return self->_currentDeliveryObject;
    }
  }

  return result;
}

- (void)setCompositionSpecification:(id)specification
{
  compositionSpecification = self->_compositionSpecification;
  if (compositionSpecification != specification)
  {

    self->_compositionSpecification = specification;
    currentDeliveryObject = self->_currentDeliveryObject;

    [(MFMailDelivery *)currentDeliveryObject setCompositionSpecification:specification];
  }
}

- (id)originalHeaders
{
  if (self->_headers)
  {
    return self->_headers;
  }

  else
  {
    return [(MFMessage *)self->_message headers];
  }
}

- (id)_deliverSynchronouslyWithCurrentSettings:(BOOL)settings
{
  settingsCopy = settings;
  _currentDeliveryObject = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
  if (_currentDeliveryObject)
  {
    v6 = _currentDeliveryObject;
    if (settingsCopy)
    {
      [_currentDeliveryObject setCellDataOnly:1];
    }

    [v6 setArchiveAccount:self->_archiveAccount];
    [v6 setConversationFlags:{-[MFOutgoingMessageDelivery conversationFlags](self, "conversationFlags")}];
    [v6 setIsUserRequested:{-[MFOutgoingMessageDelivery isUserRequested](self, "isUserRequested")}];
    deliverSynchronously = [v6 deliverSynchronously];
    if ([deliverSynchronously status])
    {
      if (deliverSynchronously)
      {
        return deliverSynchronously;
      }
    }

    else
    {
      [objc_msgSend(MEMORY[0x277CEC590] "sharedAggregateDictionary")];
      if (deliverSynchronously)
      {
        return deliverSynchronously;
      }
    }

    v9 = 2;
  }

  else
  {
    v9 = 5;
  }

  v10 = [[MFDeliveryResult alloc] initWithStatus:v9];

  return v10;
}

- (id)deliverSynchronouslyWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  if (!-[MailAccount isPrimaryDeliveryAccountDisabled](self->_archiveAccount, "isPrimaryDeliveryAccountDisabled") && -[MFOutgoingMessageDelivery account](self, "account") || [-[MailAccount deliveryAccountAlternates](self->_archiveAccount "deliveryAccountAlternates")] || -[MailAccount canUseCarrierDeliveryFallback](self->_archiveAccount, "canUseCarrierDeliveryFallback"))
  {
    v5 = [[MFDeliveryResult alloc] initWithStatus:2];
    v7 = 0;
    if ([-[MFOutgoingMessageDelivery account](self "account")])
    {
      if (![(MailAccount *)self->_archiveAccount isPrimaryDeliveryAccountDisabled])
      {
        v5 = [(MFOutgoingMessageDelivery *)self _deliverSynchronouslyWithCurrentSettings:0];
        v6 = [objc_msgSend(-[MFOutgoingMessageDelivery _currentDeliveryObject](self "_currentDeliveryObject")];
        if (![(MFDeliveryResult *)v5 status]&& ((v6 & 1) != 0 || ![(MailAccount *)self->_archiveAccount archiveSentMessages]))
        {
          v7 = 1;
        }
      }
    }

    if (-[MFDeliveryResult status](v5, "status") == 5 || -[MFDeliveryResult status](v5, "status") == 2 || -[MFDeliveryResult status](v5, "status") == 1 && (v16 = [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")]) != 0 && (v17 = v16, @"MFMessageErrorDomain" == objc_msgSend(v16, "domain")) && objc_msgSend(v17, "code") == 1047)
    {
      deliveryAccountAlternates = [(MailAccount *)self->_archiveAccount deliveryAccountAlternates];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = [deliveryAccountAlternates countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
LABEL_13:
        v12 = 0;
        while (1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(deliveryAccountAlternates);
          }

          v13 = *(*(&v24 + 1) + 8 * v12);
          [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
          if ([(MailAccount *)self->_archiveAccount canUseDeliveryAccount:v13])
          {
            [(MFOutgoingMessageDelivery *)self setAccount:v13];
            v5 = [(MFOutgoingMessageDelivery *)self _deliverSynchronouslyWithCurrentSettings:0];
          }

          if ([(MFDeliveryResult *)v5 status]!= 2 && [(MFDeliveryResult *)v5 status]!= 1)
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [deliveryAccountAlternates countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v10)
            {
              goto LABEL_13;
            }

            break;
          }
        }
      }

      if ([(MFDeliveryResult *)v5 status]== 2 || [(MFDeliveryResult *)v5 status]== 1)
      {
        if ([(MailAccount *)self->_archiveAccount canUseCarrierDeliveryFallback])
        {
          v14 = +[(DeliveryAccount *)SMTPAccount];
          if (v14)
          {
            v15 = v14;
            [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
            [(MFOutgoingMessageDelivery *)self setAccount:v15];
            v5 = [(MFOutgoingMessageDelivery *)self _deliverSynchronouslyWithCurrentSettings:1];
          }
        }
      }
    }

    if (![(MFDeliveryResult *)v5 status])
    {
      delegate = self->_delegate;
      if (objc_opt_respondsToSelector())
      {
        [(MFDeliveryDelegate *)self->_delegate notifyUserDeliverySucceeded:self];
      }
    }

    if (completion)
    {
      (*(completion + 2))(completion, [(MFDeliveryResult *)v5 status]);
    }

    if ([(MFDeliveryResult *)v5 status])
    {
      v19 = 1;
    }

    else
    {
      v19 = v7;
    }

    if ((v19 & 1) == 0)
    {
      [-[MFOutgoingMessageDelivery _currentDeliveryObject](self "_currentDeliveryObject")];
    }

    v20 = *MEMORY[0x277D85DE8];
    return v5;
  }

  else
  {
    [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
    v22 = [[MFDeliveryResult alloc] initWithStatus:5];
    v23 = *MEMORY[0x277D85DE8];

    return v22;
  }
}

- (int64_t)deliveryStatus
{
  if (![(MFOutgoingMessageDelivery *)self _currentDeliveryObject])
  {
    return 5;
  }

  _currentDeliveryObject = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];

  return [_currentDeliveryObject deliveryStatus];
}

- (id)message
{
  message = [-[MFOutgoingMessageDelivery _currentDeliveryObject](self "_currentDeliveryObject")];
  if (!message)
  {
    if ([(MFOutgoingMessageDelivery *)self account])
    {
      return 0;
    }

    message = self->_message;
    if (message)
    {
      message = message;
LABEL_6:
      v5 = 0;
LABEL_13:

      return message;
    }

    if (self->_mixedContent)
    {
      v6 = [[MFMailDelivery alloc] initWithHeaders:self->_headers mixedContent:self->_mixedContent textPartsAreHTML:self->_textPartsAreHTML];
    }

    else
    {
      if (!self->_htmlBody && !self->_plainTextAlternative)
      {
        message = 0;
        goto LABEL_6;
      }

      v6 = [[MFMailDelivery alloc] initWithHeaders:self->_headers HTML:self->_htmlBody plainTextAlternative:self->_plainTextAlternative other:self->_otherHTMLAndAttachments charsets:self->_charsets];
    }

    v5 = v6;
    message = [(MFMailDelivery *)v6 message];
    goto LABEL_13;
  }

  return message;
}

- (id)_deliveryAccountForInitializers
{
  if (self->_message)
  {
    v2 = [MailAccount accountThatMessageIsFrom:?];
  }

  else
  {
    result = self->_headers;
    if (!result)
    {
      return result;
    }

    v2 = +[MailAccount accountContainingEmailAddress:](MailAccount, "accountContainingEmailAddress:", [result firstSenderAddress]);
  }

  return [v2 deliveryAccount];
}

- (id)account
{
  result = self->_deliveryAccount;
  if (!result)
  {
    result = [(MFOutgoingMessageDelivery *)self _deliveryAccountForInitializers];
    self->_deliveryAccount = result;
  }

  return result;
}

- (void)setArchiveAccount:(id)account
{
  archiveAccount = self->_archiveAccount;
  if (archiveAccount != account)
  {

    archiveAccount = account;
    self->_archiveAccount = archiveAccount;
  }

  currentDeliveryObject = self->_currentDeliveryObject;

  [(MFMailDelivery *)currentDeliveryObject setArchiveAccount:archiveAccount];
}

- (void)setAccount:(id)account
{
  deliveryAccount = self->_deliveryAccount;
  if (deliveryAccount != account)
  {

    accountCopy = account;
    self->_deliveryAccount = accountCopy;
    [(DeliveryAccount *)accountCopy deliveryClass];
    if (self->_currentDeliveryObject)
    {
      isKindOfClass = objc_opt_isKindOfClass();
      currentDeliveryObject = self->_currentDeliveryObject;
      if (isKindOfClass)
      {
        v9 = self->_deliveryAccount;

        [(MFMailDelivery *)currentDeliveryObject setAccount:v9];
      }

      else
      {

        self->_currentDeliveryObject = 0;
      }
    }
  }
}

@end