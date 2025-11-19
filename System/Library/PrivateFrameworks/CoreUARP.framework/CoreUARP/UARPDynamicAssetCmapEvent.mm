@interface UARPDynamicAssetCmapEvent
+ (id)encodedClasses;
- (BOOL)decodeCrash:(id)a3 inDictionary:(id)a4;
- (UARPDynamicAssetCmapEvent)init;
- (UARPDynamicAssetCmapEvent)initWithCoder:(id)a3;
- (UARPDynamicAssetCmapEvent)initWithSectionName:(id)a3 decoderId:(unsigned int)a4 inputDictionary:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPDynamicAssetCmapEvent

- (UARPDynamicAssetCmapEvent)init
{
  [(UARPDynamicAssetCmapEvent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetCmapEvent)initWithSectionName:(id)a3 decoderId:(unsigned int)a4 inputDictionary:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v34.receiver = self;
  v34.super_class = UARPDynamicAssetCmapEvent;
  v10 = [(UARPDynamicAssetCmapEvent *)&v34 init];
  if (v10)
  {
    v29 = v8;
    v11 = [v8 copy];
    sectionName = v10->_sectionName;
    v10->_sectionName = v11;

    v13 = os_log_create("com.apple.accessoryupdater.uarp", "crsh");
    log = v10->_log;
    v10->_log = v13;

    v10->_decoderId = a4;
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    input = v10->_input;
    v10->_input = v15;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = [v9 allKeys];
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v26 = v10->_log;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [UARPDynamicAssetCmapEvent initWithSectionName:v26 decoderId:? inputDictionary:?];
            }

            v25 = 0;
            v8 = v29;
            goto LABEL_15;
          }

          v23 = v10->_input;
          v24 = [v9 objectForKeyedSubscript:v22];
          [(NSMutableDictionary *)v23 setValue:v24 forKey:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v8 = v29;
  }

  v25 = v10;
LABEL_15:

  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

- (UARPDynamicAssetCmapEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = UARPDynamicAssetCmapEvent;
  v5 = [(UARPDynamicAssetCmapEvent *)&v18 init];
  if (v5)
  {
    v5->_decoderId = [v4 decodeIntForKey:@"decoderId"];
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    input = v5->_input;
    v5->_input = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"input"];
    v9 = +[UARPDynamicAssetCmapEvent encodedClasses];
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v9 fromData:v8 error:0];
    v11 = v5->_input;
    v5->_input = v10;

    if (!v5->_input && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UARPDynamicAssetCmapEvent initWithCoder:];
    }

    v12 = os_log_create("com.apple.accessoryupdater.uarp", "crsh");
    log = v5->_log;
    v5->_log = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SectionName"];
    sectionName = v5->_sectionName;
    v5->_sectionName = v14;

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  decoderId = self->_decoderId;
  v5 = a3;
  [v5 encodeInt:decoderId forKey:@"decoderId"];
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self->_input requiringSecureCoding:1 error:0];
  [v5 encodeObject:v6 forKey:@"input"];
  [v5 encodeObject:self->_sectionName forKey:@"SectionName"];
}

- (BOOL)decodeCrash:(id)a3 inDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[UARPDynamicAssetCrashLogDecoder alloc] initWithDecoderId:self->_decoderId sectionName:self->_sectionName inputDictionary:self->_input];
  v9 = [(UARPDynamicAssetCrashLogDecoder *)v8 decodeCrashLog:v7 inDictionary:v6];

  return v9;
}

+ (id)encodedClasses
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  v3 = [MEMORY[0x277CBEB98] setWithArray:v2];

  return v3;
}

- (void)initWithSectionName:(os_log_t)log decoderId:inputDictionary:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[UARPDynamicAssetCmapEvent initWithSectionName:decoderId:inputDictionary:]";
  _os_log_error_impl(&dword_247AA7000, log, OS_LOG_TYPE_ERROR, "%s: Input Dictionary is not type String", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end