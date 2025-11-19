@interface NSArray(FlatDescription)
- (id)flatDescription;
@end

@implementation NSArray(FlatDescription)

- (id)flatDescription
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [a1 componentsJoinedByString:{@", "}];
  v3 = [v1 stringWithFormat:@"[%@]", v2];

  return v3;
}

@end