@interface MPIdentifierSet(MPCAdditions)
- (uint64_t)mpc_intersectsSet:()MPCAdditions ignoringModelKind:;
@end

@implementation MPIdentifierSet(MPCAdditions)

- (uint64_t)mpc_intersectsSet:()MPCAdditions ignoringModelKind:
{
  v6 = a3;
  selfCopy = self;
  v8 = selfCopy;
  if (a4)
  {
    v9 = [selfCopy copyWithSource:@"MQF-ClearKind" block:&__block_literal_global_34839];

    v8 = v9;
  }

  v10 = [v8 intersectsSet:v6];

  return v10;
}

@end