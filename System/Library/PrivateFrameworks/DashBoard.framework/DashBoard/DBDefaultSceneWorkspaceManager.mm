@interface DBDefaultSceneWorkspaceManager
- (id)defaultWorkspaceIdentifierForDisplayIdentity:(id)identity;
- (void)relinquishWorkspaceIdentifierForDisplayIdentity:(id)identity;
@end

@implementation DBDefaultSceneWorkspaceManager

- (id)defaultWorkspaceIdentifierForDisplayIdentity:(id)identity
{
  identityCopy = identity;
  selfCopy = self;
  DBDefaultSceneWorkspaceManager.defaultWorkspaceIdentifier(for:)(identityCopy);
  v7 = v6;

  return v7;
}

- (void)relinquishWorkspaceIdentifierForDisplayIdentity:(id)identity
{
  identityCopy = identity;
  selfCopy = self;
  DBDefaultSceneWorkspaceManager.relinquishWorkspaceIdentifier(for:)(identityCopy);
}

@end