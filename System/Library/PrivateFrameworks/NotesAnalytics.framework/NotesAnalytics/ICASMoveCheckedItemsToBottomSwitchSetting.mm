@interface ICASMoveCheckedItemsToBottomSwitchSetting
- (ICASMoveCheckedItemsToBottomSwitchSetting)initWithMoveCheckedItemsToBottomSwitchSetting:(int64_t)setting;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASMoveCheckedItemsToBottomSwitchSetting

- (ICASMoveCheckedItemsToBottomSwitchSetting)initWithMoveCheckedItemsToBottomSwitchSetting:(int64_t)setting
{
  v5.receiver = self;
  v5.super_class = ICASMoveCheckedItemsToBottomSwitchSetting;
  result = [(ICASMoveCheckedItemsToBottomSwitchSetting *)&v5 init];
  if (result)
  {
    result->_moveCheckedItemsToBottomSwitchSetting = setting;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  moveCheckedItemsToBottomSwitchSetting = [(ICASMoveCheckedItemsToBottomSwitchSetting *)self moveCheckedItemsToBottomSwitchSetting];
  v4 = @"unknown";
  if (moveCheckedItemsToBottomSwitchSetting == 1)
  {
    v4 = @"automatic";
  }

  if (moveCheckedItemsToBottomSwitchSetting == 2)
  {
    return @"manual";
  }

  else
  {
    return v4;
  }
}

@end