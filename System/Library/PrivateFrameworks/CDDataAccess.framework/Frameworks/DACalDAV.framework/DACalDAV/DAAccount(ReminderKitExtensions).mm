@interface DAAccount(ReminderKitExtensions)
- (REMDAAccountInfo)rem_provideAccountInfo;
- (id)rem_account;
- (id)rem_saveRequest;
- (id)rem_store;
@end

@implementation DAAccount(ReminderKitExtensions)

- (id)rem_store
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CF3AA8] sharedManager];
  v1 = [v0 rem_storeProvider];
  v2 = [v1 rem_storeForDataAccess];

  if (!v2)
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_242490000, v3, v4, "Couldn't get an REMStore from %{public}@.", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)rem_saveRequest
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CF3AA8] sharedManager];
  v1 = [v0 rem_storeProvider];
  v2 = [v1 rem_saveRequestForDataAccess];

  if (!v2)
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_242490000, v3, v4, "Couldn't get an REMSaveRequest from %{public}@.", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)rem_account
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1 rem_store];
  v3 = [a1 accountID];
  v12 = 0;
  v4 = [v2 fetchAccountWithExternalIdentifier:v3 error:&v12];
  v5 = v12;

  if (v5)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277CF3AF0] + 3);
    if (!os_log_type_enabled(v6, v7))
    {
LABEL_5:

      goto LABEL_7;
    }

    v8 = [a1 accountID];
    *buf = 138543362;
    v14 = v8;
    v9 = "Error when fetching account from ReminderKit %{public}@.";
LABEL_4:
    _os_log_impl(&dword_242490000, v6, v7, v9, buf, 0xCu);

    goto LABEL_5;
  }

  if (!v4)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277CF3AF0] + 4);
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_5;
    }

    v8 = [a1 accountID];
    *buf = 138543362;
    v14 = v8;
    v9 = "Could not find account from ReminderKit %{public}@.";
    goto LABEL_4;
  }

LABEL_7:

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (REMDAAccountInfo)rem_provideAccountInfo
{
  v2 = [a1 rem_account];
  v3 = [v2 objectID];

  v4 = [REMDAAccountInfo alloc];
  v5 = [a1 accountID];
  v6 = [a1 accountDescription];
  v7 = [(REMDAAccountInfo *)v4 initWithAccountID:v5 remAccountObjectID:v3 accountDescription:v6];

  return v7;
}

@end