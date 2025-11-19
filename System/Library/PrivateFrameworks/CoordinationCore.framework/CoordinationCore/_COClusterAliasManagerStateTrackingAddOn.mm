@interface _COClusterAliasManagerStateTrackingAddOn
- (COClusterAliasManager)aliasManager;
- (void)didStopMeshController:(id)a3;
@end

@implementation _COClusterAliasManagerStateTrackingAddOn

- (void)didStopMeshController:(id)a3
{
  v4 = a3;
  v5 = [(_COClusterAliasManagerStateTrackingAddOn *)self aliasManager];
  [v5 didStopMeshController:v4];

  v6.receiver = self;
  v6.super_class = _COClusterAliasManagerStateTrackingAddOn;
  [(COMeshAddOn *)&v6 didStopMeshController:v4];
}

- (COClusterAliasManager)aliasManager
{
  WeakRetained = objc_loadWeakRetained(&self->_aliasManager);

  return WeakRetained;
}

@end