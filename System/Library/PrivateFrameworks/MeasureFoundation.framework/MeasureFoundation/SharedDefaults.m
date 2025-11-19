@interface SharedDefaults
+ (id)defaults;
+ (int64_t)currentMeasureUnits;
+ (void)setupSpecifier:(id)a3;
- (SharedDefaults)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation SharedDefaults

- (SharedDefaults)init
{
  v6.receiver = self;
  v6.super_class = SharedDefaults;
  v2 = [(SharedDefaults *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [objc_opt_class() measureUnits];
    [v3 addObserver:v2 forKeyPath:v4 options:5 context:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [objc_opt_class() measureUnits];
  [v3 removeObserver:self forKeyPath:v4];

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
  block[4] = a1;
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

+ (void)setupSpecifier:(id)a3
{
  v10 = a3;
  v4 = [v10 propertyForKey:*MEMORY[0x277D3FEF8]];
  v5 = [v10 propertyForKey:*MEMORY[0x277D3FFF0]];
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
    v8 = [a1 getDefaultValues];
    v9 = [v8 objectForKeyedSubscript:v6];
    if (v9)
    {
      [v10 setProperty:v9 forKey:*MEMORY[0x277D3FEF0]];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v8 = [objc_opt_class() measureUnits];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [objc_opt_class() measureUnits];
    v13 = [v10 valueForKeyPath:v11];

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
  v2 = [a1 defaults];
  v3 = [v2 cachedMeasureUnits];

  return v3;
}

@end