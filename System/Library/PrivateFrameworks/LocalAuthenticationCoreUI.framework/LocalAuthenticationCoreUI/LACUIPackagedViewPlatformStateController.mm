@interface LACUIPackagedViewPlatformStateController
- (BOOL)hasState:(id)state;
- (LACUIPackagedViewPlatformStateController)initWithLayer:(id)layer;
- (LACUIPackagedViewPlatformStateControllerDelegate)delegate;
- (id)state;
- (void)setInitialState;
- (void)setState:(id)state speed:(double)speed;
- (void)stateController:(id)controller didSetStateOfLayer:(id)layer;
- (void)stateController:(id)controller transitionDidStart:(id)start speed:(float)speed;
@end

@implementation LACUIPackagedViewPlatformStateController

- (LACUIPackagedViewPlatformStateController)initWithLayer:(id)layer
{
  layerCopy = layer;
  v9.receiver = self;
  v9.super_class = LACUIPackagedViewPlatformStateController;
  v5 = [(LACUIPackagedViewPlatformStateController *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CD9FB8]) initWithLayer:layerCopy];
    stateController = v5->_stateController;
    v5->_stateController = v6;

    [(CAStateController *)v5->_stateController setDelegate:v5];
  }

  return v5;
}

- (id)state
{
  stateController = self->_stateController;
  layer = [(CAStateController *)stateController layer];
  v4 = [(CAStateController *)stateController stateOfLayer:layer];
  name = [v4 name];

  return name;
}

- (BOOL)hasState:(id)state
{
  stateController = self->_stateController;
  stateCopy = state;
  layer = [(CAStateController *)stateController layer];
  v6 = [layer stateWithName:stateCopy];

  return v6 != 0;
}

- (void)setState:(id)state speed:(double)speed
{
  stateCopy = state;
  if (![(LACUIPackagedViewPlatformStateController *)self hasState:?])
  {
    [LACUIPackagedViewPlatformStateController setState:speed:];
  }

  stateController = self->_stateController;
  layer = [(CAStateController *)stateController layer];
  v8 = [layer stateWithName:stateCopy];
  layer2 = [(CAStateController *)self->_stateController layer];
  *&v10 = speed;
  [(CAStateController *)stateController setState:v8 ofLayer:layer2 transitionSpeed:v10];
}

- (void)setInitialState
{
  stateController = self->_stateController;
  layer = [(CAStateController *)stateController layer];
  [(CAStateController *)stateController setInitialStatesOfLayer:layer];
}

- (void)stateController:(id)controller didSetStateOfLayer:(id)layer
{
  v17 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  layerCopy = layer;
  if (self->_stateController != controllerCopy)
  {
    [LACUIPackagedViewPlatformStateController stateController:didSetStateOfLayer:];
  }

  v8 = layerCopy;
  v9 = LA_LOG_LACUIPackagedViewPlatformStateController();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(CAStateController *)self->_stateController stateOfLayer:v8];
    name = [v11 name];
    v13 = 138543618;
    selfCopy = self;
    v15 = 2114;
    v16 = name;
    _os_log_debug_impl(&dword_256063000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ did set layer state to '%{public}@'", &v13, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stateController:(id)controller transitionDidStart:(id)start speed:(float)speed
{
  controllerCopy = controller;
  startCopy = start;
  if (self->_stateController != controllerCopy)
  {
    [LACUIPackagedViewPlatformStateController stateController:transitionDidStart:speed:];
  }

  v9 = startCopy;
  v10 = LA_LOG_LACUIPackagedViewPlatformStateController();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [LACUIPackagedViewPlatformStateController stateController:v9 transitionDidStart:v10 speed:?];
  }
}

- (LACUIPackagedViewPlatformStateControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stateController:(uint64_t)a1 transitionDidStart:(void *)a2 speed:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = _NSStringFromCAStateTransition(a2);
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_debug_impl(&dword_256063000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ will start %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end