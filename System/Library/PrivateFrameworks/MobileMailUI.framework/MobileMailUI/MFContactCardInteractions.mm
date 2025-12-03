@interface MFContactCardInteractions
+ (id)contactCardInteractionWithViewController:(id)controller blockedSenderManager:(id)manager;
+ (id)log;
- (CNContactViewController)contactViewController;
- (MFContactCardInteractionDelegate)delegate;
- (MFContactCardInteractions)initWithViewController:(id)controller blockedSenderManager:(id)manager;
- (id)contact;
- (void)_addVIP:(id)p;
- (void)_removeVIP:(id)p;
- (void)_startSearch:(id)search;
- (void)_unblockContact:(id)contact;
- (void)_updateBlockContactCardButtonForViewController:(id)controller;
- (void)_updateContactCardButtonsForViewController:(id)controller;
- (void)_updateSearchContactCardButtonForViewController:(id)controller;
- (void)_updateVIPContactCardButtonForViewController:(id)controller;
- (void)configureInteractionsWithInteractionDelegate:(id)delegate;
@end

@implementation MFContactCardInteractions

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MFContactCardInteractions_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (id)contactCardInteractionWithViewController:(id)controller blockedSenderManager:(id)manager
{
  controllerCopy = controller;
  managerCopy = manager;
  v8 = [[self alloc] initWithViewController:controllerCopy blockedSenderManager:managerCopy];

  return v8;
}

- (MFContactCardInteractions)initWithViewController:(id)controller blockedSenderManager:(id)manager
{
  controllerCopy = controller;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = MFContactCardInteractions;
  v8 = [(MFContactCardInteractions *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_contactViewController, controllerCopy);
    v10 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.email.MFContactCardInteractions.workerScheduler" qualityOfService:17];
    workerScheduler = v9->_workerScheduler;
    v9->_workerScheduler = v10;

    objc_storeStrong(&v9->_blockedSenderManager, manager);
  }

  return v9;
}

- (id)contact
{
  contactViewController = [(MFContactCardInteractions *)self contactViewController];
  contact = [contactViewController contact];

  return contact;
}

- (void)configureInteractionsWithInteractionDelegate:(id)delegate
{
  delegateCopy = delegate;
  contact = [(MFContactCardInteractions *)self contact];
  [(MFContactCardInteractions *)self setDelegate:delegateCopy];
  emailAddresses = [contact emailAddresses];
  v6 = [emailAddresses ef_map:&__block_literal_global_2];

  if ([v6 count])
  {
    v7 = objc_alloc_init(MEMORY[0x277D06F18]);
    [(MFContactCardInteractions *)self setEmailAddressSet:v7];

    emailAddressSet = [(MFContactCardInteractions *)self emailAddressSet];
    [emailAddressSet addObjectsFromArray:v6];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [MEMORY[0x277CBDA78] stringFromContact:contact style:0];
    [(MFContactCardInteractions *)self setDisplayName:v10];

    displayName = [(MFContactCardInteractions *)self displayName];

    if (displayName)
    {
      displayName2 = [(MFContactCardInteractions *)self displayName];
      [v9 addObject:displayName2];
    }

    contactViewController = [(MFContactCardInteractions *)self contactViewController];
    v14 = +[VIPManager defaultInstance];
    emailAddressSet2 = [(MFContactCardInteractions *)self emailAddressSet];
    v16 = [v14 vipForEmailAddresses:emailAddressSet2 andDisplayNames:v9];
    [(MFContactCardInteractions *)self setCurrentVIP:v16];

    blockedSenderManager = [(MFContactCardInteractions *)self blockedSenderManager];
    contact2 = [contactViewController contact];
    -[MFContactCardInteractions setIsBlocked:](self, "setIsBlocked:", [blockedSenderManager isContactBlocked:contact2]);

    [(MFContactCardInteractions *)self _updateContactCardButtonsForViewController:contactViewController];
  }
}

id __74__MFContactCardInteractions_configureInteractionsWithInteractionDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];

  return v2;
}

- (void)_updateContactCardButtonsForViewController:(id)controller
{
  controllerCopy = controller;
  [(MFContactCardInteractions *)self _updateVIPContactCardButtonForViewController:?];
  [(MFContactCardInteractions *)self _updateBlockContactCardButtonForViewController:controllerCopy];
  delegate = [(MFContactCardInteractions *)self delegate];
  v5 = [delegate canSearchForContactFromContactCardInteractions:self];

  if (v5)
  {
    [(MFContactCardInteractions *)self _updateSearchContactCardButtonForViewController:controllerCopy];
  }
}

- (void)_updateSearchContactCardButtonForViewController:(id)controller
{
  contentViewController = [controller contentViewController];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"SEARCH_MAIL_FOR_CONTACT_ADDRESSES" value:&stru_2826D1AD8 table:@"Main"];

  cardBottomGroup = [contentViewController cardBottomGroup];
  [contentViewController addActionWithTitle:v5 target:self selector:sel__startSearch_ inGroup:cardBottomGroup destructive:0];
}

- (void)_startSearch:(id)search
{
  displayName = [(MFContactCardInteractions *)self displayName];
  v5 = displayName;
  if (displayName)
  {
    v11 = displayName;
  }

  else
  {
    emailAddressSet = [(MFContactCardInteractions *)self emailAddressSet];
    allObjects = [emailAddressSet allObjects];
    firstObject = [allObjects firstObject];

    v11 = firstObject;
  }

  delegate = [(MFContactCardInteractions *)self delegate];
  emailAddressSet2 = [(MFContactCardInteractions *)self emailAddressSet];
  allObjects2 = [emailAddressSet2 allObjects];
  [delegate contactCardInteractions:self triggerSearchForDisplayName:v11 emailAddresses:allObjects2];
}

- (void)_removeVIP:(id)p
{
  v6 = +[VIPManager defaultInstance];
  currentVIP = [(MFContactCardInteractions *)self currentVIP];
  identifier = [currentVIP identifier];
  [v6 deleteVIPWithIdentifier:identifier];

  [(MFContactCardInteractions *)self setCurrentVIP:0];
  contactViewController = [(MFContactCardInteractions *)self contactViewController];
  [(MFContactCardInteractions *)self _updateContactCardButtonsForViewController:?];
}

- (void)_addVIP:(id)p
{
  v4 = objc_alloc(MEMORY[0x277D06EE0]);
  displayName = [(MFContactCardInteractions *)self displayName];
  emailAddressSet = [(MFContactCardInteractions *)self emailAddressSet];
  v10 = [v4 initWithIdentifier:0 name:displayName emailAddresses:emailAddressSet];

  [(MFContactCardInteractions *)self setCurrentVIP:v10];
  v7 = +[VIPManager defaultInstance];
  currentVIP = [(MFContactCardInteractions *)self currentVIP];
  [v7 saveVIP:currentVIP];

  contactViewController = [(MFContactCardInteractions *)self contactViewController];
  [(MFContactCardInteractions *)self _updateContactCardButtonsForViewController:contactViewController];
}

- (void)_updateVIPContactCardButtonForViewController:(id)controller
{
  contentViewController = [controller contentViewController];
  cardBottomGroup = [contentViewController cardBottomGroup];
  v6 = sel__removeVIP_;
  [contentViewController removeActionWithTarget:self selector:sel__removeVIP_ inGroup:cardBottomGroup];

  cardBottomGroup2 = [contentViewController cardBottomGroup];
  [contentViewController removeActionWithTarget:self selector:sel__addVIP_ inGroup:cardBottomGroup2];

  if ([(MFContactCardInteractions *)self isBlocked]&& ([(MFContactCardInteractions *)self currentVIP], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v13 = 0;
  }

  else
  {
    currentVIP = [(MFContactCardInteractions *)self currentVIP];

    [MEMORY[0x277CCA8D8] mainBundle];
    if (currentVIP)
      v10 = {;
      v13 = [v10 localizedStringForKey:@"REMOVE_VIP" value:&stru_2826D1AD8 table:@"Main"];
    }

    else
      v10 = {;
      v13 = [v10 localizedStringForKey:@"ADD_VIP" value:&stru_2826D1AD8 table:@"Main"];
      v6 = sel__addVIP_;
    }

    cardBottomGroup3 = [contentViewController cardBottomGroup];
    [contentViewController addActionWithTitle:v13 target:self selector:v6 inGroup:cardBottomGroup3 destructive:0];

    currentVIP2 = [(MFContactCardInteractions *)self currentVIP];

    if ((currentVIP2 != 0) != [contentViewController isMailVIP])
    {
      [contentViewController setIsMailVIP:currentVIP2 != 0];
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

- (void)_unblockContact:(id)contact
{
  contactViewController = [(MFContactCardInteractions *)self contactViewController];
  workerScheduler = self->_workerScheduler;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __45__MFContactCardInteractions__unblockContact___block_invoke;
  v10 = &unk_278181710;
  selfCopy = self;
  v6 = contactViewController;
  v12 = v6;
  [(EFScheduler *)workerScheduler performBlock:&v7];
  [(MFContactCardInteractions *)self setIsBlocked:0, v7, v8, v9, v10, selfCopy];
  [(MFContactCardInteractions *)self _updateContactCardButtonsForViewController:v6];
}

void __45__MFContactCardInteractions__unblockContact___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) blockedSenderManager];
  v2 = [*(a1 + 40) contact];
  [v3 unblockContact:v2];
}

- (void)_updateBlockContactCardButtonForViewController:(id)controller
{
  contentViewController = [controller contentViewController];
  cardBottomGroup = [contentViewController cardBottomGroup];
  v5 = sel__unblockContact_;
  [contentViewController removeActionWithTarget:self selector:sel__unblockContact_ inGroup:cardBottomGroup];

  cardBottomGroup2 = [contentViewController cardBottomGroup];
  [contentViewController removeActionWithTarget:self selector:sel__blockContact_ inGroup:cardBottomGroup2];

  currentVIP = [(MFContactCardInteractions *)self currentVIP];
  if (!currentVIP || (v8 = [(MFContactCardInteractions *)self isBlocked], currentVIP, v8))
  {
    if ([(MFContactCardInteractions *)self isBlocked])
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [mainBundle localizedStringForKey:@"UNBLOCK_CONTACT" value:&stru_2826D1AD8 table:@"Main"];
    }

    else
    {
      blockedSenderManager = [(MFContactCardInteractions *)self blockedSenderManager];
      isBlockedSenderEnabled = [blockedSenderManager isBlockedSenderEnabled];

      if (!isBlockedSenderEnabled)
      {
        goto LABEL_8;
      }

      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [mainBundle localizedStringForKey:@"BLOCK_CONTACT" value:&stru_2826D1AD8 table:@"Main"];
      v5 = sel__blockContact_;
    }

    cardBottomGroup3 = [contentViewController cardBottomGroup];
    [contentViewController addActionWithTitle:v10 target:self selector:v5 inGroup:cardBottomGroup3 destructive:0];
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