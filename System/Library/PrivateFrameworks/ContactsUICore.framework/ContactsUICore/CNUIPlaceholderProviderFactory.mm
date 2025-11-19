@interface CNUIPlaceholderProviderFactory
- (CNUIPRLikenessProvider)loadingPlaceholderProvider;
- (CNUIPlaceholderProviderFactory)init;
- (id)loadingGroupPlaceholderProviderWithBackgroundStyle:(unint64_t)a3;
- (id)placeholderProviderForContact:(id)a3;
@end

@implementation CNUIPlaceholderProviderFactory

- (CNUIPlaceholderProviderFactory)init
{
  v9.receiver = self;
  v9.super_class = CNUIPlaceholderProviderFactory;
  v2 = [(CNUIPlaceholderProviderFactory *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6996818] synchronousSerialDispatchQueueWithName:@"com.apple.contacts.ContactsUICore.CNUIPlaceholderProviderFactory"];
    resourceLock = v2->_resourceLock;
    v2->_resourceLock = v3;

    v5 = [MEMORY[0x1E6996818] synchronousSerialDispatchQueueWithName:@"com.apple.contacts.ContactsUICore.CNUIPlaceholderProviderFactory.HighPriority"];
    highPriorityLock = v2->_highPriorityLock;
    v2->_highPriorityLock = v5;

    v7 = v2;
  }

  return v2;
}

- (CNUIPRLikenessProvider)loadingPlaceholderProvider
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  v3 = [(CNUIPlaceholderProviderFactory *)self highPriorityLock];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__CNUIPlaceholderProviderFactory_loadingPlaceholderProvider__block_invoke;
  v6[3] = &unk_1E76E80A0;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __60__CNUIPlaceholderProviderFactory_loadingPlaceholderProvider__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = objc_alloc_init(CNUIPRLikenessLoadingPlaceholderProvider);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (id)placeholderProviderForContact:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  v5 = [(CNUIPlaceholderProviderFactory *)self resourceLock];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__CNUIPlaceholderProviderFactory_placeholderProviderForContact___block_invoke;
  v9[3] = &unk_1E76E8A48;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  [v5 performBlock:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __64__CNUIPlaceholderProviderFactory_placeholderProviderForContact___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isKeyAvailable:*MEMORY[0x1E695C410]] && objc_msgSend(*(a1 + 32), "contactType") == 1)
  {
    v2 = (a1 + 40);
    v3 = *(*(a1 + 40) + 16);
    if (v3)
    {
      goto LABEL_8;
    }

    v4 = [[CNUIPRLikenessPlaceholderProvider alloc] initWithContact:*(a1 + 32)];
    v5 = 16;
  }

  else
  {
    v2 = (a1 + 40);
    v3 = *(*(a1 + 40) + 8);
    if (v3)
    {
      goto LABEL_8;
    }

    v4 = objc_alloc_init(CNUIPRLikenessPlaceholderProvider);
    v5 = 8;
  }

  v6 = *(*v2 + v5);
  *(*v2 + v5) = v4;

  v3 = *(*v2 + v5);
LABEL_8:
  v7 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v7, v3);
}

- (id)loadingGroupPlaceholderProviderWithBackgroundStyle:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  v5 = [(CNUIPlaceholderProviderFactory *)self highPriorityLock];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__CNUIPlaceholderProviderFactory_loadingGroupPlaceholderProviderWithBackgroundStyle___block_invoke;
  v8[3] = &unk_1E76EA440;
  v8[5] = &v9;
  v8[6] = a3;
  v8[4] = self;
  [v5 performBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __85__CNUIPlaceholderProviderFactory_loadingGroupPlaceholderProviderWithBackgroundStyle___block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  if (!v2)
  {
    v3 = [[CNUIPRLikenessLoadingGroupPlaceholderProvider alloc] initWithBackgroundStyle:a1[6]];
    v4 = a1[4];
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(a1[4] + 32);
  }

  v6 = (*(a1[5] + 8) + 40);

  objc_storeStrong(v6, v2);
}

@end