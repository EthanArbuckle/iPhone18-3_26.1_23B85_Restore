@interface IMAssistantMessageAttributeOptions
+ (id)optionsWithAttributes:(unint64_t)a3;
+ (id)optionsWithAttributes:(unint64_t)a3 sanitizer:(id)a4;
- (IMAssistantMessageAttributeOptions)initWithAttributes:(unint64_t)a3 sanitizer:(id)a4;
@end

@implementation IMAssistantMessageAttributeOptions

- (IMAssistantMessageAttributeOptions)initWithAttributes:(unint64_t)a3 sanitizer:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = IMAssistantMessageAttributeOptions;
  v7 = [(IMAssistantMessageAttributeOptions *)&v9 init];
  if (v7)
  {
    if (v6)
    {
      a3 = [v6 sanitize:a3];
    }

    v7->_attributes = a3;
  }

  return v7;
}

+ (id)optionsWithAttributes:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithAttributes:a3];

  return v3;
}

+ (id)optionsWithAttributes:(unint64_t)a3 sanitizer:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithAttributes:a3 sanitizer:v6];

  return v7;
}

@end