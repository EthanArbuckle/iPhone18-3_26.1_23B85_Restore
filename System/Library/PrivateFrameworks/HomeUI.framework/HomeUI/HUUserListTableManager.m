@interface HUUserListTableManager
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (HUUserListManagerTableDelegate)delegate;
- (HUUserListTableManager)initWithTableView:(id)a3 viewController:(id)a4;
- (UIViewController)viewController;
- (id)_contactForUser:(id)a3;
- (id)_displayNameForUser:(id)a3;
- (id)_monogramForUser:(id)a3;
- (id)_personViewControllerForUser:(id)a3 invitation:(id)a4;
- (id)_stringForInvitationState:(int64_t)a3;
- (id)sortedInvitations;
- (id)sortedUsers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfDataRows;
- (void)_configurePersonViewController:(id)a3 invitation:(id)a4 isRemovable:(BOOL)a5;
- (void)_didAddUser:(id)a3;
- (void)_didInsertAtIndex:(unint64_t)a3;
- (void)_didReloadAtIndex:(unint64_t)a3;
- (void)_didRemoveAtIndex:(unint64_t)a3;
- (void)_didRemoveInvitation:(id)a3;
- (void)_didRemoveUser:(id)a3;
- (void)_reinvite;
- (void)_removeInvitation:(id)a3 completion:(id)a4;
- (void)_removeUser:(id)a3 completion:(id)a4;
- (void)_stopSharingWithCompletion:(id)a3;
- (void)addPeopleViewController:(id)a3 didSendInvitations:(id)a4;
- (void)addPeopleViewControllerDidCancel:(id)a3;
- (void)home:(id)a3 didAddUser:(id)a4;
- (void)home:(id)a3 didRemoveUser:(id)a4;
- (void)home:(id)a3 didUpdateStateForOutgoingInvitations:(id)a4;
- (void)setEditing:(BOOL)a3;
- (void)setHome:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateEditingRows;
@end

@implementation HUUserListTableManager

- (HUUserListTableManager)initWithTableView:(id)a3 viewController:(id)a4
{
  v7 = a3;
  v8 = a4;
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

    objc_storeWeak(&v10->_viewController, v8);
    objc_storeStrong(&v10->_tableView, a3);
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

- (void)setHome:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_home == v5)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "[HUUserListTableManager setHome:]";
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%s Skipping since same as previous home %@", &v21, 0x16u);
    }
  }

  else
  {
    objc_storeStrong(&self->_home, a3);
    v6 = [(HUUserListTableManager *)self sortedUsers];
    [(HUUserListTableManager *)self setUsers:v6];

    v7 = [(HUUserListTableManager *)self sortedInvitations];
    [(HUUserListTableManager *)self setInvitations:v7];

    v8 = [(HUUserListTableManager *)self home];
    [v8 setDelegate:self];

    v9 = [(HUUserListTableManager *)self home];
    v10 = [(HUUserListTableManager *)self home];
    v11 = [v10 currentUser];
    v12 = [v9 homeAccessControlForUser:v11];
    -[HUUserListTableManager setAllowsEditing:](self, "setAllowsEditing:", [v12 isAdministrator]);

    v13 = [(HUUserListTableManager *)self tableView];
    [v13 reloadData];

    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(HUUserListTableManager *)self users];
      v16 = [v15 count];
      v17 = [(HUUserListTableManager *)self users];
      v18 = [(HUUserListTableManager *)self invitations];
      v19 = [v18 count];
      v20 = [(HUUserListTableManager *)self invitations];
      v21 = 136316674;
      v22 = "[HUUserListTableManager setHome:]";
      v23 = 2112;
      v24 = v5;
      v25 = 2048;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      v29 = 2048;
      v30 = v19;
      v31 = 2112;
      v32 = v20;
      v33 = 1024;
      v34 = [(HUUserListTableManager *)self allowsEditing];
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%s Updating to new home %@. users (%ld) %@. invitations (%ld) %@. allowsEditing %{BOOL}d", &v21, 0x44u);
    }
  }
}

- (id)sortedUsers
{
  v2 = [(HUUserListTableManager *)self home];
  v3 = [v2 users];
  v4 = [v3 mutableCopy];

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
  v2 = [(HUUserListTableManager *)self home];
  v3 = [v2 outgoingInvitations];
  v4 = [v3 mutableCopy];

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

- (void)_stopSharingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HUUserListTableManager *)self selectedIndexPath];

  if (v5)
  {
    v6 = [(HUUserListTableManager *)self selectedIndexPath];
    v7 = [v6 row];
    v8 = [(HUUserListTableManager *)self users];
    v9 = [v8 count];

    if (v7 >= v9)
    {
      v16 = [(HUUserListTableManager *)self invitations];
      v17 = [(HUUserListTableManager *)self selectedIndexPath];
      v18 = [v17 row];
      v19 = [(HUUserListTableManager *)self users];
      v20 = [v16 objectAtIndexedSubscript:{v18 - objc_msgSend(v19, "count")}];

      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __53__HUUserListTableManager__stopSharingWithCompletion___block_invoke_2;
      v27 = &unk_277DBCE88;
      v13 = &v29;
      v14 = &v28;
      v28 = v20;
      v29 = v4;
      v15 = v20;
      [(HUUserListTableManager *)self _removeInvitation:v15 completion:&v24];
    }

    else
    {
      v10 = [(HUUserListTableManager *)self users];
      v11 = [(HUUserListTableManager *)self selectedIndexPath];
      v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(v11, "row")}];

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __53__HUUserListTableManager__stopSharingWithCompletion___block_invoke;
      v30[3] = &unk_277DBCE88;
      v13 = &v32;
      v14 = &v31;
      v31 = v12;
      v32 = v4;
      v15 = v12;
      [(HUUserListTableManager *)self _removeUser:v15 completion:v30];
    }

    [(HUUserListTableManager *)self setSelectedIndexPath:0];
  }

  v21 = [(HUUserListTableManager *)self viewController:v24];
  v22 = [v21 navigationController];
  v23 = [v22 popViewControllerAnimated:1];
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

- (void)_removeUser:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(HUUserListTableManager *)self _didRemoveUser:v6];
  v8 = [(HUUserListTableManager *)self home];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__HUUserListTableManager__removeUser_completion___block_invoke;
  v11[3] = &unk_277DBCEB0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 removeUserWithoutConfirmation:v10 completionHandler:v11];
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

- (void)_removeInvitation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__HUUserListTableManager__removeInvitation_completion___block_invoke;
  v10[3] = &unk_277DBCEB0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)_didAddUser:(id)a3
{
  v10 = a3;
  v4 = [(HUUserListTableManager *)self users];
  v5 = [v4 indexOfObject:v10];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(HUUserListTableManager *)self users];
    v7 = [v6 mutableCopy];

    [v7 addObject:v10];
    [v7 sortUsingComparator:&__block_literal_global_16_1];
    [(HUUserListTableManager *)self setUsers:v7];
    v8 = [(HUUserListTableManager *)self users];
    v9 = [v8 indexOfObject:v10];

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

- (void)_didRemoveUser:(id)a3
{
  v8 = a3;
  v4 = [(HUUserListTableManager *)self users];
  v5 = [v4 indexOfObject:v8];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(HUUserListTableManager *)self users];
    v7 = [v6 mutableCopy];

    [v7 removeObject:v8];
    [(HUUserListTableManager *)self setUsers:v7];
    [(HUUserListTableManager *)self _didRemoveAtIndex:v5];
  }
}

- (void)_didRemoveInvitation:(id)a3
{
  v10 = a3;
  v4 = [(HUUserListTableManager *)self invitations];
  v5 = [v4 indexOfObject:v10];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(HUUserListTableManager *)self invitations];
    v7 = [v6 mutableCopy];

    [v7 removeObject:v10];
    [(HUUserListTableManager *)self setInvitations:v7];
    v8 = [(HUUserListTableManager *)self users];
    v9 = [v8 count];

    [(HUUserListTableManager *)self _didRemoveAtIndex:v9 + v5];
  }
}

- (void)_didInsertAtIndex:(unint64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = [(HUUserListTableManager *)self tableView];
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:{-[HUUserListTableManager sectionForPeople](self, "sectionForPeople")}];
  v8[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v5 insertRowsAtIndexPaths:v7 withRowAnimation:100];
}

- (void)_didRemoveAtIndex:(unint64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = [(HUUserListTableManager *)self tableView];
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:{-[HUUserListTableManager sectionForPeople](self, "sectionForPeople")}];
  v8[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v5 deleteRowsAtIndexPaths:v7 withRowAnimation:100];
}

- (void)_didReloadAtIndex:(unint64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = [(HUUserListTableManager *)self tableView];
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:{-[HUUserListTableManager sectionForPeople](self, "sectionForPeople")}];
  v8[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v5 reloadRowsAtIndexPaths:v7 withRowAnimation:100];
}

- (id)_contactForUser:(id)a3
{
  v35[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userID];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBDA70]);
    v7 = *MEMORY[0x277CBD000];
    v35[0] = *MEMORY[0x277CBCFC0];
    v35[1] = v7;
    v35[2] = *MEMORY[0x277CBCFF8];
    v8 = [MEMORY[0x277CBDC70] descriptorForRequiredKeysIncludingImage:1];
    v35[3] = v8;
    v9 = [MEMORY[0x277CBDC48] descriptorForRequiredKeys];
    v35[4] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:5];
    v11 = [v6 initWithKeysToFetch:v10];

    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__12;
    v29 = __Block_byref_object_dispose__12;
    v30 = 0;
    v12 = [(HUUserListTableManager *)self contactStore];
    v24 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __42__HUUserListTableManager__contactForUser___block_invoke;
    v21[3] = &unk_277DBCEF8;
    v13 = v4;
    v22 = v13;
    v23 = &v25;
    v14 = [v12 enumerateContactsWithFetchRequest:v11 error:&v24 usingBlock:v21];
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
        v20 = [v13 userID];
        *buf = 138412546;
        v32 = v15;
        v33 = 2112;
        v34 = v20;
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

- (id)_displayNameForUser:(id)a3
{
  v4 = a3;
  v5 = [(HUUserListTableManager *)self _contactForUser:v4];
  if (!v5 || ([MEMORY[0x277CBDA78] stringFromContact:v5 style:0], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [v4 userID];
    if (v7)
    {
      [v4 userID];
    }

    else
    {
      _HULocalizedStringWithDefaultValue(@"HUUserManagementUnknownUser", @"HUUserManagementUnknownUser", 1);
    }
    v6 = ;
  }

  return v6;
}

- (id)_stringForInvitationState:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = HFLocalizedString();
  }

  return v4;
}

- (id)_monogramForUser:(id)a3
{
  v4 = a3;
  if (!_monogramForUser__monogrammer)
  {
    v5 = [objc_alloc(MEMORY[0x277CBDC70]) initWithStyle:0 diameter:40.0];
    v6 = _monogramForUser__monogrammer;
    _monogramForUser__monogrammer = v5;
  }

  v7 = [(HUUserListTableManager *)self _contactForUser:v4];
  if (!v7 || ([_monogramForUser__monogrammer monogramForContact:v7], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [_monogramForUser__monogrammer silhouetteMonogram];
  }

  return v8;
}

- (id)_personViewControllerForUser:(id)a3 invitation:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HUUserListTableManager *)self _contactForUser:v6];
  if (v8)
  {
    v9 = [MEMORY[0x277CBDC48] viewControllerForContact:v8];
    [v9 setAllowsEditing:0];
    v10 = [(HUUserListTableManager *)self home];
    v11 = [v10 owner];
    -[HUUserListTableManager _configurePersonViewController:invitation:isRemovable:](self, "_configurePersonViewController:invitation:isRemovable:", v9, v7, [v11 isEqual:v6] ^ 1);
  }

  else
  {
    v9 = [v6 userID];

    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = objc_alloc_init(MEMORY[0x277CBDB38]);
    v12 = MEMORY[0x277CBDB20];
    v13 = *MEMORY[0x277CBD8E0];
    v14 = [v6 userID];
    v15 = [v12 labeledValueWithLabel:v13 value:v14];
    v19[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v10 setEmailAddresses:v16];

    v9 = [MEMORY[0x277CBDC48] viewControllerForUnknownContact:v10];
    [v9 setActions:{objc_msgSend(v9, "actions") & 0xFFFFFFFFFFFFFFDFLL}];
    v11 = [(HUUserListTableManager *)self home];
    v17 = [v11 owner];
    -[HUUserListTableManager _configurePersonViewController:invitation:isRemovable:](self, "_configurePersonViewController:invitation:isRemovable:", v9, v7, [v17 isEqual:v6] ^ 1);
  }

LABEL_6:

  return v9;
}

- (void)_configurePersonViewController:(id)a3 invitation:(id)a4 isRemovable:(BOOL)a5
{
  v5 = a5;
  v15 = a3;
  v8 = a4;
  [v15 setAllowsActions:0];
  if ([(HUUserListTableManager *)self allowsEditing])
  {
    [v15 setDisplayMode:2];
    v9 = [v15 contentViewController];
    if (v8)
    {
      if ([v8 invitationState] == 4 || objc_msgSend(v8, "invitationState") == 6)
      {
        v10 = _HULocalizedStringWithDefaultValue(@"HUUserManagementInviteAgain", @"HUUserManagementInviteAgain", 1);
        v11 = [v9 cardTopGroup];
        [v9 addActionWithTitle:v10 target:self selector:sel__reinvite inGroup:v11 destructive:1];
      }

      v12 = @"HUUserManagementCancelInvite";
    }

    else
    {
      if (!v5)
      {
LABEL_10:

        goto LABEL_11;
      }

      v12 = @"HUUserManagementStopSharing";
    }

    v13 = _HULocalizedStringWithDefaultValue(v12, v12, 1);
    v14 = [v9 cardTopGroup];
    [v9 addActionWithTitle:v13 target:self selector:sel__stopSharing inGroup:v14 destructive:1];

    goto LABEL_10;
  }

LABEL_11:
}

- (void)addPeopleViewControllerDidCancel:(id)a3
{
  v4 = [(HUUserListTableManager *)self delegate];

  if (v4)
  {
    v5 = [(HUUserListTableManager *)self delegate];
    [v5 managerDidDismissWithError:0];
  }
}

- (void)addPeopleViewController:(id)a3 didSendInvitations:(id)a4
{
  v15 = a4;
  v5 = [(HUUserListTableManager *)self sortedInvitations];
  [(HUUserListTableManager *)self setInvitations:v5];

  v6 = [(HUUserListTableManager *)self tableView];
  [v6 reloadData];

  v7 = [(HUUserListTableManager *)self viewController];
  v8 = [v7 navigationController];
  v9 = [v8 popViewControllerAnimated:1];

  v10 = [(HUUserListTableManager *)self delegate];

  if (v10)
  {
    v11 = [(HUUserListTableManager *)self delegate];
    [v11 managerDidSendInvitations:v15];

    v12 = [(HUUserListTableManager *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(HUUserListTableManager *)self delegate];
      [v14 managerDidUpdateUserList];
    }
  }
}

- (void)home:(id)a3 didAddUser:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HUUserListTableManager_home_didAddUser___block_invoke;
  v7[3] = &unk_277DB7558;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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

- (void)home:(id)a3 didRemoveUser:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HUUserListTableManager_home_didRemoveUser___block_invoke;
  v7[3] = &unk_277DB7558;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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

- (void)home:(id)a3 didUpdateStateForOutgoingInvitations:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HUUserListTableManager_home_didUpdateStateForOutgoingInvitations___block_invoke;
  v7[3] = &unk_277DB7558;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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
  v3 = [(HUUserListTableManager *)self users];
  v4 = [v3 count];
  v5 = [(HUUserListTableManager *)self invitations];
  v6 = [v5 count];

  return v6 + v4;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  if ([(HUUserListTableManager *)self _indexPathIsInviteUser:a4])
  {
    return 0;
  }

  return [(HUUserListTableManager *)self allowsEditing];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 row];
  v9 = [(HUUserListTableManager *)self users];
  v10 = [v9 count];
  v11 = [(HUUserListTableManager *)self invitations];
  v12 = [v11 count] + v10;

  if (v8 >= v12)
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v15 = [v7 dequeueReusableCellWithIdentifier:v22];

    v23 = _HULocalizedStringWithDefaultValue(@"HUUserManagementInvitePeopleButton", @"HUUserManagementInvitePeopleButton", 1);
    v24 = [v15 textLabel];
    [v24 setText:v23];

    v25 = [MEMORY[0x277D75348] systemBlueColor];
    v26 = [v15 textLabel];
    [v26 setTextColor:v25];

    [v15 setUserInteractionEnabled:{-[HUUserListTableManager editing](self, "editing") ^ 1}];
    v27 = [(HUUserListTableManager *)self editing];
    v28 = [v15 textLabel];
    [v28 setEnabled:!v27];

    v29 = [v15 detailTextLabel];
    [v29 setText:0];

    [v15 setAccessoryType:0];
  }

  else
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v7 dequeueReusableCellWithIdentifier:v14];

    v16 = [v6 row];
    v17 = [(HUUserListTableManager *)self users];
    v18 = [v17 count];

    if (v16 >= v18)
    {
      v30 = [v6 row];
      v31 = [(HUUserListTableManager *)self users];
      v32 = v30 - [v31 count];

      v33 = [(HUUserListTableManager *)self invitations];
      v34 = [v33 objectAtIndexedSubscript:v32];

      v20 = [v34 invitee];
      v35 = -[HUUserListTableManager _stringForInvitationState:](self, "_stringForInvitationState:", [v34 invitationState]);
      [v15 setInvitationStatusString:v35];
    }

    else
    {
      v19 = [(HUUserListTableManager *)self users];
      v20 = [v19 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

      [v15 setInvitationStatusString:0];
    }

    v36 = [(HUUserListTableManager *)self _displayNameForUser:v20];
    [v15 setDisplayName:v36];

    v37 = [v20 userID];

    if (!v37)
    {
      [v15 setSelectionStyle:0];
    }
  }

  return v15;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v19 = a5;
  v6 = [v19 row];
  v7 = [(HUUserListTableManager *)self users];
  v8 = [v7 count];

  if (v6 >= v8)
  {
    v11 = [v19 row];
    v12 = [(HUUserListTableManager *)self users];
    v13 = [v12 count];
    v14 = [(HUUserListTableManager *)self invitations];
    v15 = [v14 count] + v13;

    if (v11 >= v15)
    {
      goto LABEL_6;
    }

    v16 = [v19 row];
    v17 = [(HUUserListTableManager *)self users];
    v18 = v16 - [v17 count];

    v9 = [(HUUserListTableManager *)self invitations];
    v10 = [v9 objectAtIndexedSubscript:v18];
    [(HUUserListTableManager *)self _removeInvitation:v10 completion:0];
  }

  else
  {
    v9 = [(HUUserListTableManager *)self users];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v19, "row")}];
    [(HUUserListTableManager *)self _removeUser:v10 completion:0];
  }

LABEL_6:
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v27 = a3;
  v6 = a4;
  v7 = [v6 row];
  v8 = [(HUUserListTableManager *)self users];
  v9 = [v8 count];
  v10 = [(HUUserListTableManager *)self invitations];
  v11 = [v10 count] + v9;

  if (v7 < v11)
  {
    v12 = [v6 row];
    v13 = [(HUUserListTableManager *)self users];
    v14 = [v13 count];

    if (v12 >= v14)
    {
      v21 = [v6 row];
      v22 = [(HUUserListTableManager *)self users];
      v23 = v21 - [v22 count];

      v24 = [(HUUserListTableManager *)self invitations];
      v17 = [v24 objectAtIndexedSubscript:v23];

      v16 = [v17 invitee];
    }

    else
    {
      v15 = [(HUUserListTableManager *)self users];
      v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

      v17 = 0;
    }

    [(HUUserListTableManager *)self setSelectedIndexPath:v6];
    v20 = [(HUUserListTableManager *)self _personViewControllerForUser:v16 invitation:v17];
    if (v20)
    {
      v25 = [(HUUserListTableManager *)self viewController];
      v26 = [v25 navigationController];
      [v26 pushViewController:v20 animated:1];
    }

    goto LABEL_10;
  }

  if ([(HUUserListTableManager *)self allowsEditing]&& [(HUUserListTableManager *)self _indexPathIsInviteUser:v6])
  {
    v18 = [HUAddPeopleViewController alloc];
    v19 = [(HUUserListTableManager *)self home];
    v16 = [(HUAddPeopleViewController *)v18 initWithHome:v19 viewContext:0];

    [(HUAddPeopleViewController *)v16 setDelegate:self];
    v17 = [(HUUserListTableManager *)self viewController];
    v20 = [v17 navigationController];
    [v20 pushViewController:v16 animated:1];
LABEL_10:
  }

  [v27 deselectRowAtIndexPath:v6 animated:1];
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    v5 = [(HUUserListTableManager *)self tableView];
    [v5 beginUpdates];

    [(HUUserListTableManager *)self updateEditingRows];
    v6 = [(HUUserListTableManager *)self tableView];
    [v6 endUpdates];
  }
}

- (void)updateEditingRows
{
  v3 = [(HUUserListTableManager *)self numberOfDataRows];

  [(HUUserListTableManager *)self _didReloadAtIndex:v3];
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