@interface NSString(CSSEscaping)
- (id)CM_stringByAddingCSSEscapes;
@end

@implementation NSString(CSSEscaping)

- (id)CM_stringByAddingCSSEscapes
{
  if (qword_27FC699E0 != -1)
  {
    dispatch_once(&qword_27FC699E0, &__block_literal_global_107);
  }

  selfCopy = self;
  v3 = [selfCopy stringByReplacingOccurrencesOfString:@"\ withString:@"\\\];

  v4 = [v3 componentsSeparatedByCharactersInSet:_MergedGlobals_61];
  v5 = [v4 componentsJoinedByString:@"\\a "];

  v6 = [v5 stringByReplacingOccurrencesOfString:@" withString:@"\];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"<" withString:@"\\3c "];

  v8 = [v7 stringByReplacingOccurrencesOfString:@">" withString:@"\\3e "];

  return v8;
}

@end