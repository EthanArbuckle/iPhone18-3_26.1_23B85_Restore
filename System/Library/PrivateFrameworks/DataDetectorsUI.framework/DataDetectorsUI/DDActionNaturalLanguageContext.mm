@interface DDActionNaturalLanguageContext
- (void)dealloc;
- (void)setResult:(__DDResult *)a3;
@end

@implementation DDActionNaturalLanguageContext

- (void)setResult:(__DDResult *)a3
{
  result = self->_result;
  if (result != a3)
  {
    if (a3)
    {
      CFRetain(a3);
      result = self->_result;
    }

    if (result)
    {
      CFRelease(result);
    }

    self->_result = a3;
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