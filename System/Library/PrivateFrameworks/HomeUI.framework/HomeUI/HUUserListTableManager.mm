@interface HUUserListTableManager
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (HUUserListManagerTableDelegate)delegate;
- (HUUserListTableManager)initWithTableView:(id)view viewController:(id)controller;
- (UIViewController)viewController;
- (id)_contactForUser:(id)user;
- (id)_displayNameForUser:(id)user;
- (id)_monogramForUser:(id)user;
- (id)_personViewControllerForUser:(id)user invitation:(id)invitation;
- (id)_stringForInvitationState:(int64_t)state;
- (id)sortedInvitations;
- (id)sortedUsers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfDataRows;
- (void)_configurePersonViewController:(id)controller invitation:(id)invitation isRemovable:(BOOL)removable;
- (void)_didAddUser:(id)user;
- (void)_didInsertAtIndex:(unint64_t)index;
- (void)_didReloadAtIndex:(unint64_t)index;
- (void)_didRemoveAtIndex:(unint64_t)index;
- (void)_didRemoveInvitation:(id)invitation;
- (void)_didRemoveUser:(id)user;
- (void)_reinvite;
- (void)_removeInvitation:(id)invitation completion:(id)completion;
- (void)_removeUser:(id)user completion:(id)completion;
- (void)_stopSharingWithCompletion:(id)completion;
- (void)addPeopleViewController:(id)controller didSendInvitations:(id)invitations;
- (void)addPeopleViewControllerDidCancel:(id)cancel;
- (void)home:(id)home didAddUser:(id)user;
- (void)home:(id)home didRemoveUser:(id)user;
- (void)home:(id)home didUpdateStateForOutgoingInvitations:(id)invitations;
- (void)setEditing:(BOOL)editing;
- (void)setHome:(id)home;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateEditingRows;
@end

@implementation HUUserListTableManager

- (HUUserListTableManager)initWithTableView:(id)view viewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = HUUserListTableManager;
  v9 = [(HUUserListTableManager *)&v22 init];
  v10 = v9;
  if (v9)
  {
    v9->_allowsEditing = 0;
    v11 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    contactStore = v10->_contactStore;
    v10->_contactStore = v11;

    objc_storeWeak(&v10->_viewController, controllerCopy);
    objc_storeStrong(&v10->_tableView, view);
    tableView = v10->_tableView;
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [(UITableView *)tableView registerClass:v14 forCellReuseIdentifier:v16];

    v17 = v10->_tableView;
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [(UITableView *)v17 registerClass:v18 forCellReuseIdentifier:v20];

    [(UITableView *)v10->_tableView setDelegate:v10];
    [(UITableView *)v10->_tableView setDataSource:v10];
  }

  return v10;
}

- (void)setHome:(id)home
{
  v35 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  if (self->_home == homeCopy)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "[HUUserListTableManager setHome:]";
      v23 = 2112;
      v24 = homeCopy;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%s Skipping since same as previous home %@", &v21, 0x16u);
    }
  }

  else
  {
    objc_storeStrong(&self->_home, home);
    sortedUsers = [(HUUserListTableManager *)self sortedUsers];
    [(HUUserListTableManager *)self setUsers:sortedUsers];

    sortedInvitations = [(HUUserListTableManager *)self sortedInvitations];
    [(HUUserListTableManager *)self setInvitations:sortedInvitations];

    home = [(HUUserListTableManager *)self home];
    [home setDelegate:self];

    home2 = [(HUUserListTableManager *)self home];
    home3 = [(HUUserListTableManager *)self home];
    currentUser = [home3 currentUser];
    v12 = [home2 homeAccessControlForUser:currentUser];
    -[HUUserListTableManager setAllowsEditing:](self, "setAllowsEditing:", [v12 isAdministrator]);

    tableView = [(HUUserListTableManager *)self tableView];
    [tableView reloadData];

    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      users = [(HUUserListTableManager *)self users];
      v16 = [users count];
      users2 = [(HUUserListTableManager *)self users];
      invitations = [(HUUserListTableManager *)self invitations];
      v19 = [invitations count];
      invitations2 = [(HUUserListTableManager *)self invitations];
      v21 = 136316674;
      v22 = "[HUUserListTableManager setHome:]";
      v23 = 2112;
      v24 = homeCopy;
      v25 = 2048;
      v26 = v16;
      v27 = 2112;
      v28 = users2;
      v29 = 2048;
      v30 = v19;
      v31 = 2112;
      v32 = invitations2;
      v33 = 1024;
      allowsEditing = [(HUUserListTableManager *)self allowsEditing];
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%s Updating to new home %@. users (%ld) %@. invitations (%ld) %@. allowsEditing %{BOOL}d", &v21, 0x44u);
    }
  }
}

- (id)sortedUsers
{
  home = [(HUUserListTableManager *)self home];
  users = [home users];
  v4 = [users mutableCopy];

  [v4 sortUsingComparator:&__block_literal_global_107];

  return v4;
}

uint64_t __37__HUUserListTableManager_sortedUsers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (id)sortedInvitations
{
  home = [(HUUserListTableManager *)self home];
  outgoingInvitations = [home outgoingInvitations];
  v4 = [outgoingInvitations mutableCopy];

  [v4 sortUsingComparator:&__block_literal_global_5_0];

  return v4;
}

uint64_t __43__HUUserListTableManager_sortedInvitations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 invitee];
  v6 = [v5 name];
  v7 = [v4 invitee];

  v8 = [v7 name];
  v9 = [v6 localizedStandardCompare:v8];

  return v9;
}

- (void)_reinvite
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__HUUserListTableManager__reinvite__block_invoke;
  v2[3] = &unk_277DBCE60;
  v2[4] = self;
  [(HUUserListTableManager *)self _stopSharingWithCompletion:v2];
}

void __35__HUUserListTableManager__reinvite__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v4 = MEMORY[0x277CD1EF8];
    v5 = a2;
    v6 = [[v4 alloc] initWithUser:v5 administrator:0 remoteAccess:1];

    v7 = [*(a1 + 32) home];
    v10[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__HUUserListTableManager__reinvite__block_invoke_2;
    v9[3] = &unk_277DB7628;
    v9[4] = *(a1 + 32);
    [v7 inviteUsersWithInviteInformation:v8 completionHandler:v9];
  }
}

void __35__HUUserListTableManager__reinvite__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 home];
  [v3 home:v5 didUpdateStateForOutgoingInvitations:v4];

  v6 = [*(a1 + 32) delegate];
  [v6 managerDidSendInvitations:v4];
}

- (void)_stopSharingWithCompletion:(id)completion
{
  completionCopy = completion;
  selectedIndexPath = [(HUUserListTableManager *)self selectedIndexPath];

  if (selectedIndexPath)
  {
    selectedIndexPath2 = [(HUUserListTableManager *)self selectedIndexPath];
    v7 = [selectedIndexPath2 row];
    users = [(HUUserListTableManager *)self users];
    v9 = [users count];

    if (v7 >= v9)
    {
      invitations = [(HUUserListTableManager *)self invitations];
      selectedIndexPath3 = [(HUUserListTableManager *)self selectedIndexPath];
      v18 = [selectedIndexPath3 row];
      users2 = [(HUUserListTableManager *)self users];
      v20 = [invitations objectAtIndexedSubscript:{v18 - objc_msgSend(users2, "count")}];

      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __53__HUUserListTableManager__stopSharingWithCompletion___block_invoke_2;
      v27 = &unk_277DBCE88;
      v13 = &v29;
      v14 = &v28;
      v28 = v20;
      v29 = completionCopy;
      v15 = v20;
      [(HUUserListTableManager *)self _removeInvitation:v15 completion:&v24];
    }

    else
    {
      users3 = [(HUUserListTableManager *)self users];
      selectedIndexPath4 = [(HUUserListTableManager *)self selectedIndexPath];
      v12 = [users3 objectAtIndexedSubscript:{objc_msgSend(selectedIndexPath4, "row")}];

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __53__HUUserListTableManager__stopSharingWithCompletion___block_invoke;
      v30[3] = &unk_277DBCE88;
      v13 = &v32;
      v14 = &v31;
      v31 = v12;
      v32 = completionCopy;
      v15 = v12;
      [(HUUserListTableManager *)self _removeUser:v15 completion:v30];
    }

    [(HUUserListTableManager *)self setSelectedIndexPath:0];
  }

  v21 = [(HUUserListTableManager *)self viewController:v24];
  navigationController = [v21 navigationController];
  v23 = [navigationController popViewControllerAnimated:1];
}

void __53__HUUserListTableManager__stopSharingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 userID];
    (*(v2 + 16))(v2, v5, v4);
  }
}

void __53__HUUserListTableManager__stopSharingWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v6 = [v3 invitee];
    v5 = [v6 userID];
    (*(v2 + 16))(v2, v5, v4);
  }
}

- (void)_removeUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  [(HUUserListTableManager *)self _didRemoveUser:userCopy];
  home = [(HUUserListTableManager *)self home];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__HUUserListTableManager__removeUser_completion___block_invoke;
  v11[3] = &unk_277DBCEB0;
  v11[4] = self;
  v12 = userCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = userCopy;
  [home removeUserWithoutConfirmation:v10 completionHandler:v11];
}

void __49__HUUserListTableManager__removeUser_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  if (v3)
  {
    [v4 _didAddUser:*(a1 + 40)];
  }

  else
  {
    v7 = [v4 delegate];
    if (v7)
    {
      v8 = v7;
      v9 = [*(a1 + 32) delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [*(a1 + 32) delegate];
        [v11 managerDidRemoveUser:*(a1 + 40) error:0];
      }
    }
  }

  v5 = *(a1 + 48);
  v6 = v12;
  if (v5)
  {
    (*(v5 + 16))(v5, v12);
    v6 = v12;
  }
}

- (void)_removeInvitation:(id)invitation completion:(id)completion
{
  invitationCopy = invitation;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__HUUserListTableManager__removeInvitation_completion___block_invoke;
  v10[3] = &unk_277DBCEB0;
  v10[4] = self;
  v11 = invitationCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = invitationCopy;
  [v9 cancelInviteWithCompletionHandler:v10];
}

void __55__HUUserListTableManager__removeInvitation_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!v10)
  {
    [*(a1 + 32) _didRemoveInvitation:*(a1 + 40)];
  }

  v3 = [*(a1 + 32) delegate];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) delegate];
      [v7 managerDidCancelInvite:*(a1 + 40) error:v10];
    }
  }

  v8 = *(a1 + 48);
  v9 = v10;
  if (v8)
  {
    (*(v8 + 16))(v8, v10);
    v9 = v10;
  }
}

- (void)_didAddUser:(id)user
{
  userCopy = user;
  users = [(HUUserListTableManager *)self users];
  v5 = [users indexOfObject:userCopy];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    users2 = [(HUUserListTableManager *)self users];
    v7 = [users2 mutableCopy];

    [v7 addObject:userCopy];
    [v7 sortUsingComparator:&__block_literal_global_16_1];
    [(HUUserListTableManager *)self setUsers:v7];
    users3 = [(HUUserListTableManager *)self users];
    v9 = [users3 indexOfObject:userCopy];

    [(HUUserListTableManager *)self _didInsertAtIndex:v9];
  }
}

uint64_t __38__HUUserListTableManager__didAddUser___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (void)_didRemoveUser:(id)user
{
  userCopy = user;
  users = [(HUUserListTableManager *)self users];
  v5 = [users indexOfObject:userCopy];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    users2 = [(HUUserListTableManager *)self users];
    v7 = [users2 mutableCopy];

    [v7 removeObject:userCopy];
    [(HUUserListTableManager *)self setUsers:v7];
    [(HUUserListTableManager *)self _didRemoveAtIndex:v5];
  }
}

- (void)_didRemoveInvitation:(id)invitation
{
  invitationCopy = invitation;
  invitations = [(HUUserListTableManager *)self invitations];
  v5 = [invitations indexOfObject:invitationCopy];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    invitations2 = [(HUUserListTableManager *)self invitations];
    v7 = [invitations2 mutableCopy];

    [v7 removeObject:invitationCopy];
    [(HUUserListTableManager *)self setInvitations:v7];
    users = [(HUUserListTableManager *)self users];
    v9 = [users count];

    [(HUUserListTableManager *)self _didRemoveAtIndex:v9 + v5];
  }
}

- (void)_didInsertAtIndex:(unint64_t)index
{
  v8[1] = *MEMORY[0x277D85DE8];
  tableView = [(HUUserListTableManager *)self tableView];
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:index inSection:{-[HUUserListTableManager sectionForPeople](self, "sectionForPeople")}];
  v8[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [tableView insertRowsAtIndexPaths:v7 withRowAnimation:100];
}

- (void)_didRemoveAtIndex:(unint64_t)index
{
  v8[1] = *MEMORY[0x277D85DE8];
  tableView = [(HUUserListTableManager *)self tableView];
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:index inSection:{-[HUUserListTableManager sectionForPeople](self, "sectionForPeople")}];
  v8[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [tableView deleteRowsAtIndexPaths:v7 withRowAnimation:100];
}

- (void)_didReloadAtIndex:(unint64_t)index
{
  v8[1] = *MEMORY[0x277D85DE8];
  tableView = [(HUUserListTableManager *)self tableView];
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:index inSection:{-[HUUserListTableManager sectionForPeople](self, "sectionForPeople")}];
  v8[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [tableView reloadRowsAtIndexPaths:v7 withRowAnimation:100];
}

- (id)_contactForUser:(id)user
{
  v35[5] = *MEMORY[0x277D85DE8];
  userCopy = user;
  userID = [userCopy userID];

  if (userID)
  {
    v6 = objc_alloc(MEMORY[0x277CBDA70]);
    v7 = *MEMORY[0x277CBD000];
    v35[0] = *MEMORY[0x277CBCFC0];
    v35[1] = v7;
    v35[2] = *MEMORY[0x277CBCFF8];
    v8 = [MEMORY[0x277CBDC70] descriptorForRequiredKeysIncludingImage:1];
    v35[3] = v8;
    descriptorForRequiredKeys = [MEMORY[0x277CBDC48] descriptorForRequiredKeys];
    v35[4] = descriptorForRequiredKeys;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:5];
    v11 = [v6 initWithKeysToFetch:v10];

    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__12;
    v29 = __Block_byref_object_dispose__12;
    v30 = 0;
    contactStore = [(HUUserListTableManager *)self contactStore];
    v24 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __42__HUUserListTableManager__contactForUser___block_invoke;
    v21[3] = &unk_277DBCEF8;
    v13 = userCopy;
    v22 = v13;
    v23 = &v25;
    v14 = [contactStore enumerateContactsWithFetchRequest:v11 error:&v24 usingBlock:v21];
    v15 = v24;

    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        userID2 = [v13 userID];
        *buf = 138412546;
        v32 = v15;
        v33 = 2112;
        v34 = userID2;
        _os_log_error_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_ERROR, "Error %@ looking up user: %@", buf, 0x16u);
      }
    }

    v18 = v26[5];

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __42__HUUserListTableManager__contactForUser___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = [v10 emailAddresses];
  v7 = [v6 na_map:&__block_literal_global_23_0];

  v8 = [*(a1 + 32) userID];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)_displayNameForUser:(id)user
{
  userCopy = user;
  v5 = [(HUUserListTableManager *)self _contactForUser:userCopy];
  if (!v5 || ([MEMORY[0x277CBDA78] stringFromContact:v5 style:0], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    userID = [userCopy userID];
    if (userID)
    {
      [userCopy userID];
    }

    else
    {
      _HULocalizedStringWithDefaultValue(@"HUUserManagementUnknownUser", @"HUUserManagementUnknownUser", 1);
    }
    v6 = ;
  }

  return v6;
}

- (id)_stringForInvitationState:(int64_t)state
{
  if ((state - 1) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = HFLocalizedString();
  }

  return v4;
}

- (id)_monogramForUser:(id)user
{
  userCopy = user;
  if (!_monogramForUser__monogrammer)
  {
    v5 = [objc_alloc(MEMORY[0x277CBDC70]) initWithStyle:0 diameter:40.0];
    v6 = _monogramForUser__monogrammer;
    _monogramForUser__monogrammer = v5;
  }

  v7 = [(HUUserListTableManager *)self _contactForUser:userCopy];
  if (!v7 || ([_monogramForUser__monogrammer monogramForContact:v7], (silhouetteMonogram = objc_claimAutoreleasedReturnValue()) == 0))
  {
    silhouetteMonogram = [_monogramForUser__monogrammer silhouetteMonogram];
  }

  return silhouetteMonogram;
}

- (id)_personViewControllerForUser:(id)user invitation:(id)invitation
{
  v19[1] = *MEMORY[0x277D85DE8];
  userCopy = user;
  invitationCopy = invitation;
  v8 = [(HUUserListTableManager *)self _contactForUser:userCopy];
  if (v8)
  {
    userID = [MEMORY[0x277CBDC48] viewControllerForContact:v8];
    [userID setAllowsEditing:0];
    home = [(HUUserListTableManager *)self home];
    owner = [home owner];
    -[HUUserListTableManager _configurePersonViewController:invitation:isRemovable:](self, "_configurePersonViewController:invitation:isRemovable:", userID, invitationCopy, [owner isEqual:userCopy] ^ 1);
  }

  else
  {
    userID = [userCopy userID];

    if (!userID)
    {
      goto LABEL_6;
    }

    home = objc_alloc_init(MEMORY[0x277CBDB38]);
    v12 = MEMORY[0x277CBDB20];
    v13 = *MEMORY[0x277CBD8E0];
    userID2 = [userCopy userID];
    v15 = [v12 labeledValueWithLabel:v13 value:userID2];
    v19[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [home setEmailAddresses:v16];

    userID = [MEMORY[0x277CBDC48] viewControllerForUnknownContact:home];
    [userID setActions:{objc_msgSend(userID, "actions") & 0xFFFFFFFFFFFFFFDFLL}];
    owner = [(HUUserListTableManager *)self home];
    v11Owner = [owner owner];
    -[HUUserListTableManager _configurePersonViewController:invitation:isRemovable:](self, "_configurePersonViewController:invitation:isRemovable:", userID, invitationCopy, [v11Owner isEqual:userCopy] ^ 1);
  }

LABEL_6:

  return userID;
}

- (void)_configurePersonViewController:(id)controller invitation:(id)invitation isRemovable:(BOOL)removable
{
  removableCopy = removable;
  controllerCopy = controller;
  invitationCopy = invitation;
  [controllerCopy setAllowsActions:0];
  if ([(HUUserListTableManager *)self allowsEditing])
  {
    [controllerCopy setDisplayMode:2];
    contentViewController = [controllerCopy contentViewController];
    if (invitationCopy)
    {
      if ([invitationCopy invitationState] == 4 || objc_msgSend(invitationCopy, "invitationState") == 6)
      {
        v10 = _HULocalizedStringWithDefaultValue(@"HUUserManagementInviteAgain", @"HUUserManagementInviteAgain", 1);
        cardTopGroup = [contentViewController cardTopGroup];
        [contentViewController addActionWithTitle:v10 target:self selector:sel__reinvite inGroup:cardTopGroup destructive:1];
      }

      v12 = @"HUUserManagementCancelInvite";
    }

    else
    {
      if (!removableCopy)
      {
LABEL_10:

        goto LABEL_11;
      }

      v12 = @"HUUserManagementStopSharing";
    }

    v13 = _HULocalizedStringWithDefaultValue(v12, v12, 1);
    cardTopGroup2 = [contentViewController cardTopGroup];
    [contentViewController addActionWithTitle:v13 target:self selector:sel__stopSharing inGroup:cardTopGroup2 destructive:1];

    goto LABEL_10;
  }

LABEL_11:
}

- (void)addPeopleViewControllerDidCancel:(id)cancel
{
  delegate = [(HUUserListTableManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(HUUserListTableManager *)self delegate];
    [delegate2 managerDidDismissWithError:0];
  }
}

- (void)addPeopleViewController:(id)controller didSendInvitations:(id)invitations
{
  invitationsCopy = invitations;
  sortedInvitations = [(HUUserListTableManager *)self sortedInvitations];
  [(HUUserListTableManager *)self setInvitations:sortedInvitations];

  tableView = [(HUUserListTableManager *)self tableView];
  [tableView reloadData];

  viewController = [(HUUserListTableManager *)self viewController];
  navigationController = [viewController navigationController];
  v9 = [navigationController popViewControllerAnimated:1];

  delegate = [(HUUserListTableManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(HUUserListTableManager *)self delegate];
    [delegate2 managerDidSendInvitations:invitationsCopy];

    delegate3 = [(HUUserListTableManager *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate4 = [(HUUserListTableManager *)self delegate];
      [delegate4 managerDidUpdateUserList];
    }
  }
}

- (void)home:(id)home didAddUser:(id)user
{
  userCopy = user;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HUUserListTableManager_home_didAddUser___block_invoke;
  v7[3] = &unk_277DB7558;
  v7[4] = self;
  v8 = userCopy;
  v6 = userCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __42__HUUserListTableManager_home_didAddUser___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _didAddUser:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 managerDidUpdateUserList];
    }
  }
}

- (void)home:(id)home didRemoveUser:(id)user
{
  userCopy = user;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HUUserListTableManager_home_didRemoveUser___block_invoke;
  v7[3] = &unk_277DB7558;
  v7[4] = self;
  v8 = userCopy;
  v6 = userCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __45__HUUserListTableManager_home_didRemoveUser___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _didRemoveUser:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 managerDidUpdateUserList];
    }
  }
}

- (void)home:(id)home didUpdateStateForOutgoingInvitations:(id)invitations
{
  invitationsCopy = invitations;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HUUserListTableManager_home_didUpdateStateForOutgoingInvitations___block_invoke;
  v7[3] = &unk_277DB7558;
  v7[4] = self;
  v8 = invitationsCopy;
  v6 = invitationsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __68__HUUserListTableManager_home_didUpdateStateForOutgoingInvitations___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) invitations];
  v3 = [*(a1 + 32) sortedInvitations];
  [*(a1 + 32) setInvitations:v3];

  v4 = [*(a1 + 32) tableView];
  [v4 beginUpdates];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        v11 = [v2 indexOfObject:v10];
        v12 = [v10 invitationState];
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v12 != 2)
          {
            continue;
          }

          v13 = *(a1 + 32);
          v14 = [v13 invitations];
          v15 = [v14 indexOfObject:v10];
          [*(a1 + 32) users];
          v17 = v16 = v5;
          [v13 _didInsertAtIndex:{objc_msgSend(v17, "count") + v15}];

          v5 = v16;
        }

        else if (v12 == 3 || [v10 invitationState] == 1)
        {
          v18 = *(a1 + 32);
          v14 = [v18 users];
          [v18 _didRemoveAtIndex:{objc_msgSend(v14, "count") + v11}];
        }

        else
        {
          v19 = *(a1 + 32);
          v14 = [v19 users];
          [v19 _didReloadAtIndex:{objc_msgSend(v14, "count") + v11}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v7);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [*(a1 + 32) invitations];
  v20 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v36 + 1) + 8 * j);
        if ([v2 indexOfObject:v24] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = *(a1 + 32);
          v26 = [v25 invitations];
          v27 = [v26 indexOfObject:v24];
          v28 = [*(a1 + 32) users];
          [v25 _didInsertAtIndex:{objc_msgSend(v28, "count") + v27}];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v21);
  }

  v29 = [*(a1 + 32) tableView];
  [v29 endUpdates];

  v30 = [*(a1 + 32) delegate];
  if (v30)
  {
    v31 = v30;
    v32 = [*(a1 + 32) delegate];
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      v34 = [*(a1 + 32) delegate];
      [v34 managerDidUpdateUserList];
    }
  }
}

- (int64_t)numberOfDataRows
{
  users = [(HUUserListTableManager *)self users];
  v4 = [users count];
  invitations = [(HUUserListTableManager *)self invitations];
  v6 = [invitations count];

  return v6 + v4;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  if ([(HUUserListTableManager *)self _indexPathIsInviteUser:path])
  {
    return 0;
  }

  return [(HUUserListTableManager *)self allowsEditing];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [pathCopy row];
  users = [(HUUserListTableManager *)self users];
  v10 = [users count];
  invitations = [(HUUserListTableManager *)self invitations];
  v12 = [invitations count] + v10;

  if (v8 >= v12)
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v15 = [viewCopy dequeueReusableCellWithIdentifier:v22];

    v23 = _HULocalizedStringWithDefaultValue(@"HUUserManagementInvitePeopleButton", @"HUUserManagementInvitePeopleButton", 1);
    textLabel = [v15 textLabel];
    [textLabel setText:v23];

    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    textLabel2 = [v15 textLabel];
    [textLabel2 setTextColor:systemBlueColor];

    [v15 setUserInteractionEnabled:{-[HUUserListTableManager editing](self, "editing") ^ 1}];
    editing = [(HUUserListTableManager *)self editing];
    textLabel3 = [v15 textLabel];
    [textLabel3 setEnabled:!editing];

    detailTextLabel = [v15 detailTextLabel];
    [detailTextLabel setText:0];

    [v15 setAccessoryType:0];
  }

  else
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [viewCopy dequeueReusableCellWithIdentifier:v14];

    v16 = [pathCopy row];
    users2 = [(HUUserListTableManager *)self users];
    v18 = [users2 count];

    if (v16 >= v18)
    {
      v30 = [pathCopy row];
      users3 = [(HUUserListTableManager *)self users];
      v32 = v30 - [users3 count];

      invitations2 = [(HUUserListTableManager *)self invitations];
      v34 = [invitations2 objectAtIndexedSubscript:v32];

      invitee = [v34 invitee];
      v35 = -[HUUserListTableManager _stringForInvitationState:](self, "_stringForInvitationState:", [v34 invitationState]);
      [v15 setInvitationStatusString:v35];
    }

    else
    {
      users4 = [(HUUserListTableManager *)self users];
      invitee = [users4 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      [v15 setInvitationStatusString:0];
    }

    v36 = [(HUUserListTableManager *)self _displayNameForUser:invitee];
    [v15 setDisplayName:v36];

    userID = [invitee userID];

    if (!userID)
    {
      [v15 setSelectionStyle:0];
    }
  }

  return v15;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy row];
  users = [(HUUserListTableManager *)self users];
  v8 = [users count];

  if (v6 >= v8)
  {
    v11 = [pathCopy row];
    users2 = [(HUUserListTableManager *)self users];
    v13 = [users2 count];
    invitations = [(HUUserListTableManager *)self invitations];
    v15 = [invitations count] + v13;

    if (v11 >= v15)
    {
      goto LABEL_6;
    }

    v16 = [pathCopy row];
    users3 = [(HUUserListTableManager *)self users];
    v18 = v16 - [users3 count];

    invitations2 = [(HUUserListTableManager *)self invitations];
    v10 = [invitations2 objectAtIndexedSubscript:v18];
    [(HUUserListTableManager *)self _removeInvitation:v10 completion:0];
  }

  else
  {
    invitations2 = [(HUUserListTableManager *)self users];
    v10 = [invitations2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    [(HUUserListTableManager *)self _removeUser:v10 completion:0];
  }

LABEL_6:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [pathCopy row];
  users = [(HUUserListTableManager *)self users];
  v9 = [users count];
  invitations = [(HUUserListTableManager *)self invitations];
  v11 = [invitations count] + v9;

  if (v7 < v11)
  {
    v12 = [pathCopy row];
    users2 = [(HUUserListTableManager *)self users];
    v14 = [users2 count];

    if (v12 >= v14)
    {
      v21 = [pathCopy row];
      users3 = [(HUUserListTableManager *)self users];
      v23 = v21 - [users3 count];

      invitations2 = [(HUUserListTableManager *)self invitations];
      viewController2 = [invitations2 objectAtIndexedSubscript:v23];

      invitee = [viewController2 invitee];
    }

    else
    {
      users4 = [(HUUserListTableManager *)self users];
      invitee = [users4 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      viewController2 = 0;
    }

    [(HUUserListTableManager *)self setSelectedIndexPath:pathCopy];
    navigationController2 = [(HUUserListTableManager *)self _personViewControllerForUser:invitee invitation:viewController2];
    if (navigationController2)
    {
      viewController = [(HUUserListTableManager *)self viewController];
      navigationController = [viewController navigationController];
      [navigationController pushViewController:navigationController2 animated:1];
    }

    goto LABEL_10;
  }

  if ([(HUUserListTableManager *)self allowsEditing]&& [(HUUserListTableManager *)self _indexPathIsInviteUser:pathCopy])
  {
    v18 = [HUAddPeopleViewController alloc];
    home = [(HUUserListTableManager *)self home];
    invitee = [(HUAddPeopleViewController *)v18 initWithHome:home viewContext:0];

    [(HUAddPeopleViewController *)invitee setDelegate:self];
    viewController2 = [(HUUserListTableManager *)self viewController];
    navigationController2 = [viewController2 navigationController];
    [navigationController2 pushViewController:invitee animated:1];
LABEL_10:
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    tableView = [(HUUserListTableManager *)self tableView];
    [tableView beginUpdates];

    [(HUUserListTableManager *)self updateEditingRows];
    tableView2 = [(HUUserListTableManager *)self tableView];
    [tableView2 endUpdates];
  }
}

- (void)updateEditingRows
{
  numberOfDataRows = [(HUUserListTableManager *)self numberOfDataRows];

  [(HUUserListTableManager *)self _didReloadAtIndex:numberOfDataRows];
}

- (HUUserListManagerTableDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end