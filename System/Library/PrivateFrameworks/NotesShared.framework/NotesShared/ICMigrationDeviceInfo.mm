@interface ICMigrationDeviceInfo
+ (void)logDeviceList:(id)list;
- (ICMigrationDeviceInfo)init;
- (ICMigrationDeviceInfo)initWithName:(id)name upgradable:(BOOL)upgradable upgraded:(BOOL)upgraded;
- (id)attributedStringWithAttributes:(id)attributes asteriskColor:(id)color;
@end

@implementation ICMigrationDeviceInfo

- (ICMigrationDeviceInfo)init
{
  [(ICMigrationDeviceInfo *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICMigrationDeviceInfo)initWithName:(id)name upgradable:(BOOL)upgradable upgraded:(BOOL)upgraded
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = ICMigrationDeviceInfo;
  v10 = [(ICMigrationDeviceInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, name);
    v11->_upgradable = upgradable;
    v11->_upgraded = upgraded;
  }

  return v11;
}

+ (void)logDeviceList:(id)list
{
  v18 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [listCopy countByEnumeratingWithState:&v11 objects:v17 count:16];
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
          objc_enumerationMutation(listCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = os_log_create("com.apple.notes", "Migration");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          loggableDescription = [v8 loggableDescription];
          *buf = 138412290;
          v16 = loggableDescription;
          _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }
      }

      v5 = [listCopy countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }
}

- (id)attributedStringWithAttributes:(id)attributes asteriskColor:(id)color
{
  attributesCopy = attributes;
  colorCopy = color;
  v8 = objc_alloc(MEMORY[0x277CCAB48]);
  name = [(ICMigrationDeviceInfo *)self name];
  v10 = [v8 initWithString:name attributes:attributesCopy];

  if (![(ICMigrationDeviceInfo *)self upgradable])
  {
    v11 = [attributesCopy mutableCopy];
    [v11 setObject:colorCopy forKeyedSubscript:*MEMORY[0x277D740C0]];
    v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" *" attributes:v11];
    [v10 appendAttributedString:v12];
  }

  return v10;
}

@end