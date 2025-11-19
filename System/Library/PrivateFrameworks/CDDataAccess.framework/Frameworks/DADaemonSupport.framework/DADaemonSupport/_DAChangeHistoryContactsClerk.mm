@interface _DAChangeHistoryContactsClerk
+ (OS_os_log)os_log;
- (_DAChangeHistoryContactsClerk)initWithContactStore:(id)a3;
- (void)registerClientWithIdentifier:(id)a3 forContainer:(id)a4;
- (void)unregisterClientWithIdentifier:(id)a3 forContainer:(id)a4;
@end

@implementation _DAChangeHistoryContactsClerk

+ (OS_os_log)os_log
{
  if (os_log_onceToken != -1)
  {
    +[_DAChangeHistoryContactsClerk os_log];
  }

  v3 = os_log_os_log;

  return v3;
}

- (_DAChangeHistoryContactsClerk)initWithContactStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _DAChangeHistoryContactsClerk;
  v6 = [(_DAChangeHistoryContactsClerk *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
  }

  return v7;
}

- (void)unregisterClientWithIdentifier:(id)a3 forContainer:(id)a4
{
  v6 = a3;
  v7 = [a4 asContainer];
  v8 = [v7 identifier];

  if (!v8)
  {
    v9 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_DAChangeHistoryContactsClerk unregisterClientWithIdentifier:v9 forContainer:?];
    }
  }

  v10 = [(_DAChangeHistoryContactsClerk *)self contactStore];
  v11 = 0;
  [v10 unregisterChangeHistoryClientIdentifier:v6 forContainerIdentifier:v8 error:&v11];
}

- (void)registerClientWithIdentifier:(id)a3 forContainer:(id)a4
{
  v6 = a3;
  v7 = [a4 asContainer];
  v8 = [v7 identifier];

  if (!v8)
  {
    v9 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_DAChangeHistoryContactsClerk unregisterClientWithIdentifier:v9 forContainer:?];
    }
  }

  v10 = [(_DAChangeHistoryContactsClerk *)self contactStore];
  v11 = 0;
  [v10 registerChangeHistoryClientIdentifier:v6 forContainerIdentifier:v8 error:&v11];
}

@end