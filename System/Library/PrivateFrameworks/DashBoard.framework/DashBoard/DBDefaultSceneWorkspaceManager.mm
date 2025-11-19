@interface DBDefaultSceneWorkspaceManager
- (id)defaultWorkspaceIdentifierForDisplayIdentity:(id)a3;
- (void)relinquishWorkspaceIdentifierForDisplayIdentity:(id)a3;
@end

@implementation DBDefaultSceneWorkspaceManager

- (id)defaultWorkspaceIdentifierForDisplayIdentity:(id)a3
{
  v4 = a3;
  v5 = self;
  DBDefaultSceneWorkspaceManager.defaultWorkspaceIdentifier(for:)(v4);
  v7 = v6;

  return v7;
}

- (void)relinquishWorkspaceIdentifierForDisplayIdentity:(id)a3
{
  v4 = a3;
  v5 = self;
  DBDefaultSceneWorkspaceManager.relinquishWorkspaceIdentifier(for:)(v4);
}

@end