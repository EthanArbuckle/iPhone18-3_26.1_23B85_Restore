@interface GKAutoPeerIDTable
- (void)setObject:(id)object forKey:(unsigned int)key;
@end

@implementation GKAutoPeerIDTable

- (void)setObject:(id)object forKey:(unsigned int)key
{
  v19 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "[GKAutoPeerIDTable setObject:forKey:]";
      v13 = 1024;
      v14 = 631;
      v15 = 2112;
      objectCopy = object;
      v17 = 1024;
      keyCopy = key;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKAutoPeerIDTable setObject:[%@] forKey:[%d] ignored", &v9, 0x2Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)objectForKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d GKAutoPeerIDTable: CANNOT CREATE NSSTRING?", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end