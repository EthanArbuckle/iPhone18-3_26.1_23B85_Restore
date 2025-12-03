@interface IMAssistantMessageReadAttributeSanitizer
- (unint64_t)sanitize:(unint64_t)sanitize;
@end

@implementation IMAssistantMessageReadAttributeSanitizer

- (unint64_t)sanitize:(unint64_t)sanitize
{
  if ((sanitize & 3) != 0)
  {
    return sanitize & 3;
  }

  else
  {
    return 2;
  }
}

@end