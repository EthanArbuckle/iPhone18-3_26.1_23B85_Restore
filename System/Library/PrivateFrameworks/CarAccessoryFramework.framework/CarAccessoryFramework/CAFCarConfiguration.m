@interface CAFCarConfiguration
+ (BOOL)getBoolean:(id)a3 key:(id)a4;
+ (id)getType:(id)a3;
+ (id)getUUID:(id)a3 instanceID:(id)a4;
- (BOOL)updateConfiguration:(id)a3;
- (BOOL)updateConfiguration:(id)a3 pluginConfig:(id)a4;
- (CAFCarConfiguration)initWithCoder:(id)a3;
- (CAFCarConfiguration)initWithIdentifier:(id)a3 session:(id)a4;
- (CAFCarConfiguration)initWithName:(id)a3 identifier:(id)a4 rightHandDrive:(BOOL)a5 pluginCount:(unint64_t)a6 sessionAnalytics:(id)a7;
- (CAFCarConfigurationDelegate)delegate;
- (NSString)description;
- (id)copyWithoutPlugins;
- (id)currentDescriptionForCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation CAFCarConfiguration

- (CAFCarConfiguration)initWithIdentifier:(id)a3 session:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = CAFCarConfiguration;
  v9 = [(CAFCarConfiguration *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uniqueIdentifier, a3);
    v11 = [v8 configuration];
    v12 = [v11 name];
    name = v10->_name;
    v10->_name = v12;

    v14 = [v8 configuration];
    v10->_rightHandDrive = [v14 rightHandDrive];

    v15 = [v8 configuration];
    v10->_pluginCount = [v15 vehicleDataPluginCount];

    v16 = [[CAFSessionAnalytics alloc] initWithSession:v8];
    sessionAnalytics = v10->_sessionAnalytics;
    v10->_sessionAnalytics = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pluginConfigs = v10->_pluginConfigs;
    v10->_pluginConfigs = v18;

    v20 = [[CAFCachedDescription alloc] initWithCacheable:v10];
    cachedDescription = v10->_cachedDescription;
    v10->_cachedDescription = v20;
  }

  return v10;
}

- (id)copyWithoutPlugins
{
  v3 = [CAFCarConfiguration alloc];
  v4 = [(CAFCarConfiguration *)self name];
  v5 = [(CAFCarConfiguration *)self uniqueIdentifier];
  v6 = [(CAFCarConfiguration *)self rightHandDrive];
  v7 = [(CAFCarConfiguration *)self pluginCount];
  v8 = [(CAFCarConfiguration *)self sessionAnalytics];
  v9 = [(CAFCarConfiguration *)v3 initWithName:v4 identifier:v5 rightHandDrive:v6 pluginCount:v7 sessionAnalytics:v8];

  return v9;
}

- (CAFCarConfiguration)initWithName:(id)a3 identifier:(id)a4 rightHandDrive:(BOOL)a5 pluginCount:(unint64_t)a6 sessionAnalytics:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v23.receiver = self;
  v23.super_class = CAFCarConfiguration;
  v16 = [(CAFCarConfiguration *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_name, a3);
    objc_storeStrong(&v17->_uniqueIdentifier, a4);
    v17->_rightHandDrive = a5;
    v17->_pluginCount = a6;
    objc_storeStrong(&v17->_sessionAnalytics, a7);
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pluginConfigs = v17->_pluginConfigs;
    v17->_pluginConfigs = v18;

    v20 = [[CAFCachedDescription alloc] initWithCacheable:v17];
    cachedDescription = v17->_cachedDescription;
    v17->_cachedDescription = v20;
  }

  return v17;
}

- (BOOL)updateConfiguration:(id)a3 pluginConfig:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CAFCarConfiguration *)self pluginConfigs];
  [v8 setObject:v6 forKeyedSubscript:v7];

  v9 = [(CAFCarConfiguration *)self cachedDescription];
  [v9 setNeedsRefreshDescription];

  v10 = CAFGeneralLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CAFCarConfiguration updateConfiguration:pluginConfig:];
  }

  v11 = [(CAFCarConfiguration *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(CAFCarConfiguration *)self delegate];
    v14 = [(CAFCarConfiguration *)self pluginConfigs];
    [v13 car:self didUpdatePluginConfigs:v14];
  }

  return 1;
}

- (BOOL)updateConfiguration:(id)a3
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__CAFCarConfiguration_updateConfiguration___block_invoke;
  v11[3] = &unk_27890F3C0;
  v11[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v11];
  v4 = [(CAFCarConfiguration *)self cachedDescription];
  [v4 setNeedsRefreshDescription];

  v5 = CAFGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CAFCarConfiguration updateConfiguration:];
  }

  v6 = [(CAFCarConfiguration *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CAFCarConfiguration *)self delegate];
    v9 = [(CAFCarConfiguration *)self pluginConfigs];
    [v8 car:self didUpdatePluginConfigs:v9];
  }

  return 1;
}

void __43__CAFCarConfiguration_updateConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = v5;
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    objc_opt_class();
    v8 = v6;
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = [*(a1 + 32) pluginConfigs];
      [v9 setObject:v8 forKeyedSubscript:v7];
    }

    else
    {

      v8 = CAFGeneralLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __43__CAFCarConfiguration_updateConfiguration___block_invoke_cold_1(v7, v8);
      }
    }

    v10 = v7;
  }

  else
  {

    v10 = CAFGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __43__CAFCarConfiguration_updateConfiguration___block_invoke_cold_2(v10);
    }
  }
}

- (NSString)description
{
  v2 = [(CAFCarConfiguration *)self cachedDescription];
  v3 = [v2 description];

  return v3;
}

+ (BOOL)getBoolean:(id)a3 key:(id)a4
{
  v4 = [a3 objectForKeyedSubscript:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getType:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"type"];

  v5 = v4;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [CAFCarConfiguration getTypeString:v6];

  return v7;
}

+ (id)getUUID:(id)a3 instanceID:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 longLongValue];
  v7 = [v5 longLongValue];

  v11[0] = BYTE3(v6);
  v11[1] = BYTE2(v6);
  v11[2] = BYTE1(v6);
  v11[3] = v6;
  v11[4] = BYTE5(v6);
  v11[5] = BYTE4(v6);
  v11[6] = HIBYTE(v6);
  v11[7] = BYTE6(v6);
  v11[8] = HIBYTE(v7);
  v11[9] = BYTE6(v7);
  v11[10] = BYTE5(v7);
  v11[11] = BYTE4(v7);
  v11[12] = BYTE3(v7);
  v11[13] = BYTE2(v7);
  v11[14] = BYTE1(v7);
  v11[15] = v7;
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v11];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = CAFGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CAFCarConfiguration setDelegate:];
  }

  objc_storeWeak(&self->_delegate, v4);
  v6 = [(CAFCarConfiguration *)self cachedDescription];
  [v6 setNeedsRefreshDescription];
}

- (CAFCarConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CAFCarConfiguration;
  v5 = [(CAFCarConfiguration *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAFCarConfigurationNameKey"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAFCarConfigurationUniqueIdentifierKey"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAFCarConfigurationPluginCountKey"];
    v5->_pluginCount = [v10 unsignedIntValue];

    if ([v4 containsValueForKey:@"CAFCarConfigurationPluginConfigs"])
    {
      v11 = MEMORY[0x277CBEB98];
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = [v11 setWithObjects:{v12, v13, v14, v15, v16, objc_opt_class(), 0}];
      v18 = [v4 decodeObjectOfClasses:v17 forKey:@"CAFCarConfigurationPluginConfigs"];
      pluginConfigs = v5->_pluginConfigs;
      v5->_pluginConfigs = v18;
    }

    v5->_rightHandDrive = [v4 decodeBoolForKey:@"CAFCarConfigurationRightHandDrive"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CAFCarConfigurationSessionAnalytics"];
    sessionAnalytics = v5->_sessionAnalytics;
    v5->_sessionAnalytics = v20;

    v22 = [[CAFCachedDescription alloc] initWithCacheable:v5];
    cachedDescription = v5->_cachedDescription;
    v5->_cachedDescription = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_name forKey:@"CAFCarConfigurationNameKey"];
  [v6 encodeObject:self->_uniqueIdentifier forKey:@"CAFCarConfigurationUniqueIdentifierKey"];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_pluginCount];
  [v6 encodeObject:v4 forKey:@"CAFCarConfigurationPluginCountKey"];

  pluginConfigs = self->_pluginConfigs;
  if (pluginConfigs)
  {
    [v6 encodeObject:pluginConfigs forKey:@"CAFCarConfigurationPluginConfigs"];
  }

  [v6 encodeBool:self->_rightHandDrive forKey:@"CAFCarConfigurationRightHandDrive"];
  [v6 encodeObject:self->_sessionAnalytics forKey:@"CAFCarConfigurationSessionAnalytics"];
}

- (id)currentDescriptionForCache:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(CAFCarConfiguration *)self delegate];
  v7 = [(CAFCarConfiguration *)self name];
  v8 = [(CAFCarConfiguration *)self uniqueIdentifier];
  v9 = [v8 UUIDString];
  v10 = [(CAFCarConfiguration *)self pluginConfigs];
  v11 = [v4 stringWithFormat:@"<%@: %p delegate=%p name=%@ uniqueIdentifier=%@ pluginCount=%lu/%lu>", v5, self, v6, v7, v9, objc_msgSend(v10, "count"), -[CAFCarConfiguration pluginCount](self, "pluginCount")];

  return v11;
}

- (CAFCarConfigurationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateConfiguration:pluginConfig:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(&dword_231618000, v0, OS_LOG_TYPE_DEBUG, "%s %@ updating delegate", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)updateConfiguration:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(&dword_231618000, v0, OS_LOG_TYPE_DEBUG, "%s %@ updating delegate", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __43__CAFCarConfiguration_updateConfiguration___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_231618000, a2, OS_LOG_TYPE_ERROR, "Parsing configuration from pluginID: %@ failed for pluginConfig", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_7();
  v4 = 2048;
  v5 = v0;
  _os_log_debug_impl(&dword_231618000, v1, OS_LOG_TYPE_DEBUG, "%s %@ updating delegate to %p", v3, 0x20u);
  v2 = *MEMORY[0x277D85DE8];
}

@end