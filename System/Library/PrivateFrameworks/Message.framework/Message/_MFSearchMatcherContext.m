@interface _MFSearchMatcherContext
- (void)dealloc;
@end

@implementation _MFSearchMatcherContext

- (void)dealloc
{
  lastSearchString = self->_lastSearchString;
  if (lastSearchString)
  {
    free(lastSearchString);
  }

  v4.receiver = self;
  v4.super_class = _MFSearchMatcherContext;
  [(_MFSearchMatcherContext *)&v4 dealloc];
}

@end