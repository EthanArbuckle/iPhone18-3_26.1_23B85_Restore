@interface IMAssistantMessageReadAttributeSanitizer
- (unint64_t)sanitize:(unint64_t)a3;
@end

@implementation IMAssistantMessageReadAttributeSanitizer

- (unint64_t)sanitize:(unint64_t)a3
{
  if ((a3 & 3) != 0)
  {
    return a3 & 3;
  }

  else
  {
    return 2;
  }
}

@end