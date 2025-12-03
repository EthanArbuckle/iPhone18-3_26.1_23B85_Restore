@interface MLEQPreset
+ (id)eqPresetForBuiltInPresetType:(int)type;
+ (id)eqPresetForName:(id)name;
- (MLEQPreset)initWithBuiltInPresetType:(int)type;
@end

@implementation MLEQPreset

- (MLEQPreset)initWithBuiltInPresetType:(int)type
{
  v10.receiver = self;
  v10.super_class = MLEQPreset;
  v4 = [(MLEQPreset *)&v10 init];
  if (v4)
  {
    v5 = MLNSStringForBuiltInPreset(type, 0);
    name = v4->_name;
    v4->_name = v5;

    v7 = MLNSStringForBuiltInPreset(type, 1);
    localizedName = v4->_localizedName;
    v4->_localizedName = v7;

    v4->_builtInPresetType = type;
  }

  return v4;
}

+ (id)eqPresetForBuiltInPresetType:(int)type
{
  v3 = *&type;
  if (!sPresetsByBuiltInType || (CFDictionaryGetValue(sPresetsByBuiltInType, type), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [[MLEQPreset alloc] initWithBuiltInPresetType:v3];
    Mutable = sPresetsByBuiltInType;
    if (!sPresetsByBuiltInType)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
      sPresetsByBuiltInType = Mutable;
    }

    CFDictionarySetValue(Mutable, [(MLEQPreset *)v5 builtInPresetType], v5);
    v4 = v5;
    v7 = sPresetsByPresetName;
    if (!sPresetsByPresetName)
    {
      v7 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      sPresetsByPresetName = v7;
    }

    CFDictionarySetValue(v7, [(MLEQPreset *)v4 name], v4);
  }

  return v4;
}

+ (id)eqPresetForName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    if (sPresetsByPresetName)
    {
      v4 = CFDictionaryGetValue(sPresetsByPresetName, nameCopy);
      if (v4)
      {
        goto LABEL_11;
      }
    }

    v5 = 100;
    while (1)
    {
      v6 = MLNSStringForBuiltInPreset(v5, 0);
      v7 = [v6 isEqualToString:nameCopy];

      if (v7)
      {
        break;
      }

      v5 = (v5 + 1);
      if (v5 == 122)
      {
        goto LABEL_9;
      }
    }

    v4 = [MLEQPreset eqPresetForBuiltInPresetType:v5];
    if (v4)
    {
      goto LABEL_11;
    }

LABEL_9:
    punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v9 = [nameCopy stringByTrimmingCharactersInSet:punctuationCharacterSet];
    intValue = [v9 intValue];

    if ((intValue - 100) <= 0x15)
    {
      v4 = [MLEQPreset eqPresetForBuiltInPresetType:intValue];
LABEL_11:
      v11 = v4;
      goto LABEL_13;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

@end