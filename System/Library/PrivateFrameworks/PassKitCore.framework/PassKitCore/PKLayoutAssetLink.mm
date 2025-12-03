@interface PKLayoutAssetLink
+ (id)nameToAssetsMapFromDictionaries:(id)dictionaries;
- (PKLayoutAssetLink)initWithDictionary:(id)dictionary;
@end

@implementation PKLayoutAssetLink

+ (id)nameToAssetsMapFromDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v4 = dictionariesCopy;
  if (dictionariesCopy)
  {
    if ([dictionariesCopy count])
    {
      v5 = [v4 pk_arrayBySafelyApplyingBlock:&__block_literal_global_146];
      dictionary = [v5 pk_groupDictionaryByApplyingBlock:&__block_literal_global_32];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF20] dictionary];
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

PKLayoutAssetLink *__53__PKLayoutAssetLink_nameToAssetsMapFromDictionaries___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKLayoutAssetLink alloc] initWithDictionary:v2];

  return v3;
}

- (PKLayoutAssetLink)initWithDictionary:(id)dictionary
{
  v31[5] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = PKLayoutAssetLink;
  v5 = [(PKLayoutAssetLink *)&v30 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [dictionaryCopy PKStringForKey:@"key"];
  name = v5->_name;
  v5->_name = v6;

  v8 = [dictionaryCopy PKStringForKey:@"displayName"];
  displayText = v5->_displayText;
  v5->_displayText = v8;

  v10 = [dictionaryCopy PKURLForKey:@"url"];
  url = v5->_url;
  v5->_url = v10;

  v12 = PKOSVersionRequirementRangeFromLayoutAssetDictionary(dictionaryCopy);
  osVersionRange = v5->_osVersionRange;
  v5->_osVersionRange = v12;

  v14 = [dictionaryCopy objectForKey:@"adamID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v16 = [v14 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

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

  v23 = [dictionaryCopy mutableCopy];
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