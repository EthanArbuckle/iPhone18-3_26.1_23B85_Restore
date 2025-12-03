@interface CNUIColorSerialization
+ (id)colorFromData:(id)data;
+ (id)colorFromDictionary:(id)dictionary;
+ (id)colorFromString:(id)string;
+ (id)colorsFromDictionaries:(id)dictionaries;
+ (id)colorsFromString:(id)string;
+ (id)dataForColor:(id)color;
+ (id)dictionariesForColors:(id)colors;
+ (id)stringForColor:(id)color;
+ (id)stringForColors:(id)colors;
@end

@implementation CNUIColorSerialization

+ (id)stringForColors:(id)colors
{
  v3 = *MEMORY[0x1E6996578];
  v4 = [self dictionariesForColors:colors];
  v5 = (*(v3 + 16))(v3, v4);

  return v5;
}

+ (id)colorsFromString:(id)string
{
  v4 = (*(*MEMORY[0x1E6996598] + 16))();
  v5 = [self colorsFromDictionaries:v4];

  return v5;
}

+ (id)dictionariesForColors:(id)colors
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CNUIColorSerialization_dictionariesForColors___block_invoke;
  v5[3] = &__block_descriptor_40_e31___NSDictionary_16__0__UIColor_8l;
  v5[4] = self;
  v3 = [colors _cn_map:v5];

  return v3;
}

+ (id)colorsFromDictionaries:(id)dictionaries
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__CNUIColorSerialization_colorsFromDictionaries___block_invoke;
  v5[3] = &__block_descriptor_40_e31___UIColor_16__0__NSDictionary_8l;
  v5[4] = self;
  v3 = [dictionaries _cn_compactMap:v5];

  return v3;
}

+ (id)stringForColor:(id)color
{
  v3 = [self dictionaryForColor:color];
  v4 = (*(*MEMORY[0x1E6996578] + 16))();

  return v4;
}

+ (id)colorFromString:(id)string
{
  v4 = (*(*MEMORY[0x1E6996598] + 16))();
  v5 = [self colorFromDictionary:v4];

  return v5;
}

+ (id)dataForColor:(id)color
{
  v3 = [self dictionaryForColor:color];
  v4 = [MEMORY[0x1E69967D8] dataWithObject:v3 error:0];

  return v4;
}

+ (id)colorFromData:(id)data
{
  v4 = [MEMORY[0x1E69967D8] objectWithData:data error:0];
  if (v4)
  {
    v5 = [self colorFromDictionary:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)colorFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  v5 = v4;
  if (v4)
  {
    if ([v4 integerValue])
    {
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"unsupported color type" userInfo:0];
      objc_exception_throw(v8);
    }

    v6 = [_CNUIComponentBasedColorSerialization colorFromDictionary:dictionaryCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end