@interface MPIdentifierSet(MPCAdditions)
- (uint64_t)mpc_intersectsSet:()MPCAdditions ignoringModelKind:;
@end

@implementation MPIdentifierSet(MPCAdditions)

- (uint64_t)mpc_intersectsSet:()MPCAdditions ignoringModelKind:
{
  v6 = a3;
  v7 = a1;
  v8 = v7;
  if (a4)
  {
    v9 = [v7 copyWithSource:@"MQF-ClearKind" block:&__block_literal_global_34839];

    v8 = v9;
  }

  v10 = [v8 intersectsSet:v6];

  return v10;
}

@end