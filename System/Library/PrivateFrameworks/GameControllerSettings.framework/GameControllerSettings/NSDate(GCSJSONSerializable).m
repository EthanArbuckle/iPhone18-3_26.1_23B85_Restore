@interface NSDate(GCSJSONSerializable)
+ (id)dateFormatter;
- (id)initWithJSONObject:()GCSJSONSerializable;
- (id)jsonObject;
@end

@implementation NSDate(GCSJSONSerializable)

+ (id)dateFormatter
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v0 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];

  return v0;
}

- (id)initWithJSONObject:()GCSJSONSerializable
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277CBEAA8];
    v6 = v4;
    v7 = [v5 dateFormatter];
    v8 = [v7 dateFromString:v6];

    [v8 timeIntervalSince1970];
    a1 = [a1 initWithTimeIntervalSince1970:?];

    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)jsonObject
{
  v2 = [MEMORY[0x277CBEAA8] dateFormatter];
  v3 = [v2 stringFromDate:a1];

  return v3;
}

@end