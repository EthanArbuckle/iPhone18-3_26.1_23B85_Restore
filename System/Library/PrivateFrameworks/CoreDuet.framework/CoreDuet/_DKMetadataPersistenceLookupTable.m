@interface _DKMetadataPersistenceLookupTable
+ (id)attributeToKey;
+ (id)indexToKey;
+ (id)keyToAttribute;
+ (id)keyToIndex;
@end

@implementation _DKMetadataPersistenceLookupTable

+ (id)keyToIndex
{
  objc_opt_self();
  if (keyToIndex_onceToken != -1)
  {
    +[_DKMetadataPersistenceLookupTable keyToIndex];
  }

  v0 = keyToIndex_dict;

  return v0;
}

+ (id)attributeToKey
{
  objc_opt_self();
  if (attributeToKey_onceToken != -1)
  {
    +[_DKMetadataPersistenceLookupTable attributeToKey];
  }

  v0 = attributeToKey_dict;

  return v0;
}

+ (id)keyToAttribute
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___DKMetadataPersistenceLookupTable_keyToAttribute__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (keyToAttribute_onceToken != -1)
  {
    dispatch_once(&keyToAttribute_onceToken, block);
  }

  v1 = keyToAttribute_dict;

  return v1;
}

+ (id)indexToKey
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47___DKMetadataPersistenceLookupTable_indexToKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (indexToKey_onceToken != -1)
  {
    dispatch_once(&indexToKey_onceToken, block);
  }

  v1 = indexToKey_dict;

  return v1;
}

@end