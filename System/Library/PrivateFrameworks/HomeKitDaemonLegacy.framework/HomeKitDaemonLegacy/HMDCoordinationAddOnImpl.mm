@interface HMDCoordinationAddOnImpl
- (HMDCoordinationAddOnImplDelegate)delegate;
- (void)didChangeNodesForMeshController:(id)controller;
- (void)meshController:(id)controller didTransitionToState:(unint64_t)state;
@end

@implementation HMDCoordinationAddOnImpl

- (HMDCoordinationAddOnImplDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didChangeNodesForMeshController:(id)controller
{
  v5.receiver = self;
  v5.super_class = HMDCoordinationAddOnImpl;
  [(COMeshAddOn *)&v5 didChangeNodesForMeshController:controller];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained meshControllerDidUpdatesNodes];
}

- (void)meshController:(id)controller didTransitionToState:(unint64_t)state
{
  v8.receiver = self;
  v8.super_class = HMDCoordinationAddOnImpl;
  [(COMeshAddOn *)&v8 meshController:controller didTransitionToState:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (state == 2)
  {
    [WeakRetained meshControllerDidStartElection];
  }

  else if (state == 3)
  {
    [WeakRetained meshControllerDidElectLeader];
  }
}

@end