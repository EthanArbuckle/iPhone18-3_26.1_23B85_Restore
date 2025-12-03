@interface IMAssistantMessageAttributeOptions
+ (id)optionsWithAttributes:(unint64_t)attributes;
+ (id)optionsWithAttributes:(unint64_t)attributes sanitizer:(id)sanitizer;
- (IMAssistantMessageAttributeOptions)initWithAttributes:(unint64_t)attributes sanitizer:(id)sanitizer;
@end

@implementation IMAssistantMessageAttributeOptions

- (IMAssistantMessageAttributeOptions)initWithAttributes:(unint64_t)attributes sanitizer:(id)sanitizer
{
  sanitizerCopy = sanitizer;
  v9.receiver = self;
  v9.super_class = IMAssistantMessageAttributeOptions;
  v7 = [(IMAssistantMessageAttributeOptions *)&v9 init];
  if (v7)
  {
    if (sanitizerCopy)
    {
      attributes = [sanitizerCopy sanitize:attributes];
    }

    v7->_attributes = attributes;
  }

  return v7;
}

+ (id)optionsWithAttributes:(unint64_t)attributes
{
  v3 = [[self alloc] initWithAttributes:attributes];

  return v3;
}

+ (id)optionsWithAttributes:(unint64_t)attributes sanitizer:(id)sanitizer
{
  sanitizerCopy = sanitizer;
  v7 = [[self alloc] initWithAttributes:attributes sanitizer:sanitizerCopy];

  return v7;
}

@end