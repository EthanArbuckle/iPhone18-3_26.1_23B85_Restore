@interface ML3MatcherAuxData
- (void)dealloc;
@end

@implementation ML3MatcherAuxData

- (void)dealloc
{
  searchMatcher = self->_searchMatcher;
  self->_searchMatcher = 0;

  searchUTF8String = self->_searchUTF8String;
  if (searchUTF8String)
  {
    free(searchUTF8String);
    self->_searchUTF8String = 0;
  }

  v5.receiver = self;
  v5.super_class = ML3MatcherAuxData;
  [(ML3MatcherAuxData *)&v5 dealloc];
}

@end