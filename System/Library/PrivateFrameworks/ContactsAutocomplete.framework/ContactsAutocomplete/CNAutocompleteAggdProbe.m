@interface CNAutocompleteAggdProbe
+ (id)preparedBundleIdentifier:(id)a3;
- (CNAutocompleteAggdProbe)initWithKeyPrefix:(id)a3;
- (CNAutocompleteAggdProbe)initWithKeyPrefix:(id)a3 bundleIdentifier:(id)a4;
- (id)fullKey:(id)a3;
- (void)recordAddValue:(id)a3 forKey:(id)a4;
- (void)recordSetValue:(id)a3 forKey:(id)a4;
- (void)sendData;
@end

@implementation CNAutocompleteAggdProbe

+ (id)preparedBundleIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"com.apple."])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"com.apple.", "length")}];
  }

  else
  {
    v4 = @"unknown";
  }

  return v4;
}

- (CNAutocompleteAggdProbe)initWithKeyPrefix:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 mainBundle];
  v7 = [v6 bundleIdentifier];
  v8 = [(CNAutocompleteAggdProbe *)self initWithKeyPrefix:v5 bundleIdentifier:v7];

  return v8;
}

- (CNAutocompleteAggdProbe)initWithKeyPrefix:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = CNAutocompleteAggdProbe;
  v9 = [(CNAutocompleteAggdProbe *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyPrefix, a3);
    v11 = [objc_opt_class() preparedBundleIdentifier:v8];
    bundleID = v10->_bundleID;
    v10->_bundleID = v11;

    v13 = [MEMORY[0x277CBEB38] dictionary];
    setData = v10->_setData;
    v10->_setData = v13;

    v15 = [MEMORY[0x277CBEB38] dictionary];
    addData = v10->_addData;
    v10->_addData = v15;
  }

  return v10;
}

- (id)fullKey:(id)a3
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CNAutocompleteAggdProbe *)self keyPrefix];
  v6 = [(CNAutocompleteAggdProbe *)self bundleID:v5];
  v12[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  v9 = CNAutocompleteProbeBuildKey(v7, v8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)recordSetValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CNAutocompleteAggdProbe *)self setData];
  v8 = [(CNAutocompleteAggdProbe *)self fullKey:v6];

  [v9 setObject:v7 forKeyedSubscript:v8];
}

- (void)recordAddValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CNAutocompleteAggdProbe *)self addData];
  v8 = [(CNAutocompleteAggdProbe *)self fullKey:v6];

  [v9 setObject:v7 forKeyedSubscript:v8];
}

- (void)sendData
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(CNAutocompleteAggdProbe *)self addData];
  v4 = [(CNAutocompleteAggdProbe *)self setData];
  [CNAutocompleteAggdProbeAggdWrapper ADClientBatchKeysAddKeys:v3 setKeys:v4];

  v5 = CNALoggingContextProbes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CNAutocompleteAggdProbe *)self addData];
    v7 = [(CNAutocompleteAggdProbe *)self setData];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_2155FE000, v5, OS_LOG_TYPE_DEFAULT, "PROBES: add: %@ set: %@", &v11, 0x16u);
  }

  v8 = [(CNAutocompleteAggdProbe *)self addData];
  [v8 removeAllObjects];

  v9 = [(CNAutocompleteAggdProbe *)self setData];
  [v9 removeAllObjects];

  v10 = *MEMORY[0x277D85DE8];
}

@end