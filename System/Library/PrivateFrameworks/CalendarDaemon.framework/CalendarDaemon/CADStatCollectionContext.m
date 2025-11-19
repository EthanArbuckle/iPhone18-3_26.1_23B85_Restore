@interface CADStatCollectionContext
- (ACAccountStore)accountStore;
- (CADStatCollectionContext)initWithDatabase:(CalDatabase *)a3 accountStore:(id)a4;
- (CalDatabase)database;
- (void)dealloc;
@end

@implementation CADStatCollectionContext

- (CADStatCollectionContext)initWithDatabase:(CalDatabase *)a3 accountStore:(id)a4
{
  v7 = a4;
  v10.receiver = self;
  v10.super_class = CADStatCollectionContext;
  v8 = [(CADStatCollectionContext *)&v10 init];
  if (v8)
  {
    v8->_database = CFRetain(a3);
    objc_storeStrong(&v8->_accountStore, a4);
  }

  return v8;
}

- (void)dealloc
{
  CFRelease(self->_database);
  v3.receiver = self;
  v3.super_class = CADStatCollectionContext;
  [(CADStatCollectionContext *)&v3 dealloc];
}

- (CalDatabase)database
{
  result = self->_database;
  if (!result)
  {
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_DEBUG, "Creating database for stats collection", v5, 2u);
    }

    result = CalDatabaseCreateWithOptions();
    self->_database = result;
  }

  return result;
}

- (ACAccountStore)accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = objc_alloc_init(MEMORY[0x277CB8F48]);
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

@end