@interface HMDCoordinationAddOnImpl
- (HMDCoordinationAddOnImplDelegate)delegate;
- (void)didChangeNodesForMeshController:(id)a3;
- (void)meshController:(id)a3 didTransitionToState:(unint64_t)a4;
@end

@implementation HMDCoordinationAddOnImpl

- (HMDCoordinationAddOnImplDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didChangeNodesForMeshController:(id)a3
{
  v5.receiver = self;
  v5.super_class = HMDCoordinationAddOnImpl;
  [(COMeshAddOn *)&v5 didChangeNodesForMeshController:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained meshControllerDidUpdatesNodes];
}

- (void)meshController:(id)a3 didTransitionToState:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = HMDCoordinationAddOnImpl;
  [(COMeshAddOn *)&v8 meshController:a3 didTransitionToState:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (a4 == 2)
  {
    [WeakRetained meshControllerDidStartElection];
  }

  else if (a4 == 3)
  {
    [WeakRetained meshControllerDidElectLeader];
  }
}

@end