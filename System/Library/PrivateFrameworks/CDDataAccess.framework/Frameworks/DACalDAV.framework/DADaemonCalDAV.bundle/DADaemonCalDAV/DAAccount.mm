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
  v3 = [v2 rem_storeProvider];
  v4 = [v3 rem_storeForDataAccess];

  if (!v4)
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

  return v4;
}

- (id)rem_saveRequest
{
  v2 = +[DADAgentManager sharedManager];
  v3 = [v2 rem_storeProvider];
  v4 = [v3 rem_saveRequestForDataAccess];

  if (!v4)
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

  return v4;
}

- (id)rem_account
{
  v3 = [(DAAccount *)self rem_store];
  v4 = [(DAAccount *)self accountID];
  v12 = 0;
  v5 = [v3 fetchAccountWithExternalIdentifier:v4 error:&v12];
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

    v9 = [(DAAccount *)self accountID];
    *buf = 138543362;
    v14 = v9;
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

    v9 = [(DAAccount *)self accountID];
    *buf = 138543362;
    v14 = v9;
    v10 = "Could not find account from ReminderKit %{public}@.";
    goto LABEL_4;
  }

LABEL_7:

  return v5;
}

- (id)rem_provideAccountInfo
{
  v3 = [(DAAccount *)self rem_account];
  v4 = [v3 objectID];

  v5 = [REMDAAccountInfo alloc];
  v6 = [(DAAccount *)self accountID];
  v7 = [(DAAccount *)self accountDescription];
  v8 = [(REMDAAccountInfo *)v5 initWithAccountID:v6 remAccountObjectID:v4 accountDescription:v7];

  return v8;
}

@end