@interface NSDictionary(FMDVolatileMetaDataRecord)
- (id)fm_dictionaryByDeeplySettingValuesForKeysWithDictionary:()FMDVolatileMetaDataRecord;
@end

@implementation NSDictionary(FMDVolatileMetaDataRecord)

- (id)fm_dictionaryByDeeplySettingValuesForKeysWithDictionary:()FMDVolatileMetaDataRecord
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__NSDictionary_FMDVolatileMetaDataRecord__fm_dictionaryByDeeplySettingValuesForKeysWithDictionary___block_invoke;
  v8[3] = &unk_1E86BD7C0;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

@end