@interface _BRSuffixToTypeMapping
- (BOOL)appliesToType:(id)type;
@end

@implementation _BRSuffixToTypeMapping

- (BOOL)appliesToType:(id)type
{
  typeCopy = type;
  type = [(_BRSuffixToTypeMapping *)self type];
  v6 = UTTypeConformsTo(typeCopy, type);

  return v6 != 0;
}

@end