@interface MRClientDiagnosticsDataSource
+ (MRClientDiagnosticsDataSource)sharedDataSource;
- (MRClientDiagnosticsDataSource)init;
- (NSString)diagnostic;
- (void)add:(id)a3;
- (void)remove:(id)a3;
@end

@implementation MRClientDiagnosticsDataSource

+ (MRClientDiagnosticsDataSource)sharedDataSource
{
  if (sharedDataSource_onceToken != -1)
  {
    +[MRClientDiagnosticsDataSource sharedDataSource];
  }

  v3 = sharedDataSource___dataSource;

  return v3;
}

void __49__MRClientDiagnosticsDataSource_sharedDataSource__block_invoke()
{
  v0 = objc_alloc_init(MRClientDiagnosticsDataSource);
  v1 = sharedDataSource___dataSource;
  sharedDataSource___dataSource = v0;
}

- (MRClientDiagnosticsDataSource)init
{
  v7.receiver = self;
  v7.super_class = MRClientDiagnosticsDataSource;
  v2 = [(MRClientDiagnosticsDataSource *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E695DF90] dictionary];
    map = v3->_map;
    v3->_map = v4;
  }

  return v3;
}

- (NSString)diagnostic
{
  v33 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_opt_new();
  [v3 appendFormat:@"Log History:\n\n"];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = self;
  v4 = [(MRClientDiagnosticsDataSource *)self map];
  v5 = [v4 allKeys];

  obj = v5;
  v22 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v20 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        [v3 appendFormat:@"Registered %@ Instances:\n\n", v7];
        v8 = [(MRClientDiagnosticsDataSource *)v21 map];
        v9 = [v8 objectForKeyedSubscript:v7];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v23 + 1) + 8 * j) diagnosticDescription];
              [v3 appendString:v15];

              v16 = [&stru_1F1513E38 stringByPaddingToLength:100 withString:@"-" startingAtIndex:0];
              [v3 appendString:v16];

              [v3 appendString:@"\n"];
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v12);
        }

        [v3 appendString:@"\n"];
      }

      v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  os_unfair_lock_unlock(&v21->_lock);
  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)add:(id)a3
{
  v12 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MRClientDiagnosticsDataSource *)self map];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v9 = [(MRClientDiagnosticsDataSource *)self map];
    [v9 setObject:v8 forKeyedSubscript:v5];
  }

  v10 = [(MRClientDiagnosticsDataSource *)self map];
  v11 = [v10 objectForKeyedSubscript:v5];
  [v11 addObject:v12];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)remove:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_opt_class();
  v12 = NSStringFromClass(v5);
  v6 = [(MRClientDiagnosticsDataSource *)self map];
  v7 = [v6 objectForKeyedSubscript:v12];
  [v7 removeObject:v4];

  v8 = [(MRClientDiagnosticsDataSource *)self map];
  v9 = [v8 objectForKeyedSubscript:v12];
  v10 = [v9 count];

  if (!v10)
  {
    v11 = [(MRClientDiagnosticsDataSource *)self map];
    [v11 setObject:0 forKeyedSubscript:v12];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end