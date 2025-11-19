@interface MUIMessageRepositoryCategoryProvider
- (MUIMessageRepositoryCategoryProvider)initWithMessageRepository:(id)a3;
- (void)categoryForContext:(id)a3 completionHandler:(id)a4;
@end

@implementation MUIMessageRepositoryCategoryProvider

- (MUIMessageRepositoryCategoryProvider)initWithMessageRepository:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUIMessageRepositoryCategoryProvider;
  v6 = [(MUIMessageRepositoryCategoryProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageRepository, a3);
  }

  return v7;
}

- (void)categoryForContext:(id)a3 completionHandler:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 emailAddress];
  v9 = MEMORY[0x277CCA920];
  v10 = [MEMORY[0x277D06E08] predicateForMessagesWithSender:v8];
  v24[0] = v10;
  v11 = [MEMORY[0x277D06E08] predicateForCategorizedMessages];
  v24[1] = v11;
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
  v17 = [(MUIMessageRepositoryCategoryProvider *)self messageRepository];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__MUIMessageRepositoryCategoryProvider_categoryForContext_completionHandler___block_invoke_2;
  v20[3] = &unk_27818A588;
  v21 = v6;
  v22 = v7;
  v18 = v6;
  v19 = v7;
  [v17 performQuery:v16 limit:1 completionHandler:v20];
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