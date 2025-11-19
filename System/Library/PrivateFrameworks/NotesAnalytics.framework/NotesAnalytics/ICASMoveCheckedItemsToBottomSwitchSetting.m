@interface ICASMoveCheckedItemsToBottomSwitchSetting
- (ICASMoveCheckedItemsToBottomSwitchSetting)initWithMoveCheckedItemsToBottomSwitchSetting:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASMoveCheckedItemsToBottomSwitchSetting

- (ICASMoveCheckedItemsToBottomSwitchSetting)initWithMoveCheckedItemsToBottomSwitchSetting:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASMoveCheckedItemsToBottomSwitchSetting;
  result = [(ICASMoveCheckedItemsToBottomSwitchSetting *)&v5 init];
  if (result)
  {
    result->_moveCheckedItemsToBottomSwitchSetting = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASMoveCheckedItemsToBottomSwitchSetting *)self moveCheckedItemsToBottomSwitchSetting];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"automatic";
  }

  if (v3 == 2)
  {
    return @"manual";
  }

  else
  {
    return v4;
  }
}

@end