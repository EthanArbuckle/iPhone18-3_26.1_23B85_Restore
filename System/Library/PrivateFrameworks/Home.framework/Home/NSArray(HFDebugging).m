@interface NSArray(HFDebugging)
- (id)hf_prettyDescription;
- (id)hf_prettyExpensiveDescription;
- (id)hf_prettyFullDescription;
@end

@implementation NSArray(HFDebugging)

- (id)hf_prettyDescription
{
  v1 = [a1 na_map:&__block_literal_global_44];
  v2 = [v1 description];

  return v2;
}

- (id)hf_prettyExpensiveDescription
{
  v1 = [a1 na_map:&__block_literal_global_11_1];
  v2 = [v1 description];

  return v2;
}

- (id)hf_prettyFullDescription
{
  v1 = [a1 na_map:&__block_literal_global_13_2];
  v2 = [v1 description];

  return v2;
}

@end