@interface _BRSuffixToTypeMapping
- (BOOL)appliesToType:(id)a3;
@end

@implementation _BRSuffixToTypeMapping

- (BOOL)appliesToType:(id)a3
{
  v4 = a3;
  v5 = [(_BRSuffixToTypeMapping *)self type];
  v6 = UTTypeConformsTo(v4, v5);

  return v6 != 0;
}

@end