@interface COMeshAddOn
- (COMeshAddOn)init;
- (COMeshController)meshController;
- (void)didAddToMeshController:(id)a3;
- (void)didChangeNodesForMeshController:(id)a3;
- (void)didStartMeshController:(id)a3;
- (void)didStopMeshController:(id)a3;
- (void)meshController:(id)a3 didTransitionToState:(unint64_t)a4;
- (void)meshController:(id)a3 willTransitionToState:(unint64_t)a4;
- (void)willStartMeshController:(id)a3;
- (void)willStopMeshController:(id)a3;
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

- (void)didAddToMeshController:(id)a3
{
  v4 = a3;
  [(COMeshAddOn *)self setMeshController:v4];
  v5 = [v4 dispatchQueue];

  [(COMeshAddOn *)self setMeshControllerQueue:v5];
}

- (void)willStartMeshController:(id)a3
{
  v3 = [a3 dispatchQueue];
  dispatch_assert_queue_V2(v3);
}

- (void)didStartMeshController:(id)a3
{
  v3 = [a3 dispatchQueue];
  dispatch_assert_queue_V2(v3);
}

- (void)willStopMeshController:(id)a3
{
  v3 = [a3 dispatchQueue];
  dispatch_assert_queue_V2(v3);
}

- (void)didStopMeshController:(id)a3
{
  v3 = [a3 dispatchQueue];
  dispatch_assert_queue_V2(v3);
}

- (void)meshController:(id)a3 willTransitionToState:(unint64_t)a4
{
  v4 = [a3 dispatchQueue];
  dispatch_assert_queue_V2(v4);
}

- (void)meshController:(id)a3 didTransitionToState:(unint64_t)a4
{
  v4 = [a3 dispatchQueue];
  dispatch_assert_queue_V2(v4);
}

- (void)didChangeNodesForMeshController:(id)a3
{
  v3 = [a3 dispatchQueue];
  dispatch_assert_queue_V2(v3);
}

- (COMeshController)meshController
{
  WeakRetained = objc_loadWeakRetained(&self->_meshController);

  return WeakRetained;
}

@end