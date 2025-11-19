@interface DMInducedPluginFailureManager
- (BOOL)shouldInduceFailureForPluginIdentifier:(id)a3;
- (DMInducedPluginFailureManager)initWithEnvironment:(id)a3;
- (id)allInducedFailures;
- (void)addInducedFailure:(unint64_t)a3 forPluginIdentifier:(id)a4;
@end

@implementation DMInducedPluginFailureManager

- (DMInducedPluginFailureManager)initWithEnvironment:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DMInducedPluginFailureManager;
  v5 = [(DMInducedPluginFailureManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DMInducedPluginFailureManager *)v5 setEnvironment:v4];
  }

  return v6;
}

- (void)addInducedFailure:(unint64_t)a3 forPluginIdentifier:(id)a4
{
  v14 = a4;
  v6 = [(DMInducedPluginFailureManager *)self environment];
  v7 = [v6 inducedPluginFailures];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v9 = [v8 objectForKeyedSubscript:v14];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v12 = [v10 arrayByAddingObject:v11];

  [v8 setObject:v12 forKeyedSubscript:v14];
  v13 = [(DMInducedPluginFailureManager *)self environment];
  [v13 setInducedPluginFailures:v8];
}

- (BOOL)shouldInduceFailureForPluginIdentifier:(id)a3
{
  v4 = v3;
  v6 = a3;
  if ([(DMInducedPluginFailureManager *)self _isInternalBuild])
  {
    v7 = objc_opt_class();
    objc_sync_enter(v7);
    v8 = [(DMInducedPluginFailureManager *)self environment];
    v9 = [v8 inducedPluginFailures];

    v10 = [v9 objectForKeyedSubscript:v6];
    v11 = [v10 count];
    v12 = v11 != 0;
    if (v11)
    {
      v19 = [v10 objectAtIndexedSubscript:0];
      v13 = [v10 mutableCopy];
      [v13 removeObjectAtIndex:0];
      v14 = [v9 mutableCopy];
      if ([v13 count])
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      [v14 setObject:v15 forKeyedSubscript:v6];
      v16 = [(DMInducedPluginFailureManager *)self environment];
      [v16 setInducedPluginFailures:v14];

      v4 = v3;
    }

    else
    {
      v19 = 0;
    }

    objc_sync_exit(v7);
    if (v11)
    {
      v17 = [v19 unsignedIntegerValue];
      if (v17)
      {
        if (v17 == 1)
        {
          _DMLogFunc(v4, 6, @"Inducing failure (hang) for plugin %@");
          [(DMInducedPluginFailureManager *)self _hang];
        }

        else if (v17 == 2)
        {
          _DMLogFunc(v4, 6, @"Inducing failure (crash) for plugin %@");
          [(DMInducedPluginFailureManager *)self _crash];
        }
      }

      else
      {
        _DMLogFunc(v4, 6, @"Inducing failure for plugin %@");
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)allInducedFailures
{
  v2 = [(DMInducedPluginFailureManager *)self environment];
  v3 = [v2 inducedPluginFailures];

  return v3;
}

@end