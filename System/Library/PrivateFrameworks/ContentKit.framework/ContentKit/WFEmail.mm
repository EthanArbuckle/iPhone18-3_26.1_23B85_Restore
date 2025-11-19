@interface WFEmail
- (EMDaemonInterface)interface;
- (NSString)wfName;
- (WFEmail)initWithCoder:(id)a3;
- (WFEmail)initWithGlobalMessageID:(int64_t)a3 accountIdentifier:(id)a4 subject:(id)a5 sender:(id)a6 recipients:(id)a7;
- (WFEmail)initWithIdentifier:(id)a3 accountIdentifier:(id)a4 subject:(id)a5 sender:(id)a6 recipients:(id)a7;
- (void)encodeWithCoder:(id)a3;
- (void)fetchAttachmentsWithCompletionHandler:(id)a3;
- (void)fetchContentRepresentationWithCompletionHandler:(id)a3;
@end

@implementation WFEmail

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFEmail *)self subject];
  [v4 encodeObject:v5 forKey:@"subject"];

  v6 = [(WFEmail *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(WFEmail *)self accountIdentifier];
  [v4 encodeObject:v7 forKey:@"accountIdentifier"];

  v8 = [(WFEmail *)self sender];
  [v4 encodeObject:v8 forKey:@"sender"];

  v9 = [(WFEmail *)self recipients];
  [v4 encodeObject:v9 forKey:@"recipients"];
}

- (WFEmail)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFEmail *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
    subject = v5->_subject;
    v5->_subject = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
    sender = v5->_sender;
    v5->_sender = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v17;

    v19 = v5;
  }

  return v5;
}

- (NSString)wfName
{
  v3 = [(WFEmail *)self subject];
  if ([v3 length])
  {
    [(WFEmail *)self subject];
  }

  else
  {
    WFLocalizedStringWithKey(@"Name of email", @"Email");
  }
  v4 = ;

  return v4;
}

- (void)fetchContentRepresentationWithCompletionHandler:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFContentItemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = "[WFEmail fetchContentRepresentationWithCompletionHandler:]";
    _os_log_impl(&dword_21E1BD000, v5, OS_LOG_TYPE_DEBUG, "%s Fetching Message Content", buf, 0xCu);
  }

  v6 = [(WFEmail *)self interface];
  v7 = [v6 messageRepository];
  EMObjectIDClass = getEMObjectIDClass();
  v9 = [(WFEmail *)self identifier];
  v10 = [(objc_class *)EMObjectIDClass objectIDFromSerializedRepresentation:v9];

  v11 = [v7 messageForObjectID:v10];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__WFEmail_fetchContentRepresentationWithCompletionHandler___block_invoke;
  v16[3] = &unk_2783492D0;
  v12 = v4;
  v16[4] = self;
  v17 = v12;
  [v11 addSuccessBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__WFEmail_fetchContentRepresentationWithCompletionHandler___block_invoke_23;
  v14[3] = &unk_278349280;
  v15 = v12;
  v13 = v12;
  [v11 addFailureBlock:v14];
}

void __59__WFEmail_fetchContentRepresentationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  EMContentRequestOptionsClass = getEMContentRequestOptionsClass();
  v5 = getEMContentRepresentationTypeHTML();
  v6 = [(objc_class *)EMContentRequestOptionsClass optionsWithRequestedRepresentationType:v5 networkUsage:2];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__WFEmail_fetchContentRepresentationWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_2783492A8;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v7;
  v8 = [v3 requestRepresentationWithOptions:v6 completionHandler:v9];
}

void __59__WFEmail_fetchContentRepresentationWithCompletionHandler___block_invoke_23(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFContentItemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 localizedFailureReason];
    v6 = 136315394;
    v7 = "[WFEmail fetchContentRepresentationWithCompletionHandler:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_21E1BD000, v4, OS_LOG_TYPE_DEBUG, "%s Failure fetching message content: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __59__WFEmail_fetchContentRepresentationWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = getWFContentItemLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[WFEmail fetchContentRepresentationWithCompletionHandler:]_block_invoke_2";
    _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_DEBUG, "%s Received message content representation", &v13, 0xCu);
  }

  if (v5)
  {
    v8 = [*(a1 + 32) subject];
    if ([v8 length])
    {
      v9 = [*(a1 + 32) subject];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v5 contentURL];
    v11 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
    v12 = [WFFileRepresentation fileWithURL:v10 options:5 ofType:v11 proposedFilename:v9];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchAttachmentsWithCompletionHandler:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFContentItemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = "[WFEmail fetchAttachmentsWithCompletionHandler:]";
    _os_log_impl(&dword_21E1BD000, v5, OS_LOG_TYPE_DEBUG, "%s Fetching Message Attachments", buf, 0xCu);
  }

  v6 = [(WFEmail *)self interface];
  v7 = [v6 messageRepository];
  EMObjectIDClass = getEMObjectIDClass();
  v9 = [(WFEmail *)self identifier];
  v10 = [(objc_class *)EMObjectIDClass objectIDFromSerializedRepresentation:v9];

  v11 = [v7 messageForObjectID:v10];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__WFEmail_fetchAttachmentsWithCompletionHandler___block_invoke;
  v16[3] = &unk_278349258;
  v12 = v4;
  v17 = v12;
  [v11 addSuccessBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__WFEmail_fetchAttachmentsWithCompletionHandler___block_invoke_4;
  v14[3] = &unk_278349280;
  v15 = v12;
  v13 = v12;
  [v11 addFailureBlock:v14];
}

void __49__WFEmail_fetchAttachmentsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  EMContentRequestOptionsClass = getEMContentRequestOptionsClass();
  v5 = getEMContentRepresentationTypeHTML();
  v6 = [(objc_class *)EMContentRequestOptionsClass optionsWithRequestedRepresentationType:v5 networkUsage:2];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__WFEmail_fetchAttachmentsWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_278349230;
  v9 = *(a1 + 32);
  v7 = [v3 requestRepresentationWithOptions:v6 completionHandler:v8];
}

void __49__WFEmail_fetchAttachmentsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFContentItemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 localizedFailureReason];
    v6 = 136315394;
    v7 = "[WFEmail fetchAttachmentsWithCompletionHandler:]_block_invoke_4";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_21E1BD000, v4, OS_LOG_TYPE_DEBUG, "%s Failure fetching message attachments: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __49__WFEmail_fetchAttachmentsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = getWFContentItemLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[WFEmail fetchAttachmentsWithCompletionHandler:]_block_invoke_2";
    _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_DEBUG, "%s Recieved message content representation", buf, 0xCu);
  }

  if (v5)
  {
    v8 = [v5 relatedContentItems];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__WFEmail_fetchAttachmentsWithCompletionHandler___block_invoke_3;
    v9[3] = &unk_27834A430;
    v10 = *(a1 + 32);
    [v8 if_mapAsynchronously:&__block_literal_global_15_21899 completionHandler:v9];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __49__WFEmail_fetchAttachmentsWithCompletionHandler___block_invoke_12(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  EMContentRequestOptionsClass = getEMContentRequestOptionsClass();
  v8 = getEMContentRepresentationTypeRaw();
  v9 = [(objc_class *)EMContentRequestOptionsClass optionsWithRequestedRepresentationType:v8 networkUsage:2];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__WFEmail_fetchAttachmentsWithCompletionHandler___block_invoke_2_16;
  v12[3] = &unk_278349230;
  v13 = v6;
  v10 = v6;
  v11 = [v5 requestRepresentationWithOptions:v9 completionHandler:v12];
}

void __49__WFEmail_fetchAttachmentsWithCompletionHandler___block_invoke_2_16(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 contentURL];
    v5 = [WFFileRepresentation fileWithURL:v3 options:5 ofType:0];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (EMDaemonInterface)interface
{
  interface = self->_interface;
  if (!interface)
  {
    v4 = objc_alloc_init(getEMDaemonInterfaceClass());
    v5 = self->_interface;
    self->_interface = v4;

    interface = self->_interface;
  }

  return interface;
}

- (WFEmail)initWithIdentifier:(id)a3 accountIdentifier:(id)a4 subject:(id)a5 sender:(id)a6 recipients:(id)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!v14)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"WFEmail.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v32.receiver = self;
  v32.super_class = WFEmail;
  v19 = [(WFEmail *)&v32 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    v21 = [v15 copy];
    accountIdentifier = v20->_accountIdentifier;
    v20->_accountIdentifier = v21;

    v23 = [v16 copy];
    subject = v20->_subject;
    v20->_subject = v23;

    v25 = [WFEmailAddress addressWithEmailAddress:v17];
    sender = v20->_sender;
    v20->_sender = v25;

    v27 = [v18 if_compactMap:&__block_literal_global_21909];
    recipients = v20->_recipients;
    v20->_recipients = v27;

    v29 = v20;
  }

  return v20;
}

- (WFEmail)initWithGlobalMessageID:(int64_t)a3 accountIdentifier:(id)a4 subject:(id)a5 sender:(id)a6 recipients:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc(getEMMessageObjectIDClass());
  v18 = [(objc_class *)getEMMailboxScopeClass() allMailboxesScope];
  v19 = [v17 initWithGlobalMessageID:a3 mailboxScope:v18];

  v20 = [v19 serializedRepresentation];
  if (!v20)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"WFEmail.m" lineNumber:54 description:{@"Failed to encode identifier %lld (EMMessageObjectID %@)", a3, v19}];
  }

  v21 = [(WFEmail *)self initWithIdentifier:v20 accountIdentifier:v13 subject:v14 sender:v15 recipients:v16];

  return v21;
}

@end