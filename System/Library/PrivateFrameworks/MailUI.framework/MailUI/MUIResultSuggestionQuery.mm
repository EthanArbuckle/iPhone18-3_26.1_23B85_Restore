@interface MUIResultSuggestionQuery
- (void)cancel;
@end

@implementation MUIResultSuggestionQuery

- (void)cancel
{
  if (self)
  {
    self = self->_underlyingQuery;
  }

  [(MUIResultSuggestionQuery *)self cancel];
}

@end