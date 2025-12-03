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
    dateFormatter = [v5 dateFormatter];
    v8 = [dateFormatter dateFromString:v6];

    [v8 timeIntervalSince1970];
    self = [self initWithTimeIntervalSince1970:?];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)jsonObject
{
  dateFormatter = [MEMORY[0x277CBEAA8] dateFormatter];
  v3 = [dateFormatter stringFromDate:self];

  return v3;
}

@end