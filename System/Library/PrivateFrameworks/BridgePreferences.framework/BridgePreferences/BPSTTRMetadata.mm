@interface BPSTTRMetadata
- (BPSTTRMetadata)init;
- (BPSTTRMetadata)initWithComponent:(unint64_t)component;
- (BPSTTRMetadata)initWithComponentName:(id)name componentVersion:(id)version componentID:(int64_t)d;
- (id)_parameters;
- (id)queryItems;
- (void)_setComponentValuesFromComponent:(unint64_t)component;
@end

@implementation BPSTTRMetadata

- (BPSTTRMetadata)init
{
  v5.receiver = self;
  v5.super_class = BPSTTRMetadata;
  v2 = [(BPSTTRMetadata *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BPSTTRMetadata *)v2 setComponentID:-1];
  }

  return v3;
}

- (BPSTTRMetadata)initWithComponent:(unint64_t)component
{
  v7.receiver = self;
  v7.super_class = BPSTTRMetadata;
  v4 = [(BPSTTRMetadata *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(BPSTTRMetadata *)v4 _setComponentValuesFromComponent:component];
  }

  return v5;
}

- (BPSTTRMetadata)initWithComponentName:(id)name componentVersion:(id)version componentID:(int64_t)d
{
  nameCopy = name;
  versionCopy = version;
  v13.receiver = self;
  v13.super_class = BPSTTRMetadata;
  v10 = [(BPSTTRMetadata *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(BPSTTRMetadata *)v10 setComponentName:nameCopy];
    [(BPSTTRMetadata *)v11 setComponentVersion:versionCopy];
    [(BPSTTRMetadata *)v11 setComponentID:d];
  }

  return v11;
}

- (void)_setComponentValuesFromComponent:(unint64_t)component
{
  if (component > 1)
  {
    if (component == 2)
    {
      [(BPSTTRMetadata *)self setComponentID:871848];
      v5 = @"HealthKit";
    }

    else
    {
      if (component != 3)
      {
        goto LABEL_8;
      }

      [(BPSTTRMetadata *)self setComponentID:547620];
      v5 = @"Phone App";
    }

    [(BPSTTRMetadata *)self setComponentName:v5];
    v4 = @"watchOS";
    goto LABEL_15;
  }

  if (!component)
  {
LABEL_12:
    [(BPSTTRMetadata *)self setComponentID:576381];
    [(BPSTTRMetadata *)self setComponentName:@"Pepper Pairing"];
    [(BPSTTRMetadata *)self setComponentVersion:@"New Bugs"];
    return;
  }

  if (component != 1)
  {
LABEL_8:
    v6 = bps_setup_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_241E74000, v6, OS_LOG_TYPE_DEFAULT, "Error: Invalid BPSTTRMetadataComponent! Defaulting to Pepper Pairing | New Bugs", v7, 2u);
    }

    goto LABEL_12;
  }

  [(BPSTTRMetadata *)self setComponentID:1070638];
  [(BPSTTRMetadata *)self setComponentName:@"Watch Faces"];
  v4 = @"New Bugs";
LABEL_15:

  [(BPSTTRMetadata *)self setComponentVersion:v4];
}

- (id)_parameters
{
  v20[5] = *MEMORY[0x277D85DE8];
  componentName = [(BPSTTRMetadata *)self componentName];
  if (!componentName)
  {
    goto LABEL_9;
  }

  v4 = componentName;
  componentVersion = [(BPSTTRMetadata *)self componentVersion];
  if (!componentVersion)
  {

    goto LABEL_9;
  }

  v6 = componentVersion;
  componentID = [(BPSTTRMetadata *)self componentID];

  if (componentID == -1)
  {
LABEL_9:
    v13 = MEMORY[0x277CBEC10];
    goto LABEL_10;
  }

  v19[0] = @"ComponentName";
  componentName2 = [(BPSTTRMetadata *)self componentName];
  v20[0] = componentName2;
  v19[1] = @"ComponentVersion";
  componentVersion2 = [(BPSTTRMetadata *)self componentVersion];
  v20[1] = componentVersion2;
  v19[2] = @"ComponentID";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BPSTTRMetadata componentID](self, "componentID")}];
  stringValue = [v10 stringValue];
  v20[2] = stringValue;
  v20[3] = @"Watch";
  v19[3] = @"DeviceClasses";
  v19[4] = @"Keywords";
  v20[4] = @"1210568";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v13 = [v12 mutableCopy];

  title = [(BPSTTRMetadata *)self title];

  if (title)
  {
    title2 = [(BPSTTRMetadata *)self title];
    [v13 setObject:title2 forKey:@"Title"];
  }

  radarDescription = [(BPSTTRMetadata *)self radarDescription];

  if (radarDescription)
  {
    radarDescription2 = [(BPSTTRMetadata *)self radarDescription];
    [v13 setObject:radarDescription2 forKey:@"Description"];
  }

LABEL_10:

  return v13;
}

- (id)queryItems
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _parameters = [(BPSTTRMetadata *)self _parameters];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [_parameters countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(_parameters);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [_parameters objectForKey:v9];
        v11 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:v9 value:v10];
        [v3 addObject:v11];
      }

      v6 = [_parameters countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

@end