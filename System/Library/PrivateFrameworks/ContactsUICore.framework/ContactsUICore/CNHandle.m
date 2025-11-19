@interface CNHandle
+ (id)geminiHandleForHandle:(id)a3;
+ (id)geminiHandleTypeMap;
+ (id)inPersonHandleForHandle:(id)a3;
+ (id)inPersonHandleTypeMap;
+ (id)keyTypeMapping;
+ (id)tuHandleForHandle:(id)a3;
+ (id)tuHandleTypeMap;
+ (int64_t)geminiHandleTypeForType:(unint64_t)a3;
+ (int64_t)inPersonHandleTypeForType:(unint64_t)a3;
+ (int64_t)tuHandleTypeFromType:(unint64_t)a3;
+ (unint64_t)handleTypeForPropertyKey:(id)a3;
- (CNHandle)initWithStringValue:(id)a3 customIdentifier:(id)a4 type:(unint64_t)a5;
@end

@implementation CNHandle

- (CNHandle)initWithStringValue:(id)a3 customIdentifier:(id)a4 type:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = CNHandle;
  v10 = [(CNHandle *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    stringValue = v10->_stringValue;
    v10->_stringValue = v11;

    v13 = [v9 copy];
    customIdentifier = v10->_customIdentifier;
    v10->_customIdentifier = v13;

    v10->_type = a5;
    v15 = v10;
  }

  return v10;
}

+ (unint64_t)handleTypeForPropertyKey:(id)a3
{
  v4 = a3;
  v5 = [a1 keyTypeMapping];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
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

+ (id)tuHandleForHandle:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  TUHandleClass = getTUHandleClass();
  v7 = TUHandleClass;
  if (v5 == 1)
  {
    v8 = [v4 stringValue];

    v9 = [(objc_class *)v7 handleWithDestinationID:v8];
  }

  else
  {
    v10 = [TUHandleClass alloc];
    v11 = [a1 tuHandleTypeFromType:{objc_msgSend(v4, "type")}];
    v8 = [v4 stringValue];

    v9 = [v10 initWithType:v11 value:v8];
  }

  v12 = v9;

  return v12;
}

+ (int64_t)tuHandleTypeFromType:(unint64_t)a3
{
  v4 = [a1 tuHandleTypeMap];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  return v7;
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

+ (id)inPersonHandleForHandle:(id)a3
{
  v3 = MEMORY[0x1E696E948];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 stringValue];
  v7 = objc_opt_class();
  v8 = [v4 type];

  v9 = [v5 initWithValue:v6 type:{objc_msgSend(v7, "inPersonHandleTypeForType:", v8)}];

  return v9;
}

+ (int64_t)inPersonHandleTypeForType:(unint64_t)a3
{
  v4 = [a1 inPersonHandleTypeMap];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  return v7;
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

+ (id)geminiHandleForHandle:(id)a3
{
  v3 = MEMORY[0x1E695CEA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 stringValue];
  v7 = objc_opt_class();
  v8 = [v4 type];

  v9 = [v5 initWithString:v6 type:{objc_msgSend(v7, "geminiHandleTypeForType:", v8)}];

  return v9;
}

+ (int64_t)geminiHandleTypeForType:(unint64_t)a3
{
  v4 = [a1 geminiHandleTypeMap];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  return v7;
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