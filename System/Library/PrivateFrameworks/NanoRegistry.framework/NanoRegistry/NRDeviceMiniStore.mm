@interface NRDeviceMiniStore
- (NRDeviceMiniStore)initWithCoder:(id)a3;
- (NRDeviceMiniStore)initWithStore:(id)a3;
- (id)fullStore;
- (id)objectForKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRDeviceMiniStore

- (void)encodeWithCoder:(id)a3
{
  store = self->_store;
  if (store)
  {
    [a3 encodeObject:store forKey:@"miniStoreValuesKey"];
  }
}

- (NRDeviceMiniStore)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NRDeviceMiniStore;
  v6 = [(NRDeviceMiniStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (NRDeviceMiniStore)initWithCoder:(id)a3
{
  v17[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NRDeviceMiniStore;
  v5 = [(NRDeviceMiniStore *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v17[4] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"miniStoreValuesKey"];

    if (v9)
    {
      objc_storeStrong(&v5->_store, v9);
    }

    else
    {
      v10 = nr_framework_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (v11)
      {
        v12 = nr_framework_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v15 = 0;
          _os_log_error_impl(&dword_1E0ADF000, v12, OS_LOG_TYPE_ERROR, "No store found, will not return a deviceStore", v15, 2u);
        }
      }

      v5 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)objectForKey:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_store)
  {
    v5 = nr_framework_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_framework_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_error_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_ERROR, "No store found in ministore", &v14, 2u);
      }
    }
  }

  v8 = [(NSDictionary *)self->_store objectForKey:v4];
  if (!v8)
  {
    v9 = nr_framework_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = nr_framework_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v4;
        _os_log_impl(&dword_1E0ADF000, v11, OS_LOG_TYPE_DEFAULT, "No value found in ministore for key %@", &v14, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)fullStore
{
  if (!self->_store)
  {
    v3 = nr_framework_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = nr_framework_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_1E0ADF000, v5, OS_LOG_TYPE_ERROR, "No store found in ministore", v8, 2u);
      }
    }
  }

  store = self->_store;

  return store;
}

@end