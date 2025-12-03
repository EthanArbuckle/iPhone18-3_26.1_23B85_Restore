@interface CNAutocompleteAggdProbe
+ (id)preparedBundleIdentifier:(id)identifier;
- (CNAutocompleteAggdProbe)initWithKeyPrefix:(id)prefix;
- (CNAutocompleteAggdProbe)initWithKeyPrefix:(id)prefix bundleIdentifier:(id)identifier;
- (id)fullKey:(id)key;
- (void)recordAddValue:(id)value forKey:(id)key;
- (void)recordSetValue:(id)value forKey:(id)key;
- (void)sendData;
@end

@implementation CNAutocompleteAggdProbe

+ (id)preparedBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"com.apple."])
  {
    v4 = [identifierCopy substringFromIndex:{objc_msgSend(@"com.apple.", "length")}];
  }

  else
  {
    v4 = @"unknown";
  }

  return v4;
}

- (CNAutocompleteAggdProbe)initWithKeyPrefix:(id)prefix
{
  v4 = MEMORY[0x277CCA8D8];
  prefixCopy = prefix;
  mainBundle = [v4 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v8 = [(CNAutocompleteAggdProbe *)self initWithKeyPrefix:prefixCopy bundleIdentifier:bundleIdentifier];

  return v8;
}

- (CNAutocompleteAggdProbe)initWithKeyPrefix:(id)prefix bundleIdentifier:(id)identifier
{
  prefixCopy = prefix;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = CNAutocompleteAggdProbe;
  v9 = [(CNAutocompleteAggdProbe *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyPrefix, prefix);
    v11 = [objc_opt_class() preparedBundleIdentifier:identifierCopy];
    bundleID = v10->_bundleID;
    v10->_bundleID = v11;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    setData = v10->_setData;
    v10->_setData = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    addData = v10->_addData;
    v10->_addData = dictionary2;
  }

  return v10;
}

- (id)fullKey:(id)key
{
  v12[3] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  keyPrefix = [(CNAutocompleteAggdProbe *)self keyPrefix];
  v6 = [(CNAutocompleteAggdProbe *)self bundleID:keyPrefix];
  v12[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  v9 = CNAutocompleteProbeBuildKey(v7, v8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)recordSetValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  setData = [(CNAutocompleteAggdProbe *)self setData];
  v8 = [(CNAutocompleteAggdProbe *)self fullKey:keyCopy];

  [setData setObject:valueCopy forKeyedSubscript:v8];
}

- (void)recordAddValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  addData = [(CNAutocompleteAggdProbe *)self addData];
  v8 = [(CNAutocompleteAggdProbe *)self fullKey:keyCopy];

  [addData setObject:valueCopy forKeyedSubscript:v8];
}

- (void)sendData
{
  v15 = *MEMORY[0x277D85DE8];
  addData = [(CNAutocompleteAggdProbe *)self addData];
  setData = [(CNAutocompleteAggdProbe *)self setData];
  [CNAutocompleteAggdProbeAggdWrapper ADClientBatchKeysAddKeys:addData setKeys:setData];

  v5 = CNALoggingContextProbes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    addData2 = [(CNAutocompleteAggdProbe *)self addData];
    setData2 = [(CNAutocompleteAggdProbe *)self setData];
    v11 = 138412546;
    v12 = addData2;
    v13 = 2112;
    v14 = setData2;
    _os_log_impl(&dword_2155FE000, v5, OS_LOG_TYPE_DEFAULT, "PROBES: add: %@ set: %@", &v11, 0x16u);
  }

  addData3 = [(CNAutocompleteAggdProbe *)self addData];
  [addData3 removeAllObjects];

  setData3 = [(CNAutocompleteAggdProbe *)self setData];
  [setData3 removeAllObjects];

  v10 = *MEMORY[0x277D85DE8];
}

@end