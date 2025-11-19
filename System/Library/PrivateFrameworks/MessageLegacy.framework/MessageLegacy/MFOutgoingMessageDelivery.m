@interface MFOutgoingMessageDelivery
+ (id)newWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6 charsets:(id)a7;
+ (id)newWithMessage:(id)a3;
- (MFOutgoingMessageDelivery)init;
- (MFOutgoingMessageDelivery)initWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6 charsets:(id)a7;
- (MFOutgoingMessageDelivery)initWithHeaders:(id)a3 mixedContent:(id)a4 textPartsAreHTML:(BOOL)a5;
- (MFOutgoingMessageDelivery)initWithMessage:(id)a3;
- (id)_currentDeliveryObject;
- (id)_deliverSynchronouslyWithCurrentSettings:(BOOL)a3;
- (id)_deliveryAccountForInitializers;
- (id)account;
- (id)deliverSynchronouslyWithCompletion:(id)a3;
- (id)message;
- (id)originalHeaders;
- (int64_t)deliveryStatus;
- (void)dealloc;
- (void)setAccount:(id)a3;
- (void)setArchiveAccount:(id)a3;
- (void)setCompositionSpecification:(id)a3;
@end

@implementation MFOutgoingMessageDelivery

- (MFOutgoingMessageDelivery)init
{
  v3.receiver = self;
  v3.super_class = MFOutgoingMessageDelivery;
  return [(MFOutgoingMessageDelivery *)&v3 init];
}

- (MFOutgoingMessageDelivery)initWithMessage:(id)a3
{
  v4 = [(MFOutgoingMessageDelivery *)self init];
  if (v4)
  {
    v4->_message = a3;
  }

  return v4;
}

- (MFOutgoingMessageDelivery)initWithHeaders:(id)a3 mixedContent:(id)a4 textPartsAreHTML:(BOOL)a5
{
  v8 = [(MFOutgoingMessageDelivery *)self init];
  if (v8)
  {
    v8->_headers = a3;
    v8->_mixedContent = a4;
    v8->_textPartsAreHTML = a5;
  }

  return v8;
}

- (MFOutgoingMessageDelivery)initWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6 charsets:(id)a7
{
  v12 = [(MFOutgoingMessageDelivery *)self init];
  if (v12)
  {
    v12->_headers = a3;
    v12->_htmlBody = a4;
    v12->_plainTextAlternative = a5;
    v12->_otherHTMLAndAttachments = a6;
    v12->_charsets = a7;
  }

  return v12;
}

+ (id)newWithMessage:(id)a3
{
  v4 = [a1 alloc];

  return [v4 initWithMessage:a3];
}

+ (id)newWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6 charsets:(id)a7
{
  v12 = [a1 alloc];

  return [v12 initWithHeaders:a3 HTML:a4 plainTextAlternative:a5 other:a6 charsets:a7];
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
    v4 = [(MFOutgoingMessageDelivery *)self account];
    message = self->_message;
    if (v4)
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

- (void)setCompositionSpecification:(id)a3
{
  compositionSpecification = self->_compositionSpecification;
  if (compositionSpecification != a3)
  {

    self->_compositionSpecification = a3;
    currentDeliveryObject = self->_currentDeliveryObject;

    [(MFMailDelivery *)currentDeliveryObject setCompositionSpecification:a3];
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

- (id)_deliverSynchronouslyWithCurrentSettings:(BOOL)a3
{
  v3 = a3;
  v5 = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
  if (v5)
  {
    v6 = v5;
    if (v3)
    {
      [v5 setCellDataOnly:1];
    }

    [v6 setArchiveAccount:self->_archiveAccount];
    [v6 setConversationFlags:{-[MFOutgoingMessageDelivery conversationFlags](self, "conversationFlags")}];
    [v6 setIsUserRequested:{-[MFOutgoingMessageDelivery isUserRequested](self, "isUserRequested")}];
    v7 = [v6 deliverSynchronously];
    if ([v7 status])
    {
      if (v7)
      {
        return v7;
      }
    }

    else
    {
      [objc_msgSend(MEMORY[0x277CEC590] "sharedAggregateDictionary")];
      if (v7)
      {
        return v7;
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

- (id)deliverSynchronouslyWithCompletion:(id)a3
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
      v8 = [(MailAccount *)self->_archiveAccount deliveryAccountAlternates];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v8);
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
            v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
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

    if (a3)
    {
      (*(a3 + 2))(a3, [(MFDeliveryResult *)v5 status]);
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

  v3 = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];

  return [v3 deliveryStatus];
}

- (id)message
{
  v3 = [-[MFOutgoingMessageDelivery _currentDeliveryObject](self "_currentDeliveryObject")];
  if (!v3)
  {
    if ([(MFOutgoingMessageDelivery *)self account])
    {
      return 0;
    }

    message = self->_message;
    if (message)
    {
      v3 = message;
LABEL_6:
      v5 = 0;
LABEL_13:

      return v3;
    }

    if (self->_mixedContent)
    {
      v6 = [[MFMailDelivery alloc] initWithHeaders:self->_headers mixedContent:self->_mixedContent textPartsAreHTML:self->_textPartsAreHTML];
    }

    else
    {
      if (!self->_htmlBody && !self->_plainTextAlternative)
      {
        v3 = 0;
        goto LABEL_6;
      }

      v6 = [[MFMailDelivery alloc] initWithHeaders:self->_headers HTML:self->_htmlBody plainTextAlternative:self->_plainTextAlternative other:self->_otherHTMLAndAttachments charsets:self->_charsets];
    }

    v5 = v6;
    v3 = [(MFMailDelivery *)v6 message];
    goto LABEL_13;
  }

  return v3;
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

- (void)setArchiveAccount:(id)a3
{
  archiveAccount = self->_archiveAccount;
  if (archiveAccount != a3)
  {

    archiveAccount = a3;
    self->_archiveAccount = archiveAccount;
  }

  currentDeliveryObject = self->_currentDeliveryObject;

  [(MFMailDelivery *)currentDeliveryObject setArchiveAccount:archiveAccount];
}

- (void)setAccount:(id)a3
{
  deliveryAccount = self->_deliveryAccount;
  if (deliveryAccount != a3)
  {

    v6 = a3;
    self->_deliveryAccount = v6;
    [(DeliveryAccount *)v6 deliveryClass];
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