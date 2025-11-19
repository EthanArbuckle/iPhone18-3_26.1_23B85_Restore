@interface ICMigrationDeviceInfo
+ (void)logDeviceList:(id)a3;
- (ICMigrationDeviceInfo)init;
- (ICMigrationDeviceInfo)initWithName:(id)a3 upgradable:(BOOL)a4 upgraded:(BOOL)a5;
- (id)attributedStringWithAttributes:(id)a3 asteriskColor:(id)a4;
@end

@implementation ICMigrationDeviceInfo

- (ICMigrationDeviceInfo)init
{
  [(ICMigrationDeviceInfo *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICMigrationDeviceInfo)initWithName:(id)a3 upgradable:(BOOL)a4 upgraded:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = ICMigrationDeviceInfo;
  v10 = [(ICMigrationDeviceInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, a3);
    v11->_upgradable = a4;
    v11->_upgraded = a5;
  }

  return v11;
}

+ (void)logDeviceList:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = os_log_create("com.apple.notes", "Migration");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 loggableDescription];
          *buf = 138412290;
          v16 = v10;
          _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }
}

- (id)attributedStringWithAttributes:(id)a3 asteriskColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CCAB48]);
  v9 = [(ICMigrationDeviceInfo *)self name];
  v10 = [v8 initWithString:v9 attributes:v6];

  if (![(ICMigrationDeviceInfo *)self upgradable])
  {
    v11 = [v6 mutableCopy];
    [v11 setObject:v7 forKeyedSubscript:*MEMORY[0x277D740C0]];
    v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" *" attributes:v11];
    [v10 appendAttributedString:v12];
  }

  return v10;
}

@end