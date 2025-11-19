@interface _DPBitValueMap
+ (id)bitValueMapForKey:(id)a3;
+ (id)bitValueMapForKey:(id)a3 bitValueMapsDirectory:(id)a4;
+ (id)bitValueMapForKey:(id)a3 fromConfigurationsFile:(id)a4;
+ (void)initialize;
+ (void)removeBitValueMapForKey:(id)a3;
- (_DPBitValueMap)initWithKey:(id)a3 bitValueMapsDirectory:(id)a4;
- (id)bitValueForString:(id)a3;
@end

@implementation _DPBitValueMap

+ (void)initialize
{
  if (initialize_onceToken_0 != -1)
  {
    +[_DPBitValueMap initialize];
  }
}

- (_DPBitValueMap)initWithKey:(id)a3 bitValueMapsDirectory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _DPBitValueMap;
  v9 = [(_DPBitValueMap *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    v11 = [objc_opt_class() bitValueMapForKey:v7 fromConfigurationsFile:v8];
    map = v10->_map;
    v10->_map = v11;
  }

  return v10;
}

+ (id)bitValueMapForKey:(id)a3
{
  v4 = a3;
  v5 = +[_DPStrings bitValueMapDirectoryPath];
  v6 = [a1 bitValueMapForKey:v4 bitValueMapsDirectory:v5];

  return v6;
}

+ (id)bitValueMapForKey:(id)a3 bitValueMapsDirectory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _allBitValueMaps;
  objc_sync_enter(v8);
  v9 = [_allBitValueMaps objectForKeyedSubscript:v6];
  if (!v9)
  {
    v9 = [[a1 alloc] initWithKey:v6 bitValueMapsDirectory:v7];
    if (v9)
    {
      [_allBitValueMaps setObject:v9 forKeyedSubscript:v6];
    }
  }

  objc_sync_exit(v8);

  return v9;
}

+ (void)removeBitValueMapForKey:(id)a3
{
  v5 = a3;
  v3 = objc_autoreleasePoolPush();
  v4 = _allBitValueMaps;
  objc_sync_enter(v4);
  [_allBitValueMaps removeObjectForKey:v5];
  objc_sync_exit(v4);

  objc_autoreleasePoolPop(v3);
}

+ (id)bitValueMapForKey:(id)a3 fromConfigurationsFile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.plist", v6, v5];
  v9 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:v8];
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

- (id)bitValueForString:(id)a3
{
  v4 = a3;
  if (!v4 || ([(NSDictionary *)self->_map objectForKeyedSubscript:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = &unk_2839760D8;
  }

  return v5;
}

@end