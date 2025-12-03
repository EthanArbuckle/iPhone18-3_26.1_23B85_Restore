@interface COMeshAddOn
- (COMeshAddOn)init;
- (COMeshController)meshController;
- (void)didAddToMeshController:(id)controller;
- (void)didChangeNodesForMeshController:(id)controller;
- (void)didStartMeshController:(id)controller;
- (void)didStopMeshController:(id)controller;
- (void)meshController:(id)controller didTransitionToState:(unint64_t)state;
- (void)meshController:(id)controller willTransitionToState:(unint64_t)state;
- (void)willStartMeshController:(id)controller;
- (void)willStopMeshController:(id)controller;
@end

@implementation COMeshAddOn

- (COMeshAddOn)init
{
  v5.receiver = self;
  v5.super_class = COMeshAddOn;
  v2 = [(COMeshAddOn *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_meshControllerQueue, MEMORY[0x277D85CD0]);
  }

  return v3;
}

- (void)didAddToMeshController:(id)controller
{
  controllerCopy = controller;
  [(COMeshAddOn *)self setMeshController:controllerCopy];
  dispatchQueue = [controllerCopy dispatchQueue];

  [(COMeshAddOn *)self setMeshControllerQueue:dispatchQueue];
}

- (void)willStartMeshController:(id)controller
{
  dispatchQueue = [controller dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);
}

- (void)didStartMeshController:(id)controller
{
  dispatchQueue = [controller dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);
}

- (void)willStopMeshController:(id)controller
{
  dispatchQueue = [controller dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);
}

- (void)didStopMeshController:(id)controller
{
  dispatchQueue = [controller dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);
}

- (void)meshController:(id)controller willTransitionToState:(unint64_t)state
{
  dispatchQueue = [controller dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);
}

- (void)meshController:(id)controller didTransitionToState:(unint64_t)state
{
  dispatchQueue = [controller dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);
}

- (void)didChangeNodesForMeshController:(id)controller
{
  dispatchQueue = [controller dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);
}

- (COMeshController)meshController
{
  WeakRetained = objc_loadWeakRetained(&self->_meshController);

  return WeakRetained;
}

@end