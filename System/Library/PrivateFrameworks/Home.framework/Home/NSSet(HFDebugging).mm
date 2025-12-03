@interface NSSet(HFDebugging)
- (id)hf_prettyDescription;
- (id)hf_prettyExpensiveDescription;
- (id)hf_prettyFullDescription;
@end

@implementation NSSet(HFDebugging)

- (id)hf_prettyDescription
{
  v1 = [self na_map:&__block_literal_global_15_1];
  v2 = [v1 description];

  return v2;
}

- (id)hf_prettyExpensiveDescription
{
  v1 = [self na_map:&__block_literal_global_17_2];
  v2 = [v1 description];

  return v2;
}

- (id)hf_prettyFullDescription
{
  v1 = [self na_map:&__block_literal_global_19_0];
  v2 = [v1 description];

  return v2;
}

@end