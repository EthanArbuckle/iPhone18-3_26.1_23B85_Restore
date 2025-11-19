@interface PKLayoutAssetString
+ (id)nameToAssetsMapFromDictionaries:(id)a3;
- (PKLayoutAssetString)initWithDictionary:(id)a3;
@end

@implementation PKLayoutAssetString

+ (id)nameToAssetsMapFromDictionaries:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 count])
    {
      v5 = [v4 pk_arrayBySafelyApplyingBlock:&__block_literal_global_25];
      v6 = [v5 pk_groupDictionaryByApplyingBlock:&__block_literal_global_29];
    }

    else
    {
      v6 = [MEMORY[0x1E695DF20] dictionary];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

PKLayoutAssetString *__55__PKLayoutAssetString_nameToAssetsMapFromDictionaries___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKLayoutAssetString alloc] initWithDictionary:v2];

  return v3;
}

- (PKLayoutAssetString)initWithDictionary:(id)a3
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKLayoutAssetString;
  v5 = [(PKLayoutAssetString *)&v21 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"key"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 PKStringForKey:@"value"];
    displayText = v5->_displayText;
    v5->_displayText = v8;

    v10 = [v4 PKStringForKey:@"markdownValue"];
    markdownText = v5->_markdownText;
    v5->_markdownText = v10;

    v12 = PKOSVersionRequirementRangeFromLayoutAssetDictionary(v4);
    osVersionRange = v5->_osVersionRange;
    v5->_osVersionRange = v12;

    v14 = v5->_name;
    if (!v14 || ![(NSString *)v14 length]|| !v5->_displayText && !v5->_markdownText)
    {
      v19 = 0;
      goto LABEL_11;
    }

    v15 = [v4 mutableCopy];
    v22[0] = @"key";
    v22[1] = @"value";
    v22[2] = @"markdownValue";
    v22[3] = @"osVersionRange";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    [v15 removeObjectsForKeys:v16];
    if ([v15 count])
    {
      v17 = [v15 copy];
      configuration = v5->_configuration;
      v5->_configuration = v17;
    }
  }

  v19 = v5;
LABEL_11:

  return v19;
}

@end