@interface DMInducedPluginFailureManager
- (BOOL)shouldInduceFailureForPluginIdentifier:(id)identifier;
- (DMInducedPluginFailureManager)initWithEnvironment:(id)environment;
- (id)allInducedFailures;
- (void)addInducedFailure:(unint64_t)failure forPluginIdentifier:(id)identifier;
@end

@implementation DMInducedPluginFailureManager

- (DMInducedPluginFailureManager)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v8.receiver = self;
  v8.super_class = DMInducedPluginFailureManager;
  v5 = [(DMInducedPluginFailureManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DMInducedPluginFailureManager *)v5 setEnvironment:environmentCopy];
  }

  return v6;
}

- (void)addInducedFailure:(unint64_t)failure forPluginIdentifier:(id)identifier
{
  identifierCopy = identifier;
  environment = [(DMInducedPluginFailureManager *)self environment];
  inducedPluginFailures = [environment inducedPluginFailures];
  v8 = [inducedPluginFailures mutableCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v9 = [v8 objectForKeyedSubscript:identifierCopy];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:failure];
  v12 = [v10 arrayByAddingObject:v11];

  [v8 setObject:v12 forKeyedSubscript:identifierCopy];
  environment2 = [(DMInducedPluginFailureManager *)self environment];
  [environment2 setInducedPluginFailures:v8];
}

- (BOOL)shouldInduceFailureForPluginIdentifier:(id)identifier
{
  v4 = v3;
  identifierCopy = identifier;
  if ([(DMInducedPluginFailureManager *)self _isInternalBuild])
  {
    v7 = objc_opt_class();
    objc_sync_enter(v7);
    environment = [(DMInducedPluginFailureManager *)self environment];
    inducedPluginFailures = [environment inducedPluginFailures];

    v10 = [inducedPluginFailures objectForKeyedSubscript:identifierCopy];
    v11 = [v10 count];
    v12 = v11 != 0;
    if (v11)
    {
      v19 = [v10 objectAtIndexedSubscript:0];
      v13 = [v10 mutableCopy];
      [v13 removeObjectAtIndex:0];
      v14 = [inducedPluginFailures mutableCopy];
      if ([v13 count])
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      [v14 setObject:v15 forKeyedSubscript:identifierCopy];
      environment2 = [(DMInducedPluginFailureManager *)self environment];
      [environment2 setInducedPluginFailures:v14];

      v4 = v3;
    }

    else
    {
      v19 = 0;
    }

    objc_sync_exit(v7);
    if (v11)
    {
      unsignedIntegerValue = [v19 unsignedIntegerValue];
      if (unsignedIntegerValue)
      {
        if (unsignedIntegerValue == 1)
        {
          _DMLogFunc(v4, 6, @"Inducing failure (hang) for plugin %@");
          [(DMInducedPluginFailureManager *)self _hang];
        }

        else if (unsignedIntegerValue == 2)
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
  environment = [(DMInducedPluginFailureManager *)self environment];
  inducedPluginFailures = [environment inducedPluginFailures];

  return inducedPluginFailures;
}

@end