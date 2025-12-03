@interface MFMailDelivery
+ (BOOL)deliverMessage:(id)message;
+ (id)log;
+ (id)newWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other;
+ (id)newWithMessage:(id)message;
- (MFMailDelivery)init;
- (MFMailDelivery)initWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other;
- (MFMailDelivery)initWithHeaders:(id)headers mixedContent:(id)content textPartsAreHTML:(BOOL)l;
- (MFMailDelivery)initWithMessage:(id)message;
- (id)_htmlBodyForMessage:(id)message;
- (id)delegate;
- (id)deliverMessageData:(id)data toRecipients:(id)recipients;
- (id)deliverSynchronously;
- (id)followUpWarning;
- (id)headersForDelivery;
- (id)message;
- (id)newMessageWriter;
- (id)originalHeaders;
- (void)_checkAndApplyFollowUpToDeliveredMessage:(id)message;
- (void)archive;
- (void)dealloc;
- (void)deliverAsynchronously;
- (void)setAccount:(id)account;
- (void)setCellDataOnly:(BOOL)only;
- (void)updateOriginalMessageFromHeaders:(id)headers;
@end

@implementation MFMailDelivery

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__MFMailDelivery_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_6 != -1)
  {
    dispatch_once(&log_onceToken_6, block);
  }

  v2 = log_log_6;

  return v2;
}

void __21__MFMailDelivery_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_6;
  log_log_6 = v1;
}

+ (id)newWithMessage:(id)message
{
  messageCopy = message;
  v4 = [MailAccount accountThatMessageIsFrom:messageCopy];
  deliveryAccount = [v4 deliveryAccount];

  if (!deliveryAccount)
  {
    deliveryAccount = +[MailAccount defaultDeliveryAccount];
  }

  v6 = [deliveryAccount newDeliveryWithMessage:messageCopy];

  return v6;
}

+ (id)newWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other
{
  headersCopy = headers;
  lCopy = l;
  alternativeCopy = alternative;
  otherCopy = other;
  v13 = accountForHeaders(headersCopy);
  v14 = [v13 newDeliveryWithHeaders:headersCopy HTML:lCopy plainTextAlternative:alternativeCopy other:otherCopy];

  return v14;
}

+ (BOOL)deliverMessage:(id)message
{
  v3 = [self newWithMessage:message];
  v4 = v3;
  if (v3)
  {
    deliverSynchronously = [v3 deliverSynchronously];
    v6 = [deliverSynchronously status] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MFMailDelivery)init
{
  v11.receiver = self;
  v11.super_class = MFMailDelivery;
  v2 = [(MFMailDelivery *)&v11 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_delegate, 0);
    objc_initWeak(&location, v3);
    v4 = MEMORY[0x1E699B7C8];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __22__MFMailDelivery_init__block_invoke;
    v8[3] = &unk_1E7AA3400;
    objc_copyWeak(&v9, &location);
    v5 = [v4 lazyFutureWithBlock:v8];
    followUpFuture = v3->_followUpFuture;
    v3->_followUpFuture = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v3;
}

MFFollowUpWarningResult *__22__MFMailDelivery_init__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained message];
    v6 = [v5 subject];
    v7 = [v6 subjectString];
    v8 = v7;
    v9 = &stru_1F273A5E0;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v22 = [v4 _htmlBodyForMessage:v5];
    v11 = [MEMORY[0x1E699B2F8] snippetFromHTMLBody:? options:? maxLength:? preservingQuotedForwardedContent:?];
    v23 = [MEMORY[0x1E699B858] ec_partiallyRedactedStringForSubjectOrSummary:v10];
    v12 = [MEMORY[0x1E699B858] ec_partiallyRedactedStringForSubjectOrSummary:v11];
    v13 = +[MFMailDelivery log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = v23;
      v27 = 2114;
      v28 = v12;
      _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "_followUpFuture calling suggestionService with Subject: %{public}@ Body: %{public}@", buf, 0x16u);
    }

    v14 = [MEMORY[0x1E69992A0] serviceForMail];
    [v14 setSyncTimeout:1.0];
    v15 = [v5 dateSent];
    v24 = 0;
    v16 = [v14 identifyFollowUpWarningFromSubject:v10 body:v11 date:v15 error:&v24];
    v17 = v24;

    v18 = v17;
    *a2 = v17;
    v19 = [[MFFollowUpWarningResult alloc] initWithFollowUpWarning:v16 error:v17];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (MFMailDelivery)initWithMessage:(id)message
{
  messageCopy = message;
  v6 = [(MFMailDelivery *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

- (MFMailDelivery)initWithHeaders:(id)headers mixedContent:(id)content textPartsAreHTML:(BOOL)l
{
  headersCopy = headers;
  contentCopy = content;
  v10 = [(MFMailDelivery *)self init];
  if (v10)
  {
    v11 = [headersCopy mutableCopy];
    headers = v10->_headers;
    v10->_headers = v11;

    [(MFMailDelivery *)v10 updateOriginalMessageFromHeaders:v10->_headers];
    [(MFMutableMessageHeaders *)v10->_headers stripInternalHeaders];
    objc_storeStrong(&v10->_mixedContent, content);
    v10->_textPartsAreHTML = l;
  }

  return v10;
}

- (MFMailDelivery)initWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other
{
  headersCopy = headers;
  lCopy = l;
  alternativeCopy = alternative;
  otherCopy = other;
  v14 = [(MFMailDelivery *)self init];
  if (v14)
  {
    v15 = [headersCopy mutableCopy];
    headers = v14->_headers;
    v14->_headers = v15;

    [(MFMailDelivery *)v14 updateOriginalMessageFromHeaders:v14->_headers];
    [(MFMutableMessageHeaders *)v14->_headers stripInternalHeaders];
    objc_storeStrong(&v14->_htmlString, l);
    objc_storeStrong(&v14->_plainTextAlternative, alternative);
    objc_storeStrong(&v14->_otherStringsAndAttachments, other);
    v14->_textPartsAreHTML = 1;
  }

  return v14;
}

- (void)dealloc
{
  message = self->_message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MFMailMessage *)self->_message setMessageBody:0];
  }

  v4.receiver = self;
  v4.super_class = MFMailDelivery;
  [(MFMailDelivery *)&v4 dealloc];
}

- (id)newMessageWriter
{
  v3 = [MFMessageWriter alloc];
  compositionSpecification = [(MFMailDelivery *)self compositionSpecification];
  v5 = [(MFMessageWriter *)v3 initWithCompositionSpecification:compositionSpecification];

  return v5;
}

- (id)message
{
  message = self->_message;
  if (!message)
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

    v7 = [newMessageWriter createMessageWithHTMLStringAndMIMECharset:self->_htmlString plainTextAlternative:self->_plainTextAlternative otherHtmlStringsAndAttachments:self->_otherStringsAndAttachments headers:self->_headers];
LABEL_6:
    v8 = self->_message;
    self->_message = v7;

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    [(MFMailMessage *)self->_message setDateSentAsTimeIntervalSince1970:?];

    message = self->_message;
  }

  return message;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  if (self->_account != accountCopy)
  {
    v6 = accountCopy;
    objc_storeStrong(&self->_account, account);
    accountCopy = v6;
    *(self + 104) &= ~2u;
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

- (id)headersForDelivery
{
  headers = [(MFMailMessage *)self->_message headers];
  if (!headers)
  {
    headers = [(MFMailDelivery *)self originalHeaders];
  }

  v4 = [headers mutableCopy];
  [v4 removeHeaderForKey:*MEMORY[0x1E69AD618]];
  [v4 stripInternalHeaders];
  v5 = *MEMORY[0x1E699B1A0];
  v6 = [v4 firstHeaderForKey:*MEMORY[0x1E699B1A0]];

  if (!v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = EFProductName();
    v9 = objc_msgSend(v7, "stringWithFormat:", @"%@ ("), v8;
    v10 = [v9 mutableCopy];

    v11 = EFSystemBuildVersion();
    [v10 appendString:v11];

    [v10 appendString:@""]);
    [v4 setHeader:v10 forKey:v5];
  }

  return v4;
}

- (void)deliverAsynchronously
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MFLookupLocalizedString(@"SEND_MESSAGE_FORMAT", @"Sending message: %@", @"Message");
  subject = [(MFMailMessage *)self->_message subject];
  v6 = [subject length];
  if (v6)
  {
    subject2 = [(MFMailMessage *)self->_message subject];
    subjectString = [subject2 subjectString];
  }

  else
  {
    subjectString = MFLookupLocalizedString(@"NO_SUBJECT", @"No subject", @"Message");
    subject2 = subjectString;
  }

  v11 = [v3 stringWithFormat:v4, subjectString];
  if (v6)
  {
  }

  v9 = +[MFInvocationQueue sharedInvocationQueue];
  v10 = [MFMonitoredInvocation invocationWithSelector:sel_deliverSynchronously target:self taskName:v11 priority:6 canBeCancelled:1];
  [v9 addInvocation:v10];
}

- (id)deliverSynchronously
{
  v3 = +[MFActivityMonitor currentMonitor];
  message = [(MFMailDelivery *)self message];
  headersForDelivery = [(MFMailDelivery *)self headersForDelivery];
  if (!message)
  {
    error = [v3 error];

    if (error)
    {
      goto LABEL_11;
    }
  }

  v28 = headersForDelivery;
  v29 = v3;
  array = [MEMORY[0x1E695DF70] array];
  data = [MEMORY[0x1E69AD730] data];
  messageBody = [message messageBody];
  rawData = [messageBody rawData];

  [headersForDelivery appendHeaderData:data andRecipients:array];
  v10 = [MEMORY[0x1E69AD6B8] dataHolderWithData:data];
  v11 = v10;
  if (rawData)
  {
    [v10 addData:rawData];
  }

  if (array && [array count])
  {
    v12 = [(MFMailDelivery *)self deliverMessageData:v11 toRecipients:array];
    v13 = self->_result;
    self->_result = v12;

    status = [(MFDeliveryResult *)self->_result status];
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = MFLookupLocalizedString(@"INTERNAL_DELIVERY_ERROR_FORMAT", @"This message couldn’t be delivered because the following internal error occurred: %@", @"Delayed");
    v17 = MFLookupLocalizedString(@"NO_RECIPIENTS", @"This message couldn’t be delivered because you haven’t specified any recipients.", @"Delayed");
    v18 = [v15 stringWithFormat:v16, v17];
    v19 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1048 localizedDescription:v18];
    [v29 setError:v19];

    status = 1;
  }

  headersForDelivery = v28;
  v3 = v29;
  if (status == 3)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = MFLookupLocalizedString(@"INTERNAL_DELIVERY_ERROR_FORMAT", @"This message couldn’t be delivered because the following internal error occurred: %@", @"Delayed");
    v22 = [v20 stringWithFormat:v21, &stru_1F273A5E0];

    v23 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:v22];
    [v29 setError:v23];

LABEL_11:
    status = 1;
  }

  [(MFDeliveryResult *)self->_result setStatus:status];
  v25 = self->_result;
  v26 = v25;

  return v25;
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

  *(self + 104) = *(self + 104) & 0xFD | v3;
}

- (id)followUpWarning
{
  followUpFuture = self->_followUpFuture;
  v7 = 0;
  v3 = [(EFFuture *)followUpFuture result:&v7];
  v4 = v7;
  followUpWarning = [v3 followUpWarning];

  return followUpWarning;
}

- (void)archive
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = +[MFActivityMonitor currentMonitor];
  archiveAccount = self->_archiveAccount;
  if (archiveAccount)
  {
    v5 = [(MailAccount *)archiveAccount mailboxUidOfType:4 createIfNeeded:1];
    [v3 setCanBeCancelled:1];
    store = [v5 store];
    allowsAppend = [store allowsAppend];

    if (allowsAppend)
    {
      v16 = +[MFMailMessageLibrary defaultInstance];
      persistence = [v16 persistence];
      messageChangeManager = [persistence messageChangeManager];
      message = [(MFMailDelivery *)self message];
      v17[0] = message;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v12 = [v5 URL];
      v13 = [messageChangeManager addNewMessages:v11 mailboxURL:v12 userInitiated:0];
      firstObject = [v13 firstObject];

      [(MFMailDelivery *)self _checkAndApplyFollowUpToDeliveredMessage:firstObject];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateOriginalMessageFromHeaders:(id)headers
{
  headersCopy = headers;
  v4 = [headersCopy firstHeaderForKey:*MEMORY[0x1E69AD628]];
  v5 = [headersCopy firstHeaderForKey:*MEMORY[0x1E69AD610]];
  v6 = v5;
  self->_action = 0;
  if (v4)
  {
    v7 = MEMORY[0x1E699ADA8];
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedData:v4 options:0];
    v9 = [v7 objectIDFromSerializedRepresentation:v8];
    v10 = 1;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v11 = MEMORY[0x1E699ADA8];
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedData:v5 options:0];
    v9 = [v11 objectIDFromSerializedRepresentation:v8];
    v10 = 2;
  }

  originalMessageObjectID = self->_originalMessageObjectID;
  self->_originalMessageObjectID = v9;

  self->_action = v10;
LABEL_6:
}

- (void)_checkAndApplyFollowUpToDeliveredMessage:(id)message
{
  v31 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  followUpWarning = [(MFMailDelivery *)self followUpWarning];
  if (!followUpWarning)
  {
    goto LABEL_16;
  }

  v6 = +[MFMailMessageLibrary defaultInstance];
  persistence = [v6 persistence];
  messageChangeManager = [persistence messageChangeManager];

  v9 = [MEMORY[0x1E699ACE8] preferenceEnabled:16];
  v10 = [MEMORY[0x1E699ACE8] preferenceEnabled:17];
  if (v9)
  {
    [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:10.0];
  }

  else
  {
    [followUpWarning startDate];
  }
  v11 = ;
  v12 = v11;
  if (v10)
  {
    endDate = [v11 dateByAddingTimeInterval:60.0];
  }

  else
  {
    endDate = [followUpWarning endDate];
    if (!v9)
    {
      v17 = &stru_1F273A5E0;
      goto LABEL_10;
    }
  }

  v14 = MEMORY[0x1E696AEC0];
  startDate = [followUpWarning startDate];
  endDate2 = [followUpWarning endDate];
  v17 = [v14 stringWithFormat:@"using DebugStartDate (original startDate:%@, endDate:%@)", startDate, endDate2];

LABEL_10:
  if (objc_opt_respondsToSelector())
  {
    toLightJson = [followUpWarning toLightJson];
  }

  else
  {
    toLightJson = 0;
  }

  v19 = [objc_alloc(MEMORY[0x1E699ACA8]) initWithStartDate:v12 endDate:endDate jsonStringForModelEvaluationForSuggestions:toLightJson];
  v20 = +[MFMailDelivery log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    score = [followUpWarning score];
    *buf = 138543874;
    v26 = score;
    v27 = 2114;
    v28 = v19;
    v29 = 2114;
    v30 = v17;
    _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_DEFAULT, "suggestionService warning.score:%{public}@ followUp:%{public}@ %{public}@", buf, 0x20u);
  }

  v24 = messageCopy;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  [messageChangeManager applyFollowUp:v19 toMessages:v22];

LABEL_16:
  v23 = *MEMORY[0x1E69E9840];
}

- (id)_htmlBodyForMessage:(id)message
{
  v21 = *MEMORY[0x1E69E9840];
  messageBodyIfAvailable = [message messageBodyIfAvailable];
  htmlContent = [messageBodyIfAvailable htmlContent];
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = htmlContent;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          htmlData = [v9 htmlData];
          preferredCharacterSet = [v9 preferredCharacterSet];
          MFEncodingForCharset();
          v12 = MFCreateStringWithData();

          [v4 appendString:v12];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

@end