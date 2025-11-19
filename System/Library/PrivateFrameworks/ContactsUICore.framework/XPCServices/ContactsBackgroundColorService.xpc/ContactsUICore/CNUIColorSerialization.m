@interface CNUIColorSerialization
+ (id)colorFromData:(id)a3;
+ (id)colorFromDictionary:(id)a3;
+ (id)colorFromString:(id)a3;
+ (id)colorsFromDictionaries:(id)a3;
+ (id)colorsFromString:(id)a3;
+ (id)dataForColor:(id)a3;
+ (id)dictionariesForColors:(id)a3;
+ (id)stringForColor:(id)a3;
+ (id)stringForColors:(id)a3;
@end

@implementation CNUIColorSerialization

+ (id)stringForColors:(id)a3
{
  v3 = CNJSONStringFromObject;
  v4 = [a1 dictionariesForColors:a3];
  v5 = (*(v3 + 16))(v3, v4);

  return v5;
}

+ (id)colorsFromString:(id)a3
{
  v4 = (*(CNObjectFromJSONString + 16))(CNObjectFromJSONString, a3);
  v5 = [a1 colorsFromDictionaries:v4];

  return v5;
}

+ (id)dictionariesForColors:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002734;
  v5[3] = &unk_1000084B8;
  v5[4] = a1;
  v3 = [a3 _cn_map:v5];

  return v3;
}

+ (id)colorsFromDictionaries:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000027C8;
  v5[3] = &unk_1000084D8;
  v5[4] = a1;
  v3 = [a3 _cn_compactMap:v5];

  return v3;
}

+ (id)stringForColor:(id)a3
{
  v3 = [a1 dictionaryForColor:a3];
  v4 = (*(CNJSONStringFromObject + 16))(CNJSONStringFromObject, v3);

  return v4;
}

+ (id)colorFromString:(id)a3
{
  v4 = (*(CNObjectFromJSONString + 16))(CNObjectFromJSONString, a3);
  v5 = [a1 colorFromDictionary:v4];

  return v5;
}

+ (id)dataForColor:(id)a3
{
  v3 = [a1 dictionaryForColor:a3];
  v4 = [CNPropertyListSerialization dataWithObject:v3 error:0];

  return v4;
}

+ (id)colorFromData:(id)a3
{
  v4 = [CNPropertyListSerialization objectWithData:a3 error:0];
  if (v4)
  {
    v5 = [a1 colorFromDictionary:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)colorFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"type"];
  v5 = v4;
  if (v4)
  {
    if ([v4 integerValue])
    {
      v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"unsupported color type" userInfo:0];
      objc_exception_throw(v8);
    }

    v6 = [_CNUIComponentBasedColorSerialization colorFromDictionary:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end