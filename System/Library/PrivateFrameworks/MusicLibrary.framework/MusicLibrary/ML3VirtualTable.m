@interface ML3VirtualTable
- (BOOL)registerWithConnection:(id)a3;
- (BOOL)unregister;
- (ML3VirtualTable)initWithDatabaseTable:(id)a3;
- (ML3VirtualTableDelegate)delegate;
- (id).cxx_construct;
- (shared_ptr<ML3VirtualTableDataSource>)dataSource;
- (void)dealloc;
- (void)setDataSource:(shared_ptr<ML3VirtualTableDataSource>)a3;
@end

@implementation ML3VirtualTable

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

- (ML3VirtualTableDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDataSource:(shared_ptr<ML3VirtualTableDataSource>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_dataSource.__cntrl_;
  self->_dataSource.__ptr_ = v4;
  self->_dataSource.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<ML3VirtualTableDataSource>)dataSource
{
  cntrl = self->_dataSource.__cntrl_;
  *v2 = self->_dataSource.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (BOOL)unregister
{
  v15 = *MEMORY[0x277D85DE8];
  connection = self->_connection;
  if (connection)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TABLE IF EXISTS %@", self->_virtualTableName];
    v12 = 0;
    LOBYTE(connection) = [(ML3DatabaseConnection *)connection executeUpdate:v4 withParameters:0 error:&v12];
    v5 = v12;

    if ((connection & 1) == 0)
    {
      v6 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = v5;
        _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Could not unregister virtual table. %{public}@", buf, 0xCu);
      }
    }

    v7 = self->_connection;
    v8 = [(ML3DatabaseModule *)self->_module name];
    [(ML3DatabaseConnection *)v7 removeModuleNamed:v8];

    module = self->_module;
    self->_module = 0;

    v10 = self->_connection;
    self->_connection = 0;
  }

  return connection;
}

- (BOOL)registerWithConnection:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  p_connection = &self->_connection;
  if (self->_connection)
  {
    [(ML3VirtualTable *)self unregister];
  }

  objc_storeStrong(&self->_connection, a3);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_module_%u", self->_virtualTableName, arc4random()];
  v8 = [[ML3DatabaseModule alloc] initWithName:v7 moduleMethods:&__virtualTableSQLiteModule];
  module = self->_module;
  self->_module = v8;

  [(ML3DatabaseModule *)self->_module setContext:self];
  if ([(ML3DatabaseConnection *)self->_connection registerModule:self->_module])
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE VIRTUAL TABLE TEMP.%@ USING %@", self->_virtualTableName, v7];
    v11 = *p_connection;
    v20 = 0;
    v12 = [(ML3DatabaseConnection *)v11 executeUpdate:v10 withParameters:0 error:&v20];
    v13 = v20;
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v17 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *p_connection;
        *buf = 134218242;
        v22 = v18;
        v23 = 2114;
        v24 = v13;
        _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_ERROR, "Failed to create virtual table on connection %p. %{public}@", buf, 0x16u);
      }

      v14 = 0;
    }
  }

  else
  {
    v15 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_module;
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "Failed to register virtual table on connection. Could not register module %{public}@.", buf, 0xCu);
    }

    v13 = 0;
    v14 = 0;
    v10 = self->_module;
    self->_module = 0;
  }

  return v14;
}

- (void)dealloc
{
  [(ML3VirtualTable *)self unregister];
  v3.receiver = self;
  v3.super_class = ML3VirtualTable;
  [(ML3VirtualTable *)&v3 dealloc];
}

- (ML3VirtualTable)initWithDatabaseTable:(id)a3
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = ML3VirtualTable;
  v7 = [(ML3VirtualTable *)&v14 init];
  if (v7)
  {
    if (!v6)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:a2 object:v7 file:@"ML3VirtualTable.mm" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"databaseTable != nil"}];
    }

    objc_storeStrong(&v7->_databaseTable, a3);
    v8 = MEMORY[0x277CCACA8];
    v9 = [(ML3DatabaseTable *)v7->_databaseTable name];
    v10 = [v8 stringWithFormat:@"virtual_%@", v9];
    virtualTableName = v7->_virtualTableName;
    v7->_virtualTableName = v10;
  }

  return v7;
}

@end