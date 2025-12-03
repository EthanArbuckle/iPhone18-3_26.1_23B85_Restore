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
  v3 = CNJSONStringFromObject;
  v4 = [self dictionariesForColors:colors];
  v5 = (*(v3 + 16))(v3, v4);

  return v5;
}

+ (id)colorsFromString:(id)string
{
  v4 = (*(CNObjectFromJSONString + 16))(CNObjectFromJSONString, string);
  v5 = [self colorsFromDictionaries:v4];

  return v5;
}

+ (id)dictionariesForColors:(id)colors
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002734;
  v5[3] = &unk_1000084B8;
  v5[4] = self;
  v3 = [colors _cn_map:v5];

  return v3;
}

+ (id)colorsFromDictionaries:(id)dictionaries
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000027C8;
  v5[3] = &unk_1000084D8;
  v5[4] = self;
  v3 = [dictionaries _cn_compactMap:v5];

  return v3;
}

+ (id)stringForColor:(id)color
{
  v3 = [self dictionaryForColor:color];
  v4 = (*(CNJSONStringFromObject + 16))(CNJSONStringFromObject, v3);

  return v4;
}

+ (id)colorFromString:(id)string
{
  v4 = (*(CNObjectFromJSONString + 16))(CNObjectFromJSONString, string);
  v5 = [self colorFromDictionary:v4];

  return v5;
}

+ (id)dataForColor:(id)color
{
  v3 = [self dictionaryForColor:color];
  v4 = [CNPropertyListSerialization dataWithObject:v3 error:0];

  return v4;
}

+ (id)colorFromData:(id)data
{
  v4 = [CNPropertyListSerialization objectWithData:data error:0];
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
      v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"unsupported color type" userInfo:0];
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