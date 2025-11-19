@interface DBInstrumentClusterWorkspaceOwner
- (DBWorkspace)workspace;
@end

@implementation DBInstrumentClusterWorkspaceOwner

- (DBWorkspace)workspace
{
  WeakRetained = objc_loadWeakRetained(&self->_workspace);

  return WeakRetained;
}

@end