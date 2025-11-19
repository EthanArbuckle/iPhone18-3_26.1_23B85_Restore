@interface PKLayoutAssetLink
+ (id)nameToAssetsMapFromDictionaries:(id)a3;
- (PKLayoutAssetLink)initWithDictionary:(id)a3;
@end

@implementation PKLayoutAssetLink

+ (id)nameToAssetsMapFromDictionaries:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 count])
    {
      v5 = [v4 pk_arrayBySafelyApplyingBlock:&__block_literal_global_146];
      v6 = [v5 pk_groupDictionaryByApplyingBlock:&__block_literal_global_32];
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

PKLayoutAssetLink *__53__PKLayoutAssetLink_nameToAssetsMapFromDictionaries___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKLayoutAssetLink alloc] initWithDictionary:v2];

  return v3;
}

- (PKLayoutAssetLink)initWithDictionary:(id)a3
{
  v31[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PKLayoutAssetLink;
  v5 = [(PKLayoutAssetLink *)&v30 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [v4 PKStringForKey:@"key"];
  name = v5->_name;
  v5->_name = v6;

  v8 = [v4 PKStringForKey:@"displayName"];
  displayText = v5->_displayText;
  v5->_displayText = v8;

  v10 = [v4 PKURLForKey:@"url"];
  url = v5->_url;
  v5->_url = v10;

  v12 = PKOSVersionRequirementRangeFromLayoutAssetDictionary(v4);
  osVersionRange = v5->_osVersionRange;
  v5->_osVersionRange = v12;

  v14 = [v4 objectForKey:@"adamID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v16 = [v14 stringByTrimmingCharactersInSet:v15];

    v17 = [MEMORY[0x1E696AE88] scannerWithString:v16];
    v29 = 0;
    v18 = [v17 scanUnsignedLongLong:&v29];
    v19 = 0;
    if (v18 && v29)
    {
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    }

    adamID = v5->_adamID;
    v5->_adamID = v19;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v21 = v14;
    v16 = v5->_adamID;
    v5->_adamID = v21;
  }

LABEL_10:
  v22 = v5->_name;
  if (!v22 || ![(NSString *)v22 length])
  {

    v27 = 0;
    goto LABEL_17;
  }

  v23 = [v4 mutableCopy];
  v31[0] = @"key";
  v31[1] = @"displayName";
  v31[2] = @"url";
  v31[3] = @"adamID";
  v31[4] = @"osVersionRange";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:5];
  [v23 removeObjectsForKeys:v24];
  if ([v23 count])
  {
    v25 = [v23 copy];
    configuration = v5->_configuration;
    v5->_configuration = v25;
  }

LABEL_15:
  v27 = v5;
LABEL_17:

  return v27;
}

@end