@interface DDActionNaturalLanguageContext
- (void)dealloc;
- (void)setResult:(__DDResult *)result;
@end

@implementation DDActionNaturalLanguageContext

- (void)setResult:(__DDResult *)result
{
  result = self->_result;
  if (result != result)
  {
    if (result)
    {
      CFRetain(result);
      result = self->_result;
    }

    if (result)
    {
      CFRelease(result);
    }

    self->_result = result;
  }
}

- (void)dealloc
{
  result = self->_result;
  if (result)
  {
    CFRelease(result);
  }

  v4.receiver = self;
  v4.super_class = DDActionNaturalLanguageContext;
  [(DDActionNaturalLanguageContext *)&v4 dealloc];
}

@end