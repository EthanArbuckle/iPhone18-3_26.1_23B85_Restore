@interface _DPBitValueMap
+ (id)bitValueMapForKey:(id)key;
+ (id)bitValueMapForKey:(id)key bitValueMapsDirectory:(id)directory;
+ (id)bitValueMapForKey:(id)key fromConfigurationsFile:(id)file;
+ (void)initialize;
+ (void)removeBitValueMapForKey:(id)key;
- (_DPBitValueMap)initWithKey:(id)key bitValueMapsDirectory:(id)directory;
- (id)bitValueForString:(id)string;
@end

@implementation _DPBitValueMap

+ (void)initialize
{
  if (initialize_onceToken_0 != -1)
  {
    +[_DPBitValueMap initialize];
  }
}

- (_DPBitValueMap)initWithKey:(id)key bitValueMapsDirectory:(id)directory
{
  keyCopy = key;
  directoryCopy = directory;
  v14.receiver = self;
  v14.super_class = _DPBitValueMap;
  v9 = [(_DPBitValueMap *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    v11 = [objc_opt_class() bitValueMapForKey:keyCopy fromConfigurationsFile:directoryCopy];
    map = v10->_map;
    v10->_map = v11;
  }

  return v10;
}

+ (id)bitValueMapForKey:(id)key
{
  keyCopy = key;
  v5 = +[_DPStrings bitValueMapDirectoryPath];
  v6 = [self bitValueMapForKey:keyCopy bitValueMapsDirectory:v5];

  return v6;
}

+ (id)bitValueMapForKey:(id)key bitValueMapsDirectory:(id)directory
{
  keyCopy = key;
  directoryCopy = directory;
  v8 = _allBitValueMaps;
  objc_sync_enter(v8);
  v9 = [_allBitValueMaps objectForKeyedSubscript:keyCopy];
  if (!v9)
  {
    v9 = [[self alloc] initWithKey:keyCopy bitValueMapsDirectory:directoryCopy];
    if (v9)
    {
      [_allBitValueMaps setObject:v9 forKeyedSubscript:keyCopy];
    }
  }

  objc_sync_exit(v8);

  return v9;
}

+ (void)removeBitValueMapForKey:(id)key
{
  keyCopy = key;
  v3 = objc_autoreleasePoolPush();
  v4 = _allBitValueMaps;
  objc_sync_enter(v4);
  [_allBitValueMaps removeObjectForKey:keyCopy];
  objc_sync_exit(v4);

  objc_autoreleasePoolPop(v3);
}

+ (id)bitValueMapForKey:(id)key fromConfigurationsFile:(id)file
{
  keyCopy = key;
  fileCopy = file;
  v7 = objc_autoreleasePoolPush();
  keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.plist", fileCopy, keyCopy];
  v9 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:keyCopy];
  v10 = [MEMORY[0x277CBEC10] mutableCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59___DPBitValueMap_bitValueMapForKey_fromConfigurationsFile___block_invoke;
  v14[3] = &unk_27858B590;
  v15 = v10;
  v11 = v10;
  [v9 enumerateObjectsUsingBlock:v14];
  v12 = [v11 copy];

  objc_autoreleasePoolPop(v7);

  return v12;
}

- (id)bitValueForString:(id)string
{
  stringCopy = string;
  if (!stringCopy || ([(NSDictionary *)self->_map objectForKeyedSubscript:stringCopy], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = &unk_2839760D8;
  }

  return v5;
}

@end