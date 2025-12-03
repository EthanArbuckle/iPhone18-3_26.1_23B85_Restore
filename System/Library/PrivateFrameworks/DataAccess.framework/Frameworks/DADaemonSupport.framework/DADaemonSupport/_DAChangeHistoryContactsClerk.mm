@interface _DAChangeHistoryContactsClerk
+ (OS_os_log)os_log;
- (_DAChangeHistoryContactsClerk)initWithContactStore:(id)store;
- (void)registerClientWithIdentifier:(id)identifier forContainer:(id)container;
- (void)unregisterClientWithIdentifier:(id)identifier forContainer:(id)container;
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

- (_DAChangeHistoryContactsClerk)initWithContactStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _DAChangeHistoryContactsClerk;
  v6 = [(_DAChangeHistoryContactsClerk *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
  }

  return v7;
}

- (void)unregisterClientWithIdentifier:(id)identifier forContainer:(id)container
{
  identifierCopy = identifier;
  asContainer = [container asContainer];
  identifier = [asContainer identifier];

  if (!identifier)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [_DAChangeHistoryContactsClerk unregisterClientWithIdentifier:os_log forContainer:?];
    }
  }

  contactStore = [(_DAChangeHistoryContactsClerk *)self contactStore];
  v11 = 0;
  [contactStore unregisterChangeHistoryClientIdentifier:identifierCopy forContainerIdentifier:identifier error:&v11];
}

- (void)registerClientWithIdentifier:(id)identifier forContainer:(id)container
{
  identifierCopy = identifier;
  asContainer = [container asContainer];
  identifier = [asContainer identifier];

  if (!identifier)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [_DAChangeHistoryContactsClerk unregisterClientWithIdentifier:os_log forContainer:?];
    }
  }

  contactStore = [(_DAChangeHistoryContactsClerk *)self contactStore];
  v11 = 0;
  [contactStore registerChangeHistoryClientIdentifier:identifierCopy forContainerIdentifier:identifier error:&v11];
}

@end