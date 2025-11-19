@interface HMServiceGroup(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMServiceGroup(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 uniqueIdentifier];
  [v5 appendObject:v6 withName:@"UUID" options:2];

  v7 = [a1 name];
  [v5 setObject:v7 forKeyedSubscript:@"name"];

  if ([v4 detailLevel] == 2)
  {
    v8 = [a1 services];
    v9 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v8 withName:@"services" context:v9 options:0];

    [v5 appendBool:objc_msgSend(a1 withName:{"hf_isOnForContextType:", 0), @"isLegacyFavorite"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"hf_shouldBeOnForContextType:", 0), @"showInLegacyFavorite"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"hf_isFavorite"), @"isFavorite"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"hf_effectiveIsFavorite"), @"effectiveIsFavorite"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"hf_effectiveShowInHomeDashboard"), @"effectiveShowInHomeDashboard"}];
  }

  return v5;
}

@end