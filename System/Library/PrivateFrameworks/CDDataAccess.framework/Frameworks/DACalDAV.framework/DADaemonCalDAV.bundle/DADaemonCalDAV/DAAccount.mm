@interface DAAccount
- (id)rem_account;
- (id)rem_provideAccountInfo;
- (id)rem_saveRequest;
- (id)rem_store;
@end

@implementation DAAccount

- (id)rem_store
{
  v2 = +[DADAgentManager sharedManager];
  rem_storeProvider = [v2 rem_storeProvider];
  rem_storeForDataAccess = [rem_storeProvider rem_storeForDataAccess];

  if (!rem_storeForDataAccess)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v5, v6))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_0, v5, v6, "Couldn't get an REMStore from %{public}@.", &v10, 0xCu);
    }
  }

  return rem_storeForDataAccess;
}

- (id)rem_saveRequest
{
  v2 = +[DADAgentManager sharedManager];
  rem_storeProvider = [v2 rem_storeProvider];
  rem_saveRequestForDataAccess = [rem_storeProvider rem_saveRequestForDataAccess];

  if (!rem_saveRequestForDataAccess)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v5, v6))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_0, v5, v6, "Couldn't get an REMSaveRequest from %{public}@.", &v10, 0xCu);
    }
  }

  return rem_saveRequestForDataAccess;
}

- (id)rem_account
{
  rem_store = [(DAAccount *)self rem_store];
  accountID = [(DAAccount *)self accountID];
  v12 = 0;
  v5 = [rem_store fetchAccountWithExternalIdentifier:accountID error:&v12];
  v6 = v12;

  if (v6)
  {
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[3];
    if (!os_log_type_enabled(v7, v8))
    {
LABEL_5:

      goto LABEL_7;
    }

    accountID2 = [(DAAccount *)self accountID];
    *buf = 138543362;
    v14 = accountID2;
    v10 = "Error when fetching account from ReminderKit %{public}@.";
LABEL_4:
    _os_log_impl(&dword_0, v7, v8, v10, buf, 0xCu);

    goto LABEL_5;
  }

  if (!v5)
  {
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[4];
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_5;
    }

    accountID2 = [(DAAccount *)self accountID];
    *buf = 138543362;
    v14 = accountID2;
    v10 = "Could not find account from ReminderKit %{public}@.";
    goto LABEL_4;
  }

LABEL_7:

  return v5;
}

- (id)rem_provideAccountInfo
{
  rem_account = [(DAAccount *)self rem_account];
  objectID = [rem_account objectID];

  v5 = [REMDAAccountInfo alloc];
  accountID = [(DAAccount *)self accountID];
  accountDescription = [(DAAccount *)self accountDescription];
  v8 = [(REMDAAccountInfo *)v5 initWithAccountID:accountID remAccountObjectID:objectID accountDescription:accountDescription];

  return v8;
}

@end