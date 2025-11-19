@interface LACUIPackagedViewPlatformStateController
- (BOOL)hasState:(id)a3;
- (LACUIPackagedViewPlatformStateController)initWithLayer:(id)a3;
- (LACUIPackagedViewPlatformStateControllerDelegate)delegate;
- (id)state;
- (void)setInitialState;
- (void)setState:(id)a3 speed:(double)a4;
- (void)stateController:(id)a3 didSetStateOfLayer:(id)a4;
- (void)stateController:(id)a3 transitionDidStart:(id)a4 speed:(float)a5;
@end

@implementation LACUIPackagedViewPlatformStateController

- (LACUIPackagedViewPlatformStateController)initWithLayer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LACUIPackagedViewPlatformStateController;
  v5 = [(LACUIPackagedViewPlatformStateController *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CD9FB8]) initWithLayer:v4];
    stateController = v5->_stateController;
    v5->_stateController = v6;

    [(CAStateController *)v5->_stateController setDelegate:v5];
  }

  return v5;
}

- (id)state
{
  stateController = self->_stateController;
  v3 = [(CAStateController *)stateController layer];
  v4 = [(CAStateController *)stateController stateOfLayer:v3];
  v5 = [v4 name];

  return v5;
}

- (BOOL)hasState:(id)a3
{
  stateController = self->_stateController;
  v4 = a3;
  v5 = [(CAStateController *)stateController layer];
  v6 = [v5 stateWithName:v4];

  return v6 != 0;
}

- (void)setState:(id)a3 speed:(double)a4
{
  v11 = a3;
  if (![(LACUIPackagedViewPlatformStateController *)self hasState:?])
  {
    [LACUIPackagedViewPlatformStateController setState:speed:];
  }

  stateController = self->_stateController;
  v7 = [(CAStateController *)stateController layer];
  v8 = [v7 stateWithName:v11];
  v9 = [(CAStateController *)self->_stateController layer];
  *&v10 = a4;
  [(CAStateController *)stateController setState:v8 ofLayer:v9 transitionSpeed:v10];
}

- (void)setInitialState
{
  stateController = self->_stateController;
  v3 = [(CAStateController *)stateController layer];
  [(CAStateController *)stateController setInitialStatesOfLayer:v3];
}

- (void)stateController:(id)a3 didSetStateOfLayer:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_stateController != v6)
  {
    [LACUIPackagedViewPlatformStateController stateController:didSetStateOfLayer:];
  }

  v8 = v7;
  v9 = LA_LOG_LACUIPackagedViewPlatformStateController();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(CAStateController *)self->_stateController stateOfLayer:v8];
    v12 = [v11 name];
    v13 = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v12;
    _os_log_debug_impl(&dword_256063000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ did set layer state to '%{public}@'", &v13, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stateController:(id)a3 transitionDidStart:(id)a4 speed:(float)a5
{
  v7 = a3;
  v8 = a4;
  if (self->_stateController != v7)
  {
    [LACUIPackagedViewPlatformStateController stateController:transitionDidStart:speed:];
  }

  v9 = v8;
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