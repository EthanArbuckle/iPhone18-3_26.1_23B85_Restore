@interface _TopHitsMessageListCellLayoutValues
- (BOOL)useSelectedColorForConfigurationState:(id)a3 backgroundConfiguration:(id)a4;
@end

@implementation _TopHitsMessageListCellLayoutValues

- (BOOL)useSelectedColorForConfigurationState:(id)a3 backgroundConfiguration:(id)a4
{
  v4 = a3;
  v5 = [v4 isSelected];
  v6 = [v4 isFocused];
  v7 = [v4 isFocusSystemActive];

  if (v6)
  {
    return v5;
  }

  else
  {
    return v5 & (v7 ^ 1);
  }
}

@end