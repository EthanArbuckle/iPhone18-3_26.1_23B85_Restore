@interface NSString(HFStringGeneratoreAdditions)
- (id)dynamicStringForSize:()HFStringGeneratoreAdditions attributes:;
- (id)stringWithAttributes:()HFStringGeneratoreAdditions;
@end

@implementation NSString(HFStringGeneratoreAdditions)

- (id)dynamicStringForSize:()HFStringGeneratoreAdditions attributes:
{
  v4 = MEMORY[0x277CCA898];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:self attributes:v5];

  return v6;
}

- (id)stringWithAttributes:()HFStringGeneratoreAdditions
{
  v4 = MEMORY[0x277CCA898];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:self attributes:v5];

  return v6;
}

@end