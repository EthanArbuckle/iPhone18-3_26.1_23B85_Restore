@interface MFMailDelivery
+ (BOOL)deliverMessage:(id)a3;
+ (id)newWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6 charsets:(id)a7;
+ (id)newWithMessage:(id)a3;
- (BOOL)shouldEncryptMessage;
- (BOOL)shouldSignMessage;
- (MFMailDelivery)init;
- (MFMailDelivery)initWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6 charsets:(id)a7;
- (MFMailDelivery)initWithHeaders:(id)a3 mixedContent:(id)a4 textPartsAreHTML:(BOOL)a5;
- (MFMailDelivery)initWithMessage:(id)a3;
- (id)deliverMessageData:(id)a3 toRecipients:(id)a4;
- (id)deliverSynchronously;
- (id)headersForDelivery;
- (id)message;
- (id)newMessageWriter;
- (id)originalHeaders;
- (void)archive;
- (void)dealloc;
- (void)deliverAsynchronously;
- (void)setAccount:(id)a3;
- (void)setArchiveAccount:(id)a3;
- (void)setCellDataOnly:(BOOL)a3;
@end

@implementation MFMailDelivery

+ (id)newWithMessage:(id)a3
{
  v4 = [+[MailAccount accountThatMessageIsFrom:](MailAccount "accountThatMessageIsFrom:"deliveryAccount"")];
  if (!v4)
  {
    v4 = +[MailAccount defaultDeliveryAccount];
  }

  return [v4 newDeliveryWithMessage:a3];
}

+ (id)newWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6 charsets:(id)a7
{
  v12 = [+[MailAccount accountContainingEmailAddress:](MailAccount accountContainingEmailAddress:{objc_msgSend(a3, "firstSenderAddress")), "deliveryAccount"}];

  return [v12 newDeliveryWithHeaders:a3 HTML:a4 plainTextAlternative:a5 other:a6 charsets:a7];
}

+ (BOOL)deliverMessage:(id)a3
{
  v3 = [a1 newWithMessage:a3];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 deliverSynchronously];

    LOBYTE(v3) = [v5 status] == 0;
  }

  return v3;
}

- (MFMailDelivery)init
{
  v3.receiver = self;
  v3.super_class = MFMailDelivery;
  result = [(MFMailDelivery *)&v3 init];
  if (result)
  {
    result->_delegate = 0;
  }

  return result;
}

- (MFMailDelivery)initWithMessage:(id)a3
{
  v4 = [(MFMailDelivery *)self init];
  if (v4)
  {
    v4->_message = a3;
  }

  return v4;
}

- (MFMailDelivery)initWithHeaders:(id)a3 mixedContent:(id)a4 textPartsAreHTML:(BOOL)a5
{
  v8 = [(MFMailDelivery *)self init];
  if (v8)
  {
    v9 = [a3 mutableCopy];
    v8->_headers = v9;
    [(MFMutableMessageHeaders *)v9 stripInternalHeaders];
    v8->_mixedContent = a4;
    v8->_textPartsAreHTML = a5;
  }

  return v8;
}

- (MFMailDelivery)initWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6 charsets:(id)a7
{
  v12 = [(MFMailDelivery *)self init];
  if (v12)
  {
    v13 = [a3 mutableCopy];
    v12->_headers = v13;
    [(MFMutableMessageHeaders *)v13 stripInternalHeaders];
    v12->_htmlString = a4;
    v12->_plainTextAlternative = a5;
    v12->_otherStringsAndAttachments = a6;
    v12->_charsets = a7;
    v12->_textPartsAreHTML = 1;
  }

  return v12;
}

- (void)dealloc
{
  message = self->_message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MFMessage *)self->_message setMessageBody:0];
  }

  v4.receiver = self;
  v4.super_class = MFMailDelivery;
  [(MFMailDelivery *)&v4 dealloc];
}

- (id)newMessageWriter
{
  v3 = [MFMessageWriter alloc];
  v4 = [(MFMailDelivery *)self compositionSpecification];

  return [(MFMessageWriter *)v3 initWithCompositionSpecification:v4];
}

- (id)message
{
  result = self->_message;
  if (!result)
  {
    if (self->_htmlString)
    {
      v4 = [(MFMailDelivery *)self newMessageWriter];
    }

    else
    {
      otherStringsAndAttachments = self->_otherStringsAndAttachments;
      v6 = [(MFMailDelivery *)self newMessageWriter];
      v4 = v6;
      if (!otherStringsAndAttachments)
      {
        v7 = [v6 createMessageWithPlainTextDocumentsAndAttachments:self->_mixedContent headers:self->_headers];
        goto LABEL_6;
      }
    }

    v7 = [v4 createMessageWithHtmlString:self->_htmlString plainTextAlternative:self->_plainTextAlternative otherHtmlStringsAndAttachments:self->_otherStringsAndAttachments charsets:self->_charsets headers:self->_headers];
LABEL_6:
    v8 = v7;
    self->_message = v7;
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    [(MFMessage *)v8 setDateSentTimeIntervalSince1970:?];

    return self->_message;
  }

  return result;
}

- (void)setArchiveAccount:(id)a3
{
  archiveAccount = self->_archiveAccount;
  if (archiveAccount != a3)
  {

    self->_archiveAccount = a3;
  }
}

- (void)setAccount:(id)a3
{
  account = self->_account;
  if (account != a3)
  {

    self->_account = a3;
    *(self + 112) &= ~2u;
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

- (id)headersForDelivery
{
  v3 = [(MFMessage *)self->_message headers];
  if (!v3)
  {
    v3 = [(MFMailDelivery *)self originalHeaders];
  }

  v4 = [v3 mutableCopy];
  [v4 removeHeaderForKey:*MEMORY[0x277D24E68]];
  [v4 stripInternalHeaders];
  v5 = *MEMORY[0x277D07050];
  if (![v4 firstHeaderForKey:*MEMORY[0x277D07050]])
  {
    v6 = objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@ ("), EFProductName(), "mutableCopyWithZone:", -[MFMailDelivery zone](self, "zone"));
    [v6 appendString:MEMORY[0x259C96720]()];
    [v6 appendString:@""]);
    [v4 setHeader:v6 forKey:v5];
  }

  return v4;
}

- (BOOL)shouldSignMessage
{
  v2 = [(NSDictionary *)self->_compositionSpecification objectForKey:@"ShouldSign"];

  return [v2 BOOLValue];
}

- (BOOL)shouldEncryptMessage
{
  v2 = [(NSDictionary *)self->_compositionSpecification objectForKey:@"ShouldEncrypt"];

  return [v2 BOOLValue];
}

- (void)deliverAsynchronously
{
  v3 = +[MFInvocationQueue sharedInvocationQueue];
  v4 = MEMORY[0x277CCACA8];
  v5 = MFLookupLocalizedString(@"SEND_MESSAGE_FORMAT", @"Sending message: %@", 0);
  if ([-[MFMessage subject](self->_message "subject")])
  {
    v6 = [(MFMessage *)self->_message subject];
  }

  else
  {
    v6 = MFLookupLocalizedString(@"NO_SUBJECT", @"No subject", 0);
  }

  v7 = +[MFMonitoredInvocation invocationWithSelector:target:taskName:priority:canBeCancelled:](MFMonitoredInvocation, "invocationWithSelector:target:taskName:priority:canBeCancelled:", sel_deliverSynchronously, self, [v4 stringWithFormat:v5, v6], 6, 1);

  [v3 addInvocation:v7];
}

- (id)deliverSynchronously
{
  v3 = +[MFActivityMonitor currentMonitor];
  v4 = [(MFMailDelivery *)self message];
  v5 = [(MFMailDelivery *)self headersForDelivery];
  if (!v4 && [v3 error])
  {
    goto LABEL_11;
  }

  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277D24F70] data];
  v8 = [objc_msgSend(v4 "messageBody")];
  [v5 appendHeaderData:v7 andRecipients:v6];
  v9 = [MEMORY[0x277D24F08] dataHolderWithData:v7];
  v10 = v9;
  if (v8)
  {
    [v9 addData:v8];
  }

  if (!v6 || ![v6 count])
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = MFLookupLocalizedString(@"INTERNAL_DELIVERY_ERROR_FORMAT", @"This message couldn’t be delivered because the following internal error occurred: %@", @"Delayed");
    v14 = [v16 stringWithFormat:v17, MFLookupLocalizedString(@"NO_RECIPIENTS", @"This message couldn’t be delivered because you haven’t specified any recipients.", @"Delayed"];
    v15 = 1048;
    goto LABEL_9;
  }

  v11 = [(MFMailDelivery *)self deliverMessageData:v10 toRecipients:v6];
  self->_result = v11;
  v12 = v11;
  v13 = [(MFDeliveryResult *)self->_result status];
  if (v13 == 3)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"INTERNAL_DELIVERY_ERROR_FORMAT", @"This message couldn’t be delivered because the following internal error occurred: %@", @"Delayed", &stru_2869ED3E0];
    v15 = 1030;
LABEL_9:
    [v3 setError:{+[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"MFMessageErrorDomain", v15, v14)}];
LABEL_11:
    v13 = 1;
  }

  [(MFDeliveryResult *)self->_result setStatus:v13];
  return self->_result;
}

- (id)deliverMessageData:(id)a3 toRecipients:(id)a4
{
  v4 = [[MFDeliveryResult alloc] initWithStatus:1];

  return v4;
}

- (void)setCellDataOnly:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 112) = *(self + 112) & 0xFD | v3;
}

- (void)archive
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138543362;
  v5 = [objc_msgSend(a1 "error")];
  _os_log_error_impl(&dword_258BDA000, a2, OS_LOG_TYPE_ERROR, "Error %{public}@ occurred while trying to append messages to outgoing store. Ignoring and proceeding with delivery...", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end