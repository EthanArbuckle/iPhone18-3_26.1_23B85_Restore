@interface HMServiceGroup(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMServiceGroup(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  name = [self name];
  [v5 setObject:name forKeyedSubscript:@"name"];

  if ([v4 detailLevel] == 2)
  {
    services = [self services];
    v9 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:services withName:@"services" context:v9 options:0];

    [v5 appendBool:objc_msgSend(self withName:{"hf_isOnForContextType:", 0), @"isLegacyFavorite"}];
    [v5 appendBool:objc_msgSend(self withName:{"hf_shouldBeOnForContextType:", 0), @"showInLegacyFavorite"}];
    [v5 appendBool:objc_msgSend(self withName:{"hf_isFavorite"), @"isFavorite"}];
    [v5 appendBool:objc_msgSend(self withName:{"hf_effectiveIsFavorite"), @"effectiveIsFavorite"}];
    [v5 appendBool:objc_msgSend(self withName:{"hf_effectiveShowInHomeDashboard"), @"effectiveShowInHomeDashboard"}];
  }

  return v5;
}

@end