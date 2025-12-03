@interface MFMailDelivery
+ (BOOL)deliverMessage:(id)message;
+ (id)newWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other charsets:(id)charsets;
+ (id)newWithMessage:(id)message;
- (BOOL)shouldEncryptMessage;
- (BOOL)shouldSignMessage;
- (MFMailDelivery)init;
- (MFMailDelivery)initWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other charsets:(id)charsets;
- (MFMailDelivery)initWithHeaders:(id)headers mixedContent:(id)content textPartsAreHTML:(BOOL)l;
- (MFMailDelivery)initWithMessage:(id)message;
- (id)deliverMessageData:(id)data toRecipients:(id)recipients;
- (id)deliverSynchronously;
- (id)headersForDelivery;
- (id)message;
- (id)newMessageWriter;
- (id)originalHeaders;
- (void)archive;
- (void)dealloc;
- (void)deliverAsynchronously;
- (void)setAccount:(id)account;
- (void)setArchiveAccount:(id)account;
- (void)setCellDataOnly:(BOOL)only;
@end

@implementation MFMailDelivery

+ (id)newWithMessage:(id)message
{
  v4 = [+[MailAccount accountThatMessageIsFrom:](MailAccount "accountThatMessageIsFrom:"deliveryAccount"")];
  if (!v4)
  {
    v4 = +[MailAccount defaultDeliveryAccount];
  }

  return [v4 newDeliveryWithMessage:message];
}

+ (id)newWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other charsets:(id)charsets
{
  v12 = [+[MailAccount accountContainingEmailAddress:](MailAccount accountContainingEmailAddress:{objc_msgSend(headers, "firstSenderAddress")), "deliveryAccount"}];

  return [v12 newDeliveryWithHeaders:headers HTML:l plainTextAlternative:alternative other:other charsets:charsets];
}

+ (BOOL)deliverMessage:(id)message
{
  v3 = [self newWithMessage:message];
  if (v3)
  {
    v4 = v3;
    deliverSynchronously = [v3 deliverSynchronously];

    LOBYTE(v3) = [deliverSynchronously status] == 0;
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

- (MFMailDelivery)initWithMessage:(id)message
{
  v4 = [(MFMailDelivery *)self init];
  if (v4)
  {
    v4->_message = message;
  }

  return v4;
}

- (MFMailDelivery)initWithHeaders:(id)headers mixedContent:(id)content textPartsAreHTML:(BOOL)l
{
  v8 = [(MFMailDelivery *)self init];
  if (v8)
  {
    v9 = [headers mutableCopy];
    v8->_headers = v9;
    [(MFMutableMessageHeaders *)v9 stripInternalHeaders];
    v8->_mixedContent = content;
    v8->_textPartsAreHTML = l;
  }

  return v8;
}

- (MFMailDelivery)initWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other charsets:(id)charsets
{
  v12 = [(MFMailDelivery *)self init];
  if (v12)
  {
    v13 = [headers mutableCopy];
    v12->_headers = v13;
    [(MFMutableMessageHeaders *)v13 stripInternalHeaders];
    v12->_htmlString = l;
    v12->_plainTextAlternative = alternative;
    v12->_otherStringsAndAttachments = other;
    v12->_charsets = charsets;
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
  compositionSpecification = [(MFMailDelivery *)self compositionSpecification];

  return [(MFMessageWriter *)v3 initWithCompositionSpecification:compositionSpecification];
}

- (id)message
{
  result = self->_message;
  if (!result)
  {
    if (self->_htmlString)
    {
      newMessageWriter = [(MFMailDelivery *)self newMessageWriter];
    }

    else
    {
      otherStringsAndAttachments = self->_otherStringsAndAttachments;
      newMessageWriter2 = [(MFMailDelivery *)self newMessageWriter];
      newMessageWriter = newMessageWriter2;
      if (!otherStringsAndAttachments)
      {
        v7 = [newMessageWriter2 createMessageWithPlainTextDocumentsAndAttachments:self->_mixedContent headers:self->_headers];
        goto LABEL_6;
      }
    }

    v7 = [newMessageWriter createMessageWithHtmlString:self->_htmlString plainTextAlternative:self->_plainTextAlternative otherHtmlStringsAndAttachments:self->_otherStringsAndAttachments charsets:self->_charsets headers:self->_headers];
LABEL_6:
    v8 = v7;
    self->_message = v7;
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    [(MFMessage *)v8 setDateSentTimeIntervalSince1970:?];

    return self->_message;
  }

  return result;
}

- (void)setArchiveAccount:(id)account
{
  archiveAccount = self->_archiveAccount;
  if (archiveAccount != account)
  {

    self->_archiveAccount = account;
  }
}

- (void)setAccount:(id)account
{
  account = self->_account;
  if (account != account)
  {

    self->_account = account;
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
  headers = [(MFMessage *)self->_message headers];
  if (!headers)
  {
    headers = [(MFMailDelivery *)self originalHeaders];
  }

  v4 = [headers mutableCopy];
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
    subject = [(MFMessage *)self->_message subject];
  }

  else
  {
    subject = MFLookupLocalizedString(@"NO_SUBJECT", @"No subject", 0);
  }

  v7 = +[MFMonitoredInvocation invocationWithSelector:target:taskName:priority:canBeCancelled:](MFMonitoredInvocation, "invocationWithSelector:target:taskName:priority:canBeCancelled:", sel_deliverSynchronously, self, [v4 stringWithFormat:v5, subject], 6, 1);

  [v3 addInvocation:v7];
}

- (id)deliverSynchronously
{
  v3 = +[MFActivityMonitor currentMonitor];
  message = [(MFMailDelivery *)self message];
  headersForDelivery = [(MFMailDelivery *)self headersForDelivery];
  if (!message && [v3 error])
  {
    goto LABEL_11;
  }

  array = [MEMORY[0x277CBEB18] array];
  data = [MEMORY[0x277D24F70] data];
  v8 = [objc_msgSend(message "messageBody")];
  [headersForDelivery appendHeaderData:data andRecipients:array];
  v9 = [MEMORY[0x277D24F08] dataHolderWithData:data];
  v10 = v9;
  if (v8)
  {
    [v9 addData:v8];
  }

  if (!array || ![array count])
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = MFLookupLocalizedString(@"INTERNAL_DELIVERY_ERROR_FORMAT", @"This message couldn’t be delivered because the following internal error occurred: %@", @"Delayed");
    v14 = [v16 stringWithFormat:v17, MFLookupLocalizedString(@"NO_RECIPIENTS", @"This message couldn’t be delivered because you haven’t specified any recipients.", @"Delayed"];
    v15 = 1048;
    goto LABEL_9;
  }

  v11 = [(MFMailDelivery *)self deliverMessageData:v10 toRecipients:array];
  self->_result = v11;
  v12 = v11;
  status = [(MFDeliveryResult *)self->_result status];
  if (status == 3)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"INTERNAL_DELIVERY_ERROR_FORMAT", @"This message couldn’t be delivered because the following internal error occurred: %@", @"Delayed", &stru_2869ED3E0];
    v15 = 1030;
LABEL_9:
    [v3 setError:{+[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"MFMessageErrorDomain", v15, v14)}];
LABEL_11:
    status = 1;
  }

  [(MFDeliveryResult *)self->_result setStatus:status];
  return self->_result;
}

- (id)deliverMessageData:(id)data toRecipients:(id)recipients
{
  v4 = [[MFDeliveryResult alloc] initWithStatus:1];

  return v4;
}

- (void)setCellDataOnly:(BOOL)only
{
  if (only)
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
  v5 = [objc_msgSend(self "error")];
  _os_log_error_impl(&dword_258BDA000, a2, OS_LOG_TYPE_ERROR, "Error %{public}@ occurred while trying to append messages to outgoing store. Ignoring and proceeding with delivery...", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end