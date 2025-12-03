@interface CRCarPlayLiveActivityDenyList
- (BOOL)containsBundleIdentifier:(id)identifier;
- (CRCarPlayLiveActivityDenyList)init;
- (void)_updateDenyListFromPreferences;
- (void)handleLiveActivityDenyListChangedNotification:(id)notification;
- (void)setDenyListBundleIdentifiers:(id)identifiers;
@end

@implementation CRCarPlayLiveActivityDenyList

- (CRCarPlayLiveActivityDenyList)init
{
  v5.receiver = self;
  v5.super_class = CRCarPlayLiveActivityDenyList;
  v2 = [(CRCarPlayLiveActivityDenyList *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_handleLiveActivityDenyListChangedNotification_ name:@"com.apple.carkit.liveactivity.denylist-changed" object:0];

    [(CRCarPlayLiveActivityDenyList *)v2 _updateDenyListFromPreferences];
  }

  return v2;
}

- (void)handleLiveActivityDenyListChangedNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CRCarPlayLiveActivityDenyList_handleLiveActivityDenyListChangedNotification___block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateDenyListFromPreferences
{
  v3 = MEMORY[0x1E695DFD8];
  v6 = CFPreferencesCopyAppValue(CRCarPlayLiveActivityDenyListPreferenceKey, CRPreferencesNotMigratedDomain);
  v4 = [v3 setWithArray:v6];
  denyListBundleIdentifiersSet = self->_denyListBundleIdentifiersSet;
  self->_denyListBundleIdentifiersSet = v4;
}

- (void)setDenyListBundleIdentifiers:(id)identifiers
{
  v11 = [MEMORY[0x1E695DFD8] setWithArray:identifiers];
  denyListBundleIdentifiersSet = [(CRCarPlayLiveActivityDenyList *)self denyListBundleIdentifiersSet];
  if (([denyListBundleIdentifiersSet isEqualToSet:v11] & 1) == 0)
  {
    v5 = [v11 copy];
    denyListBundleIdentifiersSet = self->_denyListBundleIdentifiersSet;
    self->_denyListBundleIdentifiersSet = v5;

    allObjects = [(NSSet *)self->_denyListBundleIdentifiersSet allObjects];
    v8 = CRCarPlayLiveActivityDenyListPreferenceKey;
    if ([allObjects count])
    {
      v9 = allObjects;
    }

    else
    {
      v9 = 0;
    }

    CFPreferencesSetAppValue(v8, v9, CRPreferencesNotMigratedDomain);
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter postNotificationName:@"com.apple.carkit.liveactivity.denylist-changed" object:0];
  }
}

- (BOOL)containsBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  denyListBundleIdentifiersSet = [(CRCarPlayLiveActivityDenyList *)self denyListBundleIdentifiersSet];
  v6 = [denyListBundleIdentifiersSet containsObject:identifierCopy];

  return v6;
}

@end