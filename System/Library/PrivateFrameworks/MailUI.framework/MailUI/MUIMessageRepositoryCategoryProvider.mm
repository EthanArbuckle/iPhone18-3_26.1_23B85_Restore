@interface MUIMessageRepositoryCategoryProvider
- (MUIMessageRepositoryCategoryProvider)initWithMessageRepository:(id)repository;
- (void)categoryForContext:(id)context completionHandler:(id)handler;
@end

@implementation MUIMessageRepositoryCategoryProvider

- (MUIMessageRepositoryCategoryProvider)initWithMessageRepository:(id)repository
{
  repositoryCopy = repository;
  v9.receiver = self;
  v9.super_class = MUIMessageRepositoryCategoryProvider;
  v6 = [(MUIMessageRepositoryCategoryProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageRepository, repository);
  }

  return v7;
}

- (void)categoryForContext:(id)context completionHandler:(id)handler
{
  v24[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  emailAddress = [contextCopy emailAddress];
  v9 = MEMORY[0x277CCA920];
  v10 = [MEMORY[0x277D06E08] predicateForMessagesWithSender:emailAddress];
  v24[0] = v10;
  predicateForCategorizedMessages = [MEMORY[0x277D06E08] predicateForCategorizedMessages];
  v24[1] = predicateForCategorizedMessages;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v13 = [v9 andPredicateWithSubpredicates:v12];

  v14 = objc_alloc(MEMORY[0x277D06E80]);
  v15 = objc_opt_class();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __77__MUIMessageRepositoryCategoryProvider_categoryForContext_completionHandler___block_invoke;
  v23[3] = &__block_descriptor_40_e26_v16__0___EMQueryBuilder__8l;
  v23[4] = 1;
  v16 = [v14 initWithTargetClass:v15 predicate:v13 sortDescriptors:MEMORY[0x277CBEBF8] builder:v23];
  messageRepository = [(MUIMessageRepositoryCategoryProvider *)self messageRepository];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__MUIMessageRepositoryCategoryProvider_categoryForContext_completionHandler___block_invoke_2;
  v20[3] = &unk_27818A588;
  v21 = contextCopy;
  v22 = handlerCopy;
  v18 = contextCopy;
  v19 = handlerCopy;
  [messageRepository performQuery:v16 limit:1 completionHandler:v20];
}

void __77__MUIMessageRepositoryCategoryProvider_categoryForContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setLimit:v2];
  [v3 setLabel:@"Avatar matching sender message"];
}

void __77__MUIMessageRepositoryCategoryProvider_categoryForContext_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([v12 ef_isEmpty])
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) category];
    v8 = *(v6 + 16);
    v9 = v6;
LABEL_5:
    v8(v9, v7, 0);
    goto LABEL_6;
  }

  if ([v12 count])
  {
    v10 = [v12 firstObject];
    v7 = [v10 category];

    v9 = *(a1 + 40);
    v8 = *(v9 + 16);
    goto LABEL_5;
  }

  v11 = *(a1 + 40);
  v7 = [*(a1 + 32) category];
  (*(v11 + 16))(v11, v7, v5);
LABEL_6:
}

@end