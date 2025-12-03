@interface _TopHitsMessageListCellLayoutValues
- (BOOL)useSelectedColorForConfigurationState:(id)state backgroundConfiguration:(id)configuration;
@end

@implementation _TopHitsMessageListCellLayoutValues

- (BOOL)useSelectedColorForConfigurationState:(id)state backgroundConfiguration:(id)configuration
{
  stateCopy = state;
  isSelected = [stateCopy isSelected];
  isFocused = [stateCopy isFocused];
  isFocusSystemActive = [stateCopy isFocusSystemActive];

  if (isFocused)
  {
    return isSelected;
  }

  else
  {
    return isSelected & (isFocusSystemActive ^ 1);
  }
}

@end