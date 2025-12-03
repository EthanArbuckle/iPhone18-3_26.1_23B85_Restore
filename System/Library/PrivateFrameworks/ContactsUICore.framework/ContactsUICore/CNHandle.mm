@interface CNHandle
+ (id)geminiHandleForHandle:(id)handle;
+ (id)geminiHandleTypeMap;
+ (id)inPersonHandleForHandle:(id)handle;
+ (id)inPersonHandleTypeMap;
+ (id)keyTypeMapping;
+ (id)tuHandleForHandle:(id)handle;
+ (id)tuHandleTypeMap;
+ (int64_t)geminiHandleTypeForType:(unint64_t)type;
+ (int64_t)inPersonHandleTypeForType:(unint64_t)type;
+ (int64_t)tuHandleTypeFromType:(unint64_t)type;
+ (unint64_t)handleTypeForPropertyKey:(id)key;
- (CNHandle)initWithStringValue:(id)value customIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation CNHandle

- (CNHandle)initWithStringValue:(id)value customIdentifier:(id)identifier type:(unint64_t)type
{
  valueCopy = value;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = CNHandle;
  v10 = [(CNHandle *)&v17 init];
  if (v10)
  {
    v11 = [valueCopy copy];
    stringValue = v10->_stringValue;
    v10->_stringValue = v11;

    v13 = [identifierCopy copy];
    customIdentifier = v10->_customIdentifier;
    v10->_customIdentifier = v13;

    v10->_type = type;
    v15 = v10;
  }

  return v10;
}

+ (unint64_t)handleTypeForPropertyKey:(id)key
{
  keyCopy = key;
  keyTypeMapping = [self keyTypeMapping];
  v6 = [keyTypeMapping objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

+ (id)keyTypeMapping
{
  if (keyTypeMapping_cn_once_token_1 != -1)
  {
    +[CNHandle keyTypeMapping];
  }

  v3 = keyTypeMapping_cn_once_object_1;

  return v3;
}

void __26__CNHandle_keyTypeMapping__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C208];
  v3[0] = *MEMORY[0x1E695C330];
  v3[1] = v0;
  v4[0] = &unk_1F1645E08;
  v4[1] = &unk_1F1645E20;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = keyTypeMapping_cn_once_object_1;
  keyTypeMapping_cn_once_object_1 = v1;
}

+ (id)tuHandleForHandle:(id)handle
{
  handleCopy = handle;
  type = [handleCopy type];
  TUHandleClass = getTUHandleClass();
  v7 = TUHandleClass;
  if (type == 1)
  {
    stringValue = [handleCopy stringValue];

    v9 = [(objc_class *)v7 handleWithDestinationID:stringValue];
  }

  else
  {
    v10 = [TUHandleClass alloc];
    v11 = [self tuHandleTypeFromType:{objc_msgSend(handleCopy, "type")}];
    stringValue = [handleCopy stringValue];

    v9 = [v10 initWithType:v11 value:stringValue];
  }

  v12 = v9;

  return v12;
}

+ (int64_t)tuHandleTypeFromType:(unint64_t)type
{
  tuHandleTypeMap = [self tuHandleTypeMap];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v6 = [tuHandleTypeMap objectForKeyedSubscript:v5];
  integerValue = [v6 integerValue];

  return integerValue;
}

+ (id)tuHandleTypeMap
{
  if (tuHandleTypeMap_cn_once_token_2 != -1)
  {
    +[CNHandle(TUHandle) tuHandleTypeMap];
  }

  v3 = tuHandleTypeMap_cn_once_object_2;

  return v3;
}

void __37__CNHandle_TUHandle__tuHandleTypeMap__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F1645E08;
  v2[1] = &unk_1F1645E20;
  v3[0] = &unk_1F1645E38;
  v3[1] = &unk_1F1645E50;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = tuHandleTypeMap_cn_once_object_2;
  tuHandleTypeMap_cn_once_object_2 = v0;
}

+ (id)inPersonHandleForHandle:(id)handle
{
  v3 = MEMORY[0x1E696E948];
  handleCopy = handle;
  v5 = [v3 alloc];
  stringValue = [handleCopy stringValue];
  v7 = objc_opt_class();
  type = [handleCopy type];

  v9 = [v5 initWithValue:stringValue type:{objc_msgSend(v7, "inPersonHandleTypeForType:", type)}];

  return v9;
}

+ (int64_t)inPersonHandleTypeForType:(unint64_t)type
{
  inPersonHandleTypeMap = [self inPersonHandleTypeMap];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v6 = [inPersonHandleTypeMap objectForKeyedSubscript:v5];
  integerValue = [v6 integerValue];

  return integerValue;
}

+ (id)inPersonHandleTypeMap
{
  if (inPersonHandleTypeMap_cn_once_token_3 != -1)
  {
    +[CNHandle(INPersonHandle) inPersonHandleTypeMap];
  }

  v3 = inPersonHandleTypeMap_cn_once_object_3;

  return v3;
}

void __49__CNHandle_INPersonHandle__inPersonHandleTypeMap__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F1645E68;
  v2[1] = &unk_1F1645E08;
  v3[0] = &unk_1F1645E80;
  v3[1] = &unk_1F1645E38;
  v2[2] = &unk_1F1645E20;
  v3[2] = &unk_1F1645E98;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = inPersonHandleTypeMap_cn_once_object_3;
  inPersonHandleTypeMap_cn_once_object_3 = v0;
}

+ (id)geminiHandleForHandle:(id)handle
{
  v3 = MEMORY[0x1E695CEA8];
  handleCopy = handle;
  v5 = [v3 alloc];
  stringValue = [handleCopy stringValue];
  v7 = objc_opt_class();
  type = [handleCopy type];

  v9 = [v5 initWithString:stringValue type:{objc_msgSend(v7, "geminiHandleTypeForType:", type)}];

  return v9;
}

+ (int64_t)geminiHandleTypeForType:(unint64_t)type
{
  geminiHandleTypeMap = [self geminiHandleTypeMap];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v6 = [geminiHandleTypeMap objectForKeyedSubscript:v5];
  integerValue = [v6 integerValue];

  return integerValue;
}

+ (id)geminiHandleTypeMap
{
  if (geminiHandleTypeMap_cn_once_token_4 != -1)
  {
    +[CNHandle(CNGeminiHandle) geminiHandleTypeMap];
  }

  v3 = geminiHandleTypeMap_cn_once_object_4;

  return v3;
}

void __47__CNHandle_CNGeminiHandle__geminiHandleTypeMap__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F1645E68;
  v2[1] = &unk_1F1645E08;
  v3[0] = &unk_1F1645EB0;
  v3[1] = &unk_1F1645E80;
  v2[2] = &unk_1F1645E20;
  v3[2] = &unk_1F1645E98;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = geminiHandleTypeMap_cn_once_object_4;
  geminiHandleTypeMap_cn_once_object_4 = v0;
}

@end