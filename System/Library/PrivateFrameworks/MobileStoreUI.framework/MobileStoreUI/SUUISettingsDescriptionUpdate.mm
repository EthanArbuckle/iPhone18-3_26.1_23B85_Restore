@interface SUUISettingsDescriptionUpdate
- (SUUISettingsDescriptionUpdate)initWithUpdateType:(int64_t)type;
@end

@implementation SUUISettingsDescriptionUpdate

- (SUUISettingsDescriptionUpdate)initWithUpdateType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = SUUISettingsDescriptionUpdate;
  result = [(SUUISettingsDescriptionUpdate *)&v5 init];
  if (result)
  {
    result->_updateType = type;
  }

  return result;
}

@end