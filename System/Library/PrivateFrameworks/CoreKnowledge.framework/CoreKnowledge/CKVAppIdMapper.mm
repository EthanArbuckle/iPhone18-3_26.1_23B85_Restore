@interface CKVAppIdMapper
+ (BOOL)isKnownAppId:(id)id;
+ (id)_buildKnownIdentifierToUniversalOriginAppIdMap;
+ (id)_getAllKnownAppIds;
+ (id)_getKnownAppIdMap;
+ (id)convertToUnversalAppId:(id)id;
@end

@implementation CKVAppIdMapper

+ (id)_getAllKnownAppIds
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CKVAppIdMapper__getAllKnownAppIds__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_getAllKnownAppIds_sharedSetToken != -1)
  {
    dispatch_once(&_getAllKnownAppIds_sharedSetToken, block);
  }

  v2 = _getAllKnownAppIds_allKnownAppIds;

  return v2;
}

void __36__CKVAppIdMapper__getAllKnownAppIds__block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x1E695DFA8] set];
  v2 = [*(a1 + 32) _getKnownAppIdMap];
  v3 = [v2 allKeys];
  [v8 addObjectsFromArray:v3];

  v4 = [*(a1 + 32) _getKnownAppIdMap];
  v5 = [v4 allValues];
  [v8 addObjectsFromArray:v5];

  [v8 addObject:*MEMORY[0x1E69ABC70]];
  [v8 addObject:*MEMORY[0x1E69ABC58]];
  [v8 addObject:*MEMORY[0x1E69ABC88]];
  [v8 addObject:*MEMORY[0x1E69ABC98]];
  [v8 addObject:*MEMORY[0x1E69ABC90]];
  [v8 addObject:*MEMORY[0x1E69ABC78]];
  [v8 addObject:*MEMORY[0x1E69ABCB0]];
  [v8 addObject:*MEMORY[0x1E69ABC60]];
  [v8 addObject:*MEMORY[0x1E69ABC80]];
  [v8 addObject:*MEMORY[0x1E69ABCC0]];
  v6 = [MEMORY[0x1E695DFD8] setWithSet:v8];
  v7 = _getAllKnownAppIds_allKnownAppIds;
  _getAllKnownAppIds_allKnownAppIds = v6;
}

+ (id)_buildKnownIdentifierToUniversalOriginAppIdMap
{
  v8[6] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69ABCB8];
  v7[0] = @"com.apple.siriVoiceShortcuts";
  v7[1] = @"com.apple.VoiceShortcuts";
  v8[0] = v2;
  v8[1] = v2;
  v3 = *MEMORY[0x1E69ABCA0];
  v7[2] = @"com.apple.MobileSMS";
  v7[3] = @"com.apple.iChat";
  v8[2] = v3;
  v8[3] = v3;
  v4 = *MEMORY[0x1E69ABCA8];
  v7[4] = @"com.apple.mobileslideshow";
  v7[5] = @"com.apple.Photos";
  v8[4] = v4;
  v8[5] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];

  return v5;
}

+ (id)_getKnownAppIdMap
{
  if (_getKnownAppIdMap_sharedMapToken != -1)
  {
    dispatch_once(&_getKnownAppIdMap_sharedMapToken, &__block_literal_global_372);
  }

  v3 = _getKnownAppIdMap_sharedMap;

  return v3;
}

uint64_t __35__CKVAppIdMapper__getKnownAppIdMap__block_invoke()
{
  _getKnownAppIdMap_sharedMap = +[CKVAppIdMapper _buildKnownIdentifierToUniversalOriginAppIdMap];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)isKnownAppId:(id)id
{
  idCopy = id;
  _getAllKnownAppIds = [self _getAllKnownAppIds];
  v6 = [_getAllKnownAppIds containsObject:idCopy];

  return v6;
}

+ (id)convertToUnversalAppId:(id)id
{
  v17 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v4 = +[CKVAppIdMapper _getKnownAppIdMap];
  v5 = [v4 valueForKey:idCopy];

  v6 = idCopy;
  if (v5)
  {
    v7 = CKLogContextVocabulary;
    v8 = os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO);
    v6 = v5;
    if (v8)
    {
      v11 = 136315650;
      v12 = "+[CKVAppIdMapper convertToUnversalAppId:]";
      v13 = 2112;
      v14 = idCopy;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1C8683000, v7, OS_LOG_TYPE_INFO, "%s Convert %@ to a universal appId: %@", &v11, 0x20u);
      v6 = v5;
    }
  }

  v9 = v6;

  return v9;
}

@end