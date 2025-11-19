@interface FLItemDetailViewModel
- (FLItemDetailViewModel)initWithIdentifier:(id)a3;
- (FLItemDetailViewModel)initWithItems:(id)a3;
- (id)allPendingItems;
- (void)setItemChangeHandler:(id)a3;
@end

@implementation FLItemDetailViewModel

- (FLItemDetailViewModel)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FLItemDetailViewModel;
  v5 = [(FLItemDetailViewModel *)&v9 init];
  if (v5)
  {
    v6 = [[FLFollowUpController alloc] initWithClientIdentifier:v4];
    controller = v5->_controller;
    v5->_controller = v6;
  }

  return v5;
}

- (FLItemDetailViewModel)initWithItems:(id)a3
{
  v5 = a3;
  v6 = [(FLItemDetailViewModel *)self initWithIdentifier:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalItems, a3);
    v8 = MEMORY[0x277CBEB98];
    v9 = [(NSArray *)v7->_originalItems fl_map:&__block_literal_global_10];
    v10 = [v8 setWithArray:v9];
    originalItemIdentifiers = v7->_originalItemIdentifiers;
    v7->_originalItemIdentifiers = v10;
  }

  return v7;
}

- (id)allPendingItems
{
  v3 = [(FLFollowUpController *)self->_controller pendingFollowUpItems:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__FLItemDetailViewModel_allPendingItems__block_invoke;
  v7[3] = &unk_278852D00;
  v7[4] = self;
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:v7];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

uint64_t __40__FLItemDetailViewModel_allPendingItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [a2 uniqueIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)setItemChangeHandler:(id)a3
{
  v4 = a3;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22E696000, v5, OS_LOG_TYPE_DEFAULT, "FLItemDetailViewModel: setItemChangeHandler", v8, 2u);
  }

  v6 = [FLItemChangeObserver observerWithChangeHandler:v4];

  observer = self->_observer;
  self->_observer = v6;
}

@end