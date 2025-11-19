@interface CRCarPlayWidgetDenyList
- (CRCarPlayWidgetDenyList)init;
- (id)denyListExtensions;
- (void)_updateDenyListFromPreferences;
- (void)handleWidgetDenylistChangedNotification:(id)a3;
- (void)setDenyListExtensions:(id)a3;
@end

@implementation CRCarPlayWidgetDenyList

- (CRCarPlayWidgetDenyList)init
{
  v5.receiver = self;
  v5.super_class = CRCarPlayWidgetDenyList;
  v2 = [(CRCarPlayWidgetDenyList *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v3 addObserver:v2 selector:sel_handleWidgetDenylistChangedNotification_ name:@"com.apple.carkit.widget.denylist-changed" object:0];

    [(CRCarPlayWidgetDenyList *)v2 _updateDenyListFromPreferences];
  }

  return v2;
}

- (void)handleWidgetDenylistChangedNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CRCarPlayWidgetDenyList_handleWidgetDenylistChangedNotification___block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateDenyListFromPreferences
{
  v3 = MEMORY[0x1E695DFD8];
  v6 = CFPreferencesCopyAppValue(CRCarPlayWidgetDenyListPreferenceKey, CRPreferencesNotMigratedDomain);
  v4 = [v3 setWithArray:v6];
  denyListExtensionsSet = self->_denyListExtensionsSet;
  self->_denyListExtensionsSet = v4;
}

- (void)setDenyListExtensions:(id)a3
{
  v11 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v4 = [(CRCarPlayWidgetDenyList *)self denyListExtensionsSet];
  if (([v11 isEqualToSet:v4] & 1) == 0)
  {
    v5 = [v11 copy];
    denyListExtensionsSet = self->_denyListExtensionsSet;
    self->_denyListExtensionsSet = v5;

    v7 = [(NSSet *)self->_denyListExtensionsSet allObjects];
    v8 = CRCarPlayWidgetDenyListPreferenceKey;
    if ([v7 count])
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    CFPreferencesSetAppValue(v8, v9, CRPreferencesNotMigratedDomain);
    v10 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v10 postNotificationName:@"com.apple.carkit.widget.denylist-changed" object:0];
  }
}

- (id)denyListExtensions
{
  v2 = [(NSSet *)self->_denyListExtensionsSet copy];

  return v2;
}

@end