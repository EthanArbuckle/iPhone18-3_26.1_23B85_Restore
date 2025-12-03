@interface SharedDefaults
+ (id)defaults;
+ (int64_t)currentMeasureUnits;
+ (void)setupSpecifier:(id)specifier;
- (SharedDefaults)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SharedDefaults

- (SharedDefaults)init
{
  v6.receiver = self;
  v6.super_class = SharedDefaults;
  v2 = [(SharedDefaults *)&v6 init];
  if (v2)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    measureUnits = [objc_opt_class() measureUnits];
    [standardUserDefaults addObserver:v2 forKeyPath:measureUnits options:5 context:0];
  }

  return v2;
}

- (void)dealloc
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  measureUnits = [objc_opt_class() measureUnits];
  [standardUserDefaults removeObserver:self forKeyPath:measureUnits];

  v5.receiver = self;
  v5.super_class = SharedDefaults;
  [(SharedDefaults *)&v5 dealloc];
}

+ (id)defaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SharedDefaults_defaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaults_onceToken[0] != -1)
  {
    dispatch_once(defaults_onceToken, block);
  }

  v2 = defaults_defaults;

  return v2;
}

uint64_t __26__SharedDefaults_defaults__block_invoke(uint64_t a1)
{
  defaults_defaults = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (void)setupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy propertyForKey:*MEMORY[0x277D3FEF8]];
  v5 = [specifierCopy propertyForKey:*MEMORY[0x277D3FFF0]];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && [v4 isEqualToString:@"com.apple.measure"])
  {
    getDefaultValues = [self getDefaultValues];
    v9 = [getDefaultValues objectForKeyedSubscript:v6];
    if (v9)
    {
      [specifierCopy setProperty:v9 forKey:*MEMORY[0x277D3FEF0]];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  measureUnits = [objc_opt_class() measureUnits];
  v9 = [pathCopy isEqualToString:measureUnits];

  if (v9)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    measureUnits2 = [objc_opt_class() measureUnits];
    v13 = [standardUserDefaults valueForKeyPath:measureUnits2];

    if (v13)
    {
      SystemDefault = [v13 integerValue];
    }

    else
    {
      SystemDefault = MeasureUnitsGetSystemDefault();
    }

    [(SharedDefaults *)self setCachedMeasureUnits:SystemDefault];
  }
}

+ (int64_t)currentMeasureUnits
{
  defaults = [self defaults];
  cachedMeasureUnits = [defaults cachedMeasureUnits];

  return cachedMeasureUnits;
}

@end