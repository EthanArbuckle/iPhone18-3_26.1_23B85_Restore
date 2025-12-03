@interface _COClusterAliasManagerStateTrackingAddOn
- (COClusterAliasManager)aliasManager;
- (void)didStopMeshController:(id)controller;
@end

@implementation _COClusterAliasManagerStateTrackingAddOn

- (void)didStopMeshController:(id)controller
{
  controllerCopy = controller;
  aliasManager = [(_COClusterAliasManagerStateTrackingAddOn *)self aliasManager];
  [aliasManager didStopMeshController:controllerCopy];

  v6.receiver = self;
  v6.super_class = _COClusterAliasManagerStateTrackingAddOn;
  [(COMeshAddOn *)&v6 didStopMeshController:controllerCopy];
}

- (COClusterAliasManager)aliasManager
{
  WeakRetained = objc_loadWeakRetained(&self->_aliasManager);

  return WeakRetained;
}

@end