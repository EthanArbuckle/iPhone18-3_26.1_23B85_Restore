@interface MFContactCardInteractions
+ (id)contactCardInteractionWithViewController:(id)a3 blockedSenderManager:(id)a4;
+ (id)log;
- (CNContactViewController)contactViewController;
- (MFContactCardInteractionDelegate)delegate;
- (MFContactCardInteractions)initWithViewController:(id)a3 blockedSenderManager:(id)a4;
- (id)contact;
- (void)_addVIP:(id)a3;
- (void)_removeVIP:(id)a3;
- (void)_startSearch:(id)a3;
- (void)_unblockContact:(id)a3;
- (void)_updateBlockContactCardButtonForViewController:(id)a3;
- (void)_updateContactCardButtonsForViewController:(id)a3;
- (void)_updateSearchContactCardButtonForViewController:(id)a3;
- (void)_updateVIPContactCardButtonForViewController:(id)a3;
- (void)configureInteractionsWithInteractionDelegate:(id)a3;
@end

@implementation MFContactCardInteractions

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MFContactCardInteractions_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_3 != -1)
  {
    dispatch_once(&log_onceToken_3, block);
  }

  v2 = log_log_3;

  return v2;
}

void __32__MFContactCardInteractions_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_3;
  log_log_3 = v1;
}

+ (id)contactCardInteractionWithViewController:(id)a3 blockedSenderManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initWithViewController:v6 blockedSenderManager:v7];

  return v8;
}

- (MFContactCardInteractions)initWithViewController:(id)a3 blockedSenderManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MFContactCardInteractions;
  v8 = [(MFContactCardInteractions *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_contactViewController, v6);
    v10 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.email.MFContactCardInteractions.workerScheduler" qualityOfService:17];
    workerScheduler = v9->_workerScheduler;
    v9->_workerScheduler = v10;

    objc_storeStrong(&v9->_blockedSenderManager, a4);
  }

  return v9;
}

- (id)contact
{
  v2 = [(MFContactCardInteractions *)self contactViewController];
  v3 = [v2 contact];

  return v3;
}

- (void)configureInteractionsWithInteractionDelegate:(id)a3
{
  v19 = a3;
  v4 = [(MFContactCardInteractions *)self contact];
  [(MFContactCardInteractions *)self setDelegate:v19];
  v5 = [v4 emailAddresses];
  v6 = [v5 ef_map:&__block_literal_global_2];

  if ([v6 count])
  {
    v7 = objc_alloc_init(MEMORY[0x277D06F18]);
    [(MFContactCardInteractions *)self setEmailAddressSet:v7];

    v8 = [(MFContactCardInteractions *)self emailAddressSet];
    [v8 addObjectsFromArray:v6];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [MEMORY[0x277CBDA78] stringFromContact:v4 style:0];
    [(MFContactCardInteractions *)self setDisplayName:v10];

    v11 = [(MFContactCardInteractions *)self displayName];

    if (v11)
    {
      v12 = [(MFContactCardInteractions *)self displayName];
      [v9 addObject:v12];
    }

    v13 = [(MFContactCardInteractions *)self contactViewController];
    v14 = +[VIPManager defaultInstance];
    v15 = [(MFContactCardInteractions *)self emailAddressSet];
    v16 = [v14 vipForEmailAddresses:v15 andDisplayNames:v9];
    [(MFContactCardInteractions *)self setCurrentVIP:v16];

    v17 = [(MFContactCardInteractions *)self blockedSenderManager];
    v18 = [v13 contact];
    -[MFContactCardInteractions setIsBlocked:](self, "setIsBlocked:", [v17 isContactBlocked:v18]);

    [(MFContactCardInteractions *)self _updateContactCardButtonsForViewController:v13];
  }
}

id __74__MFContactCardInteractions_configureInteractionsWithInteractionDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];

  return v2;
}

- (void)_updateContactCardButtonsForViewController:(id)a3
{
  v6 = a3;
  [(MFContactCardInteractions *)self _updateVIPContactCardButtonForViewController:?];
  [(MFContactCardInteractions *)self _updateBlockContactCardButtonForViewController:v6];
  v4 = [(MFContactCardInteractions *)self delegate];
  v5 = [v4 canSearchForContactFromContactCardInteractions:self];

  if (v5)
  {
    [(MFContactCardInteractions *)self _updateSearchContactCardButtonForViewController:v6];
  }
}

- (void)_updateSearchContactCardButtonForViewController:(id)a3
{
  v7 = [a3 contentViewController];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"SEARCH_MAIL_FOR_CONTACT_ADDRESSES" value:&stru_2826D1AD8 table:@"Main"];

  v6 = [v7 cardBottomGroup];
  [v7 addActionWithTitle:v5 target:self selector:sel__startSearch_ inGroup:v6 destructive:0];
}

- (void)_startSearch:(id)a3
{
  v4 = [(MFContactCardInteractions *)self displayName];
  v5 = v4;
  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v12 = [(MFContactCardInteractions *)self emailAddressSet];
    v6 = [v12 allObjects];
    v7 = [v6 firstObject];

    v11 = v7;
  }

  v8 = [(MFContactCardInteractions *)self delegate];
  v9 = [(MFContactCardInteractions *)self emailAddressSet];
  v10 = [v9 allObjects];
  [v8 contactCardInteractions:self triggerSearchForDisplayName:v11 emailAddresses:v10];
}

- (void)_removeVIP:(id)a3
{
  v6 = +[VIPManager defaultInstance];
  v4 = [(MFContactCardInteractions *)self currentVIP];
  v5 = [v4 identifier];
  [v6 deleteVIPWithIdentifier:v5];

  [(MFContactCardInteractions *)self setCurrentVIP:0];
  v7 = [(MFContactCardInteractions *)self contactViewController];
  [(MFContactCardInteractions *)self _updateContactCardButtonsForViewController:?];
}

- (void)_addVIP:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277D06EE0]);
  v5 = [(MFContactCardInteractions *)self displayName];
  v6 = [(MFContactCardInteractions *)self emailAddressSet];
  v10 = [v4 initWithIdentifier:0 name:v5 emailAddresses:v6];

  [(MFContactCardInteractions *)self setCurrentVIP:v10];
  v7 = +[VIPManager defaultInstance];
  v8 = [(MFContactCardInteractions *)self currentVIP];
  [v7 saveVIP:v8];

  v9 = [(MFContactCardInteractions *)self contactViewController];
  [(MFContactCardInteractions *)self _updateContactCardButtonsForViewController:v9];
}

- (void)_updateVIPContactCardButtonForViewController:(id)a3
{
  v4 = [a3 contentViewController];
  v5 = [v4 cardBottomGroup];
  v6 = sel__removeVIP_;
  [v4 removeActionWithTarget:self selector:sel__removeVIP_ inGroup:v5];

  v7 = [v4 cardBottomGroup];
  [v4 removeActionWithTarget:self selector:sel__addVIP_ inGroup:v7];

  if ([(MFContactCardInteractions *)self isBlocked]&& ([(MFContactCardInteractions *)self currentVIP], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v13 = 0;
  }

  else
  {
    v9 = [(MFContactCardInteractions *)self currentVIP];

    [MEMORY[0x277CCA8D8] mainBundle];
    if (v9)
      v10 = {;
      v13 = [v10 localizedStringForKey:@"REMOVE_VIP" value:&stru_2826D1AD8 table:@"Main"];
    }

    else
      v10 = {;
      v13 = [v10 localizedStringForKey:@"ADD_VIP" value:&stru_2826D1AD8 table:@"Main"];
      v6 = sel__addVIP_;
    }

    v11 = [v4 cardBottomGroup];
    [v4 addActionWithTitle:v13 target:self selector:v6 inGroup:v11 destructive:0];

    v12 = [(MFContactCardInteractions *)self currentVIP];

    if ((v12 != 0) != [v4 isMailVIP])
    {
      [v4 setIsMailVIP:v12 != 0];
    }
  }
}

void __43__MFContactCardInteractions__blockContact___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactViewController];
  v3 = +[_TtC12MobileMailUI25MFSafetyCheckWhenBlocking shared];
  v4 = [v2 contact];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__MFContactCardInteractions__blockContact___block_invoke_2;
  v11[3] = &unk_278181AB0;
  v5 = v2;
  v12 = v5;
  [v3 presentSafetyCheckIfNeededForContact:v4 completion:v11];

  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__MFContactCardInteractions__blockContact___block_invoke_4;
  v9[3] = &unk_278181710;
  v9[4] = v6;
  v8 = v5;
  v10 = v8;
  [v7 performBlock:v9];
  [*(a1 + 32) setIsBlocked:1];
  [*(a1 + 32) _updateContactCardButtonsForViewController:v8];
}

void __43__MFContactCardInteractions__blockContact___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__MFContactCardInteractions__blockContact___block_invoke_3;
    v5[3] = &unk_278181710;
    v6 = *(a1 + 32);
    v7 = v3;
    v4 = [MEMORY[0x277D071B8] mainThreadScheduler];
    [v4 performBlock:v5];
  }
}

void __43__MFContactCardInteractions__blockContact___block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) blockedSenderManager];
  v2 = [*(a1 + 40) contact];
  [v3 blockContact:v2];
}

- (void)_unblockContact:(id)a3
{
  v4 = [(MFContactCardInteractions *)self contactViewController];
  workerScheduler = self->_workerScheduler;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __45__MFContactCardInteractions__unblockContact___block_invoke;
  v10 = &unk_278181710;
  v11 = self;
  v6 = v4;
  v12 = v6;
  [(EFScheduler *)workerScheduler performBlock:&v7];
  [(MFContactCardInteractions *)self setIsBlocked:0, v7, v8, v9, v10, v11];
  [(MFContactCardInteractions *)self _updateContactCardButtonsForViewController:v6];
}

void __45__MFContactCardInteractions__unblockContact___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) blockedSenderManager];
  v2 = [*(a1 + 40) contact];
  [v3 unblockContact:v2];
}

- (void)_updateBlockContactCardButtonForViewController:(id)a3
{
  v14 = [a3 contentViewController];
  v4 = [v14 cardBottomGroup];
  v5 = sel__unblockContact_;
  [v14 removeActionWithTarget:self selector:sel__unblockContact_ inGroup:v4];

  v6 = [v14 cardBottomGroup];
  [v14 removeActionWithTarget:self selector:sel__blockContact_ inGroup:v6];

  v7 = [(MFContactCardInteractions *)self currentVIP];
  if (!v7 || (v8 = [(MFContactCardInteractions *)self isBlocked], v7, v8))
  {
    if ([(MFContactCardInteractions *)self isBlocked])
    {
      v9 = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [v9 localizedStringForKey:@"UNBLOCK_CONTACT" value:&stru_2826D1AD8 table:@"Main"];
    }

    else
    {
      v11 = [(MFContactCardInteractions *)self blockedSenderManager];
      v12 = [v11 isBlockedSenderEnabled];

      if (!v12)
      {
        goto LABEL_8;
      }

      v9 = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [v9 localizedStringForKey:@"BLOCK_CONTACT" value:&stru_2826D1AD8 table:@"Main"];
      v5 = sel__blockContact_;
    }

    v13 = [v14 cardBottomGroup];
    [v14 addActionWithTitle:v10 target:self selector:v5 inGroup:v13 destructive:0];
  }

LABEL_8:
}

- (CNContactViewController)contactViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_contactViewController);

  return WeakRetained;
}

- (MFContactCardInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end