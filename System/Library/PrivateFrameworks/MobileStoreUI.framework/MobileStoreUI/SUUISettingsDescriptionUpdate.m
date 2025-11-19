@interface SUUISettingsDescriptionUpdate
- (SUUISettingsDescriptionUpdate)initWithUpdateType:(int64_t)a3;
@end

@implementation SUUISettingsDescriptionUpdate

- (SUUISettingsDescriptionUpdate)initWithUpdateType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SUUISettingsDescriptionUpdate;
  result = [(SUUISettingsDescriptionUpdate *)&v5 init];
  if (result)
  {
    result->_updateType = a3;
  }

  return result;
}

@end