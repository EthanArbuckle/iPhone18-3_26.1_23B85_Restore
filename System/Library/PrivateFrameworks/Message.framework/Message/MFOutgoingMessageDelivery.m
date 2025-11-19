@interface MFOutgoingMessageDelivery
+ (id)log;
+ (id)newWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6;
+ (id)newWithMessage:(id)a3;
- (MFDeliveryDelegate)delegate;
- (MFOutgoingMessageDelivery)init;
- (MFOutgoingMessageDelivery)initWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6;
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
- (void)setAccount:(id)a3;
- (void)setArchiveAccount:(id)a3;
- (void)setCompositionSpecification:(id)a3;
@end

@implementation MFOutgoingMessageDelivery

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__MFOutgoingMessageDelivery_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (MFOutgoingMessageDelivery)initWithMessage:(id)a3
{
  v5 = a3;
  v6 = [(MFOutgoingMessageDelivery *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
  }

  return v7;
}

- (MFOutgoingMessageDelivery)initWithHeaders:(id)a3 mixedContent:(id)a4 textPartsAreHTML:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(MFOutgoingMessageDelivery *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_headers, a3);
    objc_storeStrong(&v12->_mixedContent, a4);
    v12->_textPartsAreHTML = a5;
  }

  return v12;
}

- (MFOutgoingMessageDelivery)initWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(MFOutgoingMessageDelivery *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_headers, a3);
    objc_storeStrong(&v16->_htmlBody, a4);
    objc_storeStrong(&v16->_plainTextAlternative, a5);
    objc_storeStrong(&v16->_otherHTMLAndAttachments, a6);
  }

  return v16;
}

+ (id)newWithMessage:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithMessage:v4];

  return v5;
}

+ (id)newWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[a1 alloc] initWithHeaders:v10 HTML:v11 plainTextAlternative:v12 other:v13];

  return v14;
}

- (id)_currentDeliveryObject
{
  currentDeliveryObject = self->_currentDeliveryObject;
  if (currentDeliveryObject)
  {
    goto LABEL_21;
  }

  v4 = [(MFOutgoingMessageDelivery *)self account];

  message = self->_message;
  if (!v4)
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
    v6 = [(MFOutgoingMessageDelivery *)self account];
    v7 = [v6 newDeliveryWithMessage:self->_message];
    v8 = self->_currentDeliveryObject;
    self->_currentDeliveryObject = v7;

    goto LABEL_19;
  }

  if (self->_mixedContent)
  {
    v11 = [(MFOutgoingMessageDelivery *)self account];
    v12 = [v11 newDeliveryWithHeaders:self->_headers mixedContent:self->_mixedContent textPartsAreHTML:self->_textPartsAreHTML];
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
    v11 = [(MFOutgoingMessageDelivery *)self account];
    v12 = [v11 newDeliveryWithHeaders:self->_headers HTML:self->_htmlBody plainTextAlternative:self->_plainTextAlternative other:self->_otherHTMLAndAttachments];
    goto LABEL_14;
  }

LABEL_19:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(MFMailDelivery *)self->_currentDeliveryObject setDelegate:WeakRetained];

  v17 = [(MFOutgoingMessageDelivery *)self compositionSpecification];
  [(MFMailDelivery *)self->_currentDeliveryObject setCompositionSpecification:v17];

  currentDeliveryObject = self->_currentDeliveryObject;
  if (self->_archiveAccount)
  {
    [(MFMailDelivery *)currentDeliveryObject setArchiveAccount:?];
    currentDeliveryObject = self->_currentDeliveryObject;
  }

LABEL_21:

  return currentDeliveryObject;
}

- (void)setCompositionSpecification:(id)a3
{
  v5 = a3;
  if (self->_compositionSpecification != v5)
  {
    objc_storeStrong(&self->_compositionSpecification, a3);
    [(MFMailDelivery *)self->_currentDeliveryObject setCompositionSpecification:v5];
  }
}

- (id)originalHeaders
{
  v3 = self->_headers;
  if (!v3)
  {
    v3 = [(MFMailMessage *)self->_message headers];
  }

  return v3;
}

- (id)_deliverSynchronouslyWithCurrentSettings:(BOOL)a3
{
  v3 = a3;
  v5 = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
  v6 = v5;
  if (v5)
  {
    if (v3)
    {
      [v5 setCellDataOnly:1];
    }

    [v6 setArchiveAccount:self->_archiveAccount];
    [v6 setConversationFlags:{-[MFOutgoingMessageDelivery conversationFlags](self, "conversationFlags")}];
    [v6 setIsUserRequested:{-[MFOutgoingMessageDelivery isUserRequested](self, "isUserRequested")}];
    [v6 setAction:{-[MFOutgoingMessageDelivery action](self, "action")}];
    [v6 setShouldSign:{-[MFOutgoingMessageDelivery shouldSign](self, "shouldSign")}];
    [v6 setShouldEncrypt:{-[MFOutgoingMessageDelivery shouldEncrypt](self, "shouldEncrypt")}];
    v7 = [(MFOutgoingMessageDelivery *)self originalMessageObjectID];
    [v6 setOriginalMessageObjectID:v7];

    v8 = [(MFOutgoingMessageDelivery *)self originalMessage];
    [v6 setOriginalMessage:v8];

    v9 = [v6 deliverSynchronously];
    if ([(MFDeliveryResult *)v9 status])
    {
      if (v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = [MEMORY[0x1E698B678] sharedAggregateDictionary];
      v13 = [v6 message];
      [v12 pushValue:@"com.apple.mobilemail.sentMessageSize" forKey:{objc_msgSend(v13, "messageSize")}];

      if (v9)
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

  v9 = [[MFDeliveryResult alloc] initWithStatus:v11];
LABEL_13:

  return v9;
}

- (id)deliverSynchronouslyWithCompletion:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!-[MailAccount isPrimaryDeliveryAccountDisabled](self->_archiveAccount, "isPrimaryDeliveryAccountDisabled") && (-[MFOutgoingMessageDelivery account](self, "account"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (-[MailAccount deliveryAccountAlternates](self->_archiveAccount, "deliveryAccountAlternates"), v5 = objc_claimAutoreleasedReturnValue(), [v5 count]))
  {

    goto LABEL_5;
  }

  v10 = [(MailAccount *)self->_archiveAccount canUseCarrierDeliveryFallback];

  if (v10)
  {
LABEL_5:
    v6 = [[MFDeliveryResult alloc] initWithStatus:2];
    v7 = [(MFOutgoingMessageDelivery *)self account];
    if ([v7 isActive])
    {
      v8 = [(MailAccount *)self->_archiveAccount isPrimaryDeliveryAccountDisabled];

      if (v8)
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
          v35 = [v34 error];

          if (v35)
          {
            v36 = [v35 domain];
            v37 = v36;
            if (@"MFMessageErrorDomain" == v36)
            {
              v39 = [v35 code];

              if (v39 == 1047)
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
          v31 = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
          [v31 archive];
        }

        if (v4)
        {
          v4[2](v4, [(MFDeliveryResult *)v9 status]);
        }

        goto LABEL_43;
      }

      v9 = [(MFOutgoingMessageDelivery *)self _deliverSynchronouslyWithCurrentSettings:0];

      v15 = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
      v16 = [v15 account];
      v17 = [v16 supportsOutboxCopy];

      if ([(MFDeliveryResult *)v9 status]|| (v17 & 1) == 0 && [(MailAccount *)self->_archiveAccount mustArchiveSentMessages])
      {
        v40 = 0;
        goto LABEL_16;
      }

      if (![(MailAccount *)self->_archiveAccount canArchiveSentMessages])
      {
        v40 = 1;
        goto LABEL_16;
      }

      v7 = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
      v38 = [v7 followUpWarning];
      v40 = v38 == 0;
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
    v14 = [v11 ef_publicDescription];
    [(MFOutgoingMessageDelivery *)v14 deliverSynchronouslyWithCompletion:buf, v13];
  }

  v9 = [[MFDeliveryResult alloc] initWithStatus:5];
LABEL_43:

  v32 = *MEMORY[0x1E69E9840];

  return v9;
}

- (int64_t)deliveryStatus
{
  v3 = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
  if (v3)
  {
    v4 = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
    v5 = [v4 deliveryStatus];
  }

  else
  {
    v5 = 5;
  }

  return v5;
}

- (id)message
{
  v3 = [(MFOutgoingMessageDelivery *)self _currentDeliveryObject];
  v4 = [v3 message];

  if (!v4)
  {
    v5 = [(MFOutgoingMessageDelivery *)self account];

    if (v5)
    {
LABEL_3:
      v4 = 0;
      goto LABEL_12;
    }

    message = self->_message;
    if (message)
    {
      v4 = message;
    }

    else
    {
      if (self->_mixedContent)
      {
        v7 = [[MFMailDelivery alloc] initWithHeaders:self->_headers mixedContent:self->_mixedContent textPartsAreHTML:self->_textPartsAreHTML];
        v8 = [(MFMailDelivery *)v7 message];
      }

      else
      {
        if (!self->_htmlBody && !self->_plainTextAlternative)
        {
          goto LABEL_3;
        }

        v7 = [[MFMailDelivery alloc] initWithHeaders:self->_headers HTML:self->_htmlBody plainTextAlternative:self->_plainTextAlternative other:self->_otherHTMLAndAttachments];
        v8 = [(MFMailDelivery *)v7 message];
      }

      v4 = v8;
    }
  }

LABEL_12:

  return v4;
}

- (id)_deliveryAccountForInitializers
{
  if (self->_message)
  {
    v2 = [MailAccount accountThatMessageIsFrom:?];
    v3 = [v2 deliveryAccount];
LABEL_5:

    goto LABEL_6;
  }

  headers = self->_headers;
  if (headers)
  {
    v2 = [(MFMutableMessageHeaders *)headers firstSenderAddress];
    v5 = [MailAccount accountContainingEmailAddress:v2];
    v3 = [v5 deliveryAccount];

    goto LABEL_5;
  }

  v7 = +[MFOutgoingMessageDelivery log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(MFOutgoingMessageDelivery *)v7 _deliveryAccountForInitializers];
  }

  v3 = 0;
LABEL_6:

  return v3;
}

- (id)account
{
  deliveryAccount = self->_deliveryAccount;
  if (!deliveryAccount)
  {
    v4 = [(MFOutgoingMessageDelivery *)self _deliveryAccountForInitializers];
    v5 = self->_deliveryAccount;
    self->_deliveryAccount = v4;

    deliveryAccount = self->_deliveryAccount;
  }

  return deliveryAccount;
}

- (void)setArchiveAccount:(id)a3
{
  objc_storeStrong(&self->_archiveAccount, a3);
  v5 = a3;
  [(MFMailDelivery *)self->_currentDeliveryObject setArchiveAccount:self->_archiveAccount];
}

- (void)setAccount:(id)a3
{
  p_deliveryAccount = &self->_deliveryAccount;
  v8 = a3;
  if (*p_deliveryAccount != v8)
  {
    objc_storeStrong(&self->_deliveryAccount, a3);
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