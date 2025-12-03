@interface MFOutgoingMessageDelivery
+ (id)log;
+ (id)newWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other;
+ (id)newWithMessage:(id)message;
- (MFDeliveryDelegate)delegate;
- (MFOutgoingMessageDelivery)init;
- (MFOutgoingMessageDelivery)initWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other;
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
- (void)setAccount:(id)account;
- (void)setArchiveAccount:(id)account;
- (void)setCompositionSpecification:(id)specification;
@end

@implementation MFOutgoingMessageDelivery

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__MFOutgoingMessageDelivery_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_26 != -1)
  {
    dispatch_once(&log_onceToken_26, block);
  }

  v2 = log_log_26;

  return v2;
}

void __32__MFOutgoingMessageDelivery_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_26;
  log_log_26 = v1;
}

- (MFOutgoingMessageDelivery)init
{
  v3.receiver = self;
  v3.super_class = MFOutgoingMessageDelivery;
  return [(MFOutgoingMessageDelivery *)&v3 init];
}

- (MFOutgoingMessageDelivery)initWithMessage:(id)message
{
  messageCopy = message;
  v6 = [(MFOutgoingMessageDelivery *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

- (MFOutgoingMessageDelivery)initWithHeaders:(id)headers mixedContent:(id)content textPartsAreHTML:(BOOL)l
{
  headersCopy = headers;
  contentCopy = content;
  v11 = [(MFOutgoingMessageDelivery *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_headers, headers);
    objc_storeStrong(&v12->_mixedContent, content);
    v12->_textPartsAreHTML = l;
  }

  return v12;
}

- (MFOutgoingMessageDelivery)initWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other
{
  headersCopy = headers;
  lCopy = l;
  alternativeCopy = alternative;
  otherCopy = other;
  v15 = [(MFOutgoingMessageDelivery *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_headers, headers);
    objc_storeStrong(&v16->_htmlBody, l);
    objc_storeStrong(&v16->_plainTextAlternative, alternative);
    objc_storeStrong(&v16->_otherHTMLAndAttachments, other);
  }

  return v16;
}

+ (id)newWithMessage:(id)message
{
  messageCopy = message;
  v5 = [[self alloc] initWithMessage:messageCopy];

  return v5;
}

+ (id)newWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other
{
  headersCopy = headers;
  lCopy = l;
  alternativeCopy = alternative;
  otherCopy = other;
  v14 = [[self alloc] initWithHeaders:headersCopy HTML:lCopy plainTextAlternative:alternativeCopy other:otherCopy];

  return v14;
}

- (id)_currentDeliveryObject
{
  currentDeliveryObject = self->_currentDeliveryObject;
  if (currentDeliveryObject)
  {
    goto LABEL_21;
  }

  account = [(MFOutgoingMessageDelivery *)self account];

  message = self->_message;
  if (!account)
  {
    if (message)
    {
      v9 = [[MFMailDelivery alloc] initWithMessage:self->_message];
      v10 = self->_currentDeliveryObject;
      self->_currentDeliveryObject = v9;

      goto LABEL_19;
    }

    if (self->_mixedContent)
    {
      v13 = [[MFMailDelivery alloc] initWithHeaders:self->_headers mixedContent:self->_mixedContent textPartsAreHTML:self->_textPartsAreHTML];
    }

    else
    {
      if (!self->_htmlBody && !self->_plainTextAlternative)
      {
        goto LABEL_19;
      }

      v13 = [[MFMailDelivery alloc] initWithHeaders:self->_headers HTML:self->_htmlBody plainTextAlternative:self->_plainTextAlternative other:self->_otherHTMLAndAttachments];
    }

    v15 = self->_currentDeliveryObject;
    self->_currentDeliveryObject = v13;

    self->_action = [(MFMailDelivery *)self->_currentDeliveryObject action];
    goto LABEL_19;
  }

  if (message)
  {
    account2 = [(MFOutgoingMessageDelivery *)self account];
    v7 = [account2 newDeliveryWithMessage:self->_message];
    v8 = self->_currentDeliveryObject;
    self->_currentDeliveryObject = v7;

    goto LABEL_19;
  }

  if (self->_mixedContent)
  {
    account3 = [(MFOutgoingMessageDelivery *)self account];
    v12 = [account3 newDeliveryWithHeaders:self->_headers mixedContent:self->_mixedContent textPartsAreHTML:self->_textPartsAreHTML];
LABEL_14:
    v14 = self->_currentDeliveryObject;
    self->_currentDeliveryObject = v12;

    self->_action = [(MFMailDelivery *)self->_currentDeliveryObject action];
    self->_shouldSign = [(MFMailDelivery *)self->_currentDeliveryObject shouldSign];
    self->_shouldEncrypt = [(MFMailDelivery *)self->_currentDeliveryObject shouldEncrypt];
    self->_conversationFlags = [(MFMailDelivery *)self->_currentDeliveryObject conversationFlags];
    goto LABEL_19;
  }

  if (self->_htmlBody || self->_plainTextAlternative)
  {
    account3 = [(MFOutgoingMessageDelivery *)self account];
    v12 = [account3 newDeliveryWithHeaders:self->_headers HTML:self->_htmlBody plainTextAlternative:self->_plainTextAlternative other:self->_otherHTMLAndAttachments];
    goto LABEL_14;
  }

LABEL_19:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(MFMailDelivery *)self->_currentDeliveryObject setDelegate:WeakRetained];

  compositionSpecification = [(MFOutgoingMessageDelivery *)self compositionSpecification];
  [(MFMailDelivery *)self->_currentDeliveryObject setCompositionSpecification:compositionSpecification];

  currentDeliveryObject = self->_currentDeliveryObject;
  if (self->_archiveAccount)
  {
    [(MFMailDelivery *)currentDeliveryObject setArchiveAccount:?];
    currentDeliveryObject = self->_currentDeliveryObject;
  }

LABEL_21:

  return currentDeliveryObject;
}

- (void)setCompositionSpecification:(id)specification
{
  specificationCopy = specification;
  if (self->_compositionSpecification != specificationCopy)
  {
    objc_storeStrong(&self->_compositionSpecification, specification);
    [(MFMailDelivery *)self->_currentDeliveryObject setCompositionSpecification:specificationCopy];
  }
}

- (id)originalHeaders
{
  headers = self->_headers;
  if (!headers)
  {
    headers = [(MFMailMessage *)self->_message headers];
  }

  return headers;
}

- (id)_deliverSynchronouslyWithCurrentSettings:(BOOL)settings
{
  settingsCopy = settings;
  _currentDeliveryObject = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
  v6 = _currentDeliveryObject;
  if (_currentDeliveryObject)
  {
    if (settingsCopy)
    {
      [_currentDeliveryObject setCellDataOnly:1];
    }

    [v6 setArchiveAccount:self->_archiveAccount];
    [v6 setConversationFlags:{-[MFOutgoingMessageDelivery conversationFlags](self, "conversationFlags")}];
    [v6 setIsUserRequested:{-[MFOutgoingMessageDelivery isUserRequested](self, "isUserRequested")}];
    [v6 setAction:{-[MFOutgoingMessageDelivery action](self, "action")}];
    [v6 setShouldSign:{-[MFOutgoingMessageDelivery shouldSign](self, "shouldSign")}];
    [v6 setShouldEncrypt:{-[MFOutgoingMessageDelivery shouldEncrypt](self, "shouldEncrypt")}];
    originalMessageObjectID = [(MFOutgoingMessageDelivery *)self originalMessageObjectID];
    [v6 setOriginalMessageObjectID:originalMessageObjectID];

    originalMessage = [(MFOutgoingMessageDelivery *)self originalMessage];
    [v6 setOriginalMessage:originalMessage];

    deliverSynchronously = [v6 deliverSynchronously];
    if ([(MFDeliveryResult *)deliverSynchronously status])
    {
      if (deliverSynchronously)
      {
        goto LABEL_13;
      }
    }

    else
    {
      mEMORY[0x1E698B678] = [MEMORY[0x1E698B678] sharedAggregateDictionary];
      message = [v6 message];
      [mEMORY[0x1E698B678] pushValue:@"com.apple.mobilemail.sentMessageSize" forKey:{objc_msgSend(message, "messageSize")}];

      if (deliverSynchronously)
      {
        goto LABEL_13;
      }
    }

    v11 = 2;
  }

  else
  {
    v10 = +[MFOutgoingMessageDelivery log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MFOutgoingMessageDelivery _deliverSynchronouslyWithCurrentSettings:v10];
    }

    v11 = 5;
  }

  deliverSynchronously = [[MFDeliveryResult alloc] initWithStatus:v11];
LABEL_13:

  return deliverSynchronously;
}

- (id)deliverSynchronouslyWithCompletion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!-[MailAccount isPrimaryDeliveryAccountDisabled](self->_archiveAccount, "isPrimaryDeliveryAccountDisabled") && (-[MFOutgoingMessageDelivery account](self, "account"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (-[MailAccount deliveryAccountAlternates](self->_archiveAccount, "deliveryAccountAlternates"), v5 = objc_claimAutoreleasedReturnValue(), [v5 count]))
  {

    goto LABEL_5;
  }

  canUseCarrierDeliveryFallback = [(MailAccount *)self->_archiveAccount canUseCarrierDeliveryFallback];

  if (canUseCarrierDeliveryFallback)
  {
LABEL_5:
    v6 = [[MFDeliveryResult alloc] initWithStatus:2];
    account = [(MFOutgoingMessageDelivery *)self account];
    if ([account isActive])
    {
      isPrimaryDeliveryAccountDisabled = [(MailAccount *)self->_archiveAccount isPrimaryDeliveryAccountDisabled];

      if (isPrimaryDeliveryAccountDisabled)
      {
        v40 = 0;
        v9 = v6;
LABEL_16:
        if ([(MFDeliveryResult *)v9 status]== 5 || [(MFDeliveryResult *)v9 status]== 2)
        {
          goto LABEL_18;
        }

        if ([(MFDeliveryResult *)v9 status]== 1)
        {
          v34 = +[MFActivityMonitor currentMonitor];
          error = [v34 error];

          if (error)
          {
            domain = [error domain];
            v37 = domain;
            if (@"MFMessageErrorDomain" == domain)
            {
              code = [error code];

              if (code == 1047)
              {
LABEL_18:
                [(MailAccount *)self->_archiveAccount deliveryAccountAlternates];
                v43 = 0u;
                v44 = 0u;
                v41 = 0u;
                v18 = v42 = 0u;
                v19 = [v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
                if (v19)
                {
                  v20 = *v42;
LABEL_20:
                  v21 = 0;
                  while (1)
                  {
                    if (*v42 != v20)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v22 = *(*(&v41 + 1) + 8 * v21);
                    v23 = +[MFActivityMonitor currentMonitor];
                    [v23 setShouldCancel:0];

                    if ([(MailAccount *)self->_archiveAccount canUseDeliveryAccount:v22])
                    {
                      [(MFOutgoingMessageDelivery *)self setAccount:v22];
                      v24 = [(MFOutgoingMessageDelivery *)self _deliverSynchronouslyWithCurrentSettings:0];

                      v9 = v24;
                    }

                    if ([(MFDeliveryResult *)v9 status]!= 2 && [(MFDeliveryResult *)v9 status]!= 1)
                    {
                      break;
                    }

                    if (v19 == ++v21)
                    {
                      v19 = [v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
                      if (v19)
                      {
                        goto LABEL_20;
                      }

                      break;
                    }
                  }
                }

                if (([(MFDeliveryResult *)v9 status]== 2 || [(MFDeliveryResult *)v9 status]== 1) && [(MailAccount *)self->_archiveAccount canUseCarrierDeliveryFallback])
                {
                  v25 = +[(DeliveryAccount *)SMTPAccount];
                  if (v25)
                  {
                    v26 = +[MFActivityMonitor currentMonitor];
                    [v26 setShouldCancel:0];

                    [(MFOutgoingMessageDelivery *)self setAccount:v25];
                    v27 = [(MFOutgoingMessageDelivery *)self _deliverSynchronouslyWithCurrentSettings:1];

                    v9 = v27;
                  }
                }
              }
            }

            else
            {
            }
          }
        }

        if (![(MFDeliveryResult *)v9 status])
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v29 = objc_opt_respondsToSelector();

          if (v29)
          {
            v30 = objc_loadWeakRetained(&self->_delegate);
            [v30 notifyUserDeliverySucceeded:self];
          }
        }

        if ([(MFDeliveryResult *)v9 status]== 0 && !v40)
        {
          _currentDeliveryObject = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
          [_currentDeliveryObject archive];
        }

        if (completionCopy)
        {
          completionCopy[2](completionCopy, [(MFDeliveryResult *)v9 status]);
        }

        goto LABEL_43;
      }

      v9 = [(MFOutgoingMessageDelivery *)self _deliverSynchronouslyWithCurrentSettings:0];

      _currentDeliveryObject2 = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
      account2 = [_currentDeliveryObject2 account];
      supportsOutboxCopy = [account2 supportsOutboxCopy];

      if ([(MFDeliveryResult *)v9 status]|| (supportsOutboxCopy & 1) == 0 && [(MailAccount *)self->_archiveAccount mustArchiveSentMessages])
      {
        v40 = 0;
        goto LABEL_16;
      }

      if (![(MailAccount *)self->_archiveAccount canArchiveSentMessages])
      {
        v40 = 1;
        goto LABEL_16;
      }

      account = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
      followUpWarning = [account followUpWarning];
      v40 = followUpWarning == 0;
    }

    else
    {
      v40 = 0;
      v9 = v6;
    }

    goto LABEL_16;
  }

  v11 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1051 userInfo:0];
  v12 = +[MFActivityMonitor currentMonitor];
  [v12 setError:v11];

  v13 = +[MFOutgoingMessageDelivery log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    ef_publicDescription = [v11 ef_publicDescription];
    [(MFOutgoingMessageDelivery *)ef_publicDescription deliverSynchronouslyWithCompletion:buf, v13];
  }

  v9 = [[MFDeliveryResult alloc] initWithStatus:5];
LABEL_43:

  v32 = *MEMORY[0x1E69E9840];

  return v9;
}

- (int64_t)deliveryStatus
{
  _currentDeliveryObject = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
  if (_currentDeliveryObject)
  {
    _currentDeliveryObject2 = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
    deliveryStatus = [_currentDeliveryObject2 deliveryStatus];
  }

  else
  {
    deliveryStatus = 5;
  }

  return deliveryStatus;
}

- (id)message
{
  _currentDeliveryObject = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
  message = [_currentDeliveryObject message];

  if (!message)
  {
    account = [(MFOutgoingMessageDelivery *)self account];

    if (account)
    {
LABEL_3:
      message = 0;
      goto LABEL_12;
    }

    message = self->_message;
    if (message)
    {
      message = message;
    }

    else
    {
      if (self->_mixedContent)
      {
        v7 = [[MFMailDelivery alloc] initWithHeaders:self->_headers mixedContent:self->_mixedContent textPartsAreHTML:self->_textPartsAreHTML];
        message2 = [(MFMailDelivery *)v7 message];
      }

      else
      {
        if (!self->_htmlBody && !self->_plainTextAlternative)
        {
          goto LABEL_3;
        }

        v7 = [[MFMailDelivery alloc] initWithHeaders:self->_headers HTML:self->_htmlBody plainTextAlternative:self->_plainTextAlternative other:self->_otherHTMLAndAttachments];
        message2 = [(MFMailDelivery *)v7 message];
      }

      message = message2;
    }
  }

LABEL_12:

  return message;
}

- (id)_deliveryAccountForInitializers
{
  if (self->_message)
  {
    firstSenderAddress = [MailAccount accountThatMessageIsFrom:?];
    deliveryAccount = [firstSenderAddress deliveryAccount];
LABEL_5:

    goto LABEL_6;
  }

  headers = self->_headers;
  if (headers)
  {
    firstSenderAddress = [(MFMutableMessageHeaders *)headers firstSenderAddress];
    v5 = [MailAccount accountContainingEmailAddress:firstSenderAddress];
    deliveryAccount = [v5 deliveryAccount];

    goto LABEL_5;
  }

  v7 = +[MFOutgoingMessageDelivery log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(MFOutgoingMessageDelivery *)v7 _deliveryAccountForInitializers];
  }

  deliveryAccount = 0;
LABEL_6:

  return deliveryAccount;
}

- (id)account
{
  deliveryAccount = self->_deliveryAccount;
  if (!deliveryAccount)
  {
    _deliveryAccountForInitializers = [(MFOutgoingMessageDelivery *)self _deliveryAccountForInitializers];
    v5 = self->_deliveryAccount;
    self->_deliveryAccount = _deliveryAccountForInitializers;

    deliveryAccount = self->_deliveryAccount;
  }

  return deliveryAccount;
}

- (void)setArchiveAccount:(id)account
{
  objc_storeStrong(&self->_archiveAccount, account);
  accountCopy = account;
  [(MFMailDelivery *)self->_currentDeliveryObject setArchiveAccount:self->_archiveAccount];
}

- (void)setAccount:(id)account
{
  p_deliveryAccount = &self->_deliveryAccount;
  accountCopy = account;
  if (*p_deliveryAccount != accountCopy)
  {
    objc_storeStrong(&self->_deliveryAccount, account);
    [(DeliveryAccount *)*p_deliveryAccount deliveryClass];
    if (self->_currentDeliveryObject)
    {
      isKindOfClass = objc_opt_isKindOfClass();
      currentDeliveryObject = self->_currentDeliveryObject;
      if (isKindOfClass)
      {
        [(MFMailDelivery *)currentDeliveryObject setAccount:*p_deliveryAccount];
      }

      else
      {
        self->_currentDeliveryObject = 0;
      }
    }
  }
}

- (MFDeliveryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)deliverSynchronouslyWithCompletion:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Failed to deliver message due to error %{public}@", buf, 0xCu);
}

@end