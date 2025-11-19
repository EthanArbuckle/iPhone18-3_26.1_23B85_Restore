@interface FCVanityURLConfigurationFetchedValueDescriptor
- (BOOL)isValue:(id)a3 equalToValue:(id)a4;
- (FCVanityURLConfigurationFetchedValueDescriptor)init;
- (FCVanityURLConfigurationFetchedValueDescriptor)initWithConfigurationManager:(id)a3;
- (id)_vanityURLConfiguration;
- (id)inputManagers;
- (void)fetchValueWithCachePolicy:(unint64_t)a3 qualityOfService:(int64_t)a4 completion:(id)a5;
@end

@implementation FCVanityURLConfigurationFetchedValueDescriptor

- (id)_vanityURLConfiguration
{
  v2 = [(FCVanityURLConfigurationFetchedValueDescriptor *)self configurationManager];
  v3 = [v2 value];

  v4 = [v3 paidBundleConfig];
  v5 = [v4 vanityURLMappingResourceID];
  if (v5)
  {
    v6 = -[FCManagedResourceConfiguration initWithResourceID:refreshRate:]([FCManagedResourceConfiguration alloc], "initWithResourceID:refreshRate:", v5, [v4 vanityURLMappingRefreshRate]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)inputManagers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(FCVanityURLConfigurationFetchedValueDescriptor *)self configurationManager];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (FCVanityURLConfigurationFetchedValueDescriptor)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCVanityURLConfigurationFetchedValueDescriptor init]";
    v10 = 2080;
    v11 = "FCVanityURLConfigurationFetchedValueDescriptor.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCVanityURLConfigurationFetchedValueDescriptor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCVanityURLConfigurationFetchedValueDescriptor)initWithConfigurationManager:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configurationManager"];
    *buf = 136315906;
    v13 = "[FCVanityURLConfigurationFetchedValueDescriptor initWithConfigurationManager:]";
    v14 = 2080;
    v15 = "FCVanityURLConfigurationFetchedValueDescriptor.m";
    v16 = 1024;
    v17 = 29;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCVanityURLConfigurationFetchedValueDescriptor;
  v6 = [(FCFetchedValueDescriptor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configurationManager, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)fetchValueWithCachePolicy:(unint64_t)a3 qualityOfService:(int64_t)a4 completion:(id)a5
{
  v6 = a5;
  v9 = [(FCVanityURLConfigurationFetchedValueDescriptor *)self _vanityURLConfiguration];
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:8 userInfo:0];
  }

  v8 = [(FCVanityURLConfigurationFetchedValueDescriptor *)self _vanityURLConfiguration];
  v6[2](v6, v8, v7);
}

- (BOOL)isValue:(id)a3 equalToValue:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "left"];
    *buf = 136315906;
    v17 = "[FCVanityURLConfigurationFetchedValueDescriptor isValue:equalToValue:]";
    v18 = 2080;
    v19 = "FCVanityURLConfigurationFetchedValueDescriptor.m";
    v20 = 1024;
    v21 = 62;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "right"];
    *buf = 136315906;
    v17 = "[FCVanityURLConfigurationFetchedValueDescriptor isValue:equalToValue:]";
    v18 = 2080;
    v19 = "FCVanityURLConfigurationFetchedValueDescriptor.m";
    v20 = 1024;
    v21 = 63;
    v22 = 2114;
    v23 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v7 = MEMORY[0x1E69E58C0];
  v8 = [v5 resourceID];
  v9 = [v6 resourceID];
  if ([v7 nf_object:v8 isEqualToObject:v9])
  {
    v10 = [v5 refreshRate];
    v11 = v10 == [v6 refreshRate];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end