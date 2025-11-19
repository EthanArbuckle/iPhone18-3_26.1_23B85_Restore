@interface FCNewsTabiUnloadGraphOnBackgroundConfiguration
- (FCNewsTabiUnloadGraphOnBackgroundConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiUnloadGraphOnBackgroundConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [v3 appendFormat:@"\n\tenabled: %d;", -[FCNewsTabiUnloadGraphOnBackgroundConfiguration enabled](self, "enabled")];
  [v3 appendFormat:@"\n\tgraphIdleDuration: %lu", -[FCNewsTabiUnloadGraphOnBackgroundConfiguration graphIdleDuration](self, "graphIdleDuration")];
  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiUnloadGraphOnBackgroundConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FCNewsTabiUnloadGraphOnBackgroundConfiguration;
  v5 = [(FCNewsTabiUnloadGraphOnBackgroundConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__FCNewsTabiUnloadGraphOnBackgroundConfiguration_initWithDictionary___block_invoke;
    v11[3] = &unk_1E7C36F40;
    v8 = v4;
    v12 = v8;
    v5->_enabled = __69__FCNewsTabiUnloadGraphOnBackgroundConfiguration_initWithDictionary___block_invoke(v11);
    v9 = FCAppConfigurationNumberValue(v8, @"graphIdleDuration", &unk_1F2E703F8);
    v5->_graphIdleDuration = [v9 integerValue];
  }

  return v5;
}

uint64_t __69__FCNewsTabiUnloadGraphOnBackgroundConfiguration_initWithDictionary___block_invoke(uint64_t a1)
{
  if (NFInternalBuild())
  {
    v2 = NewsCoreUserDefaults();
    v3 = [v2 integerForKey:@"news.features.tabiBackgroundUnloading"];

    if (v3 == 1)
    {
      return 1;
    }

    if (v3 == 2)
    {
      return 0;
    }
  }

  v5 = *(a1 + 32);

  return FCAppConfigurationBoolValue(v5, @"enabled", 1);
}

@end