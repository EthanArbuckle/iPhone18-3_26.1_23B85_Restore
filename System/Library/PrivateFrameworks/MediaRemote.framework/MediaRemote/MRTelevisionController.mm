@interface MRTelevisionController
- (MRTelevisionController)init;
- (void)externalDeviceController:(id)controller didDiscoverDevice:(id)device;
- (void)externalDeviceController:(id)controller didRemoveDevice:(id)device;
@end

@implementation MRTelevisionController

- (MRTelevisionController)init
{
  v5.receiver = self;
  v5.super_class = MRTelevisionController;
  v2 = [(MRExternalDeviceController *)&v5 initWithBonjourServiceType:@"_mediaremotetv._tcp."];
  v3 = v2;
  if (v2)
  {
    [(MRExternalDeviceController *)v2 setDelegate:v2];
  }

  return v3;
}

- (void)externalDeviceController:(id)controller didDiscoverDevice:(id)device
{
  deviceCopy = device;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MRTelevisionController externalDeviceController:didDiscoverDevice:];
  }

  v6 = deviceCopy;
  discoveryCallback = self->_discoveryCallback;
  if (discoveryCallback)
  {
    queue = [(_MRTelevisionControllerBlockCallback *)discoveryCallback queue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__MRTelevisionController_externalDeviceController_didDiscoverDevice___block_invoke;
    v9[3] = &unk_1E769A4A0;
    v9[4] = self;
    v10 = v6;
    dispatch_async(queue, v9);
  }
}

void __69__MRTelevisionController_externalDeviceController_didDiscoverDevice___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) callbackBlock];
  v2[2](v2, *(a1 + 40));
}

- (void)externalDeviceController:(id)controller didRemoveDevice:(id)device
{
  deviceCopy = device;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MRTelevisionController externalDeviceController:didRemoveDevice:];
  }

  v6 = deviceCopy;
  removalCallback = self->_removalCallback;
  if (removalCallback)
  {
    queue = [(_MRTelevisionControllerBlockCallback *)removalCallback queue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__MRTelevisionController_externalDeviceController_didRemoveDevice___block_invoke;
    v9[3] = &unk_1E769A4A0;
    v9[4] = self;
    v10 = v6;
    dispatch_async(queue, v9);
  }
}

void __67__MRTelevisionController_externalDeviceController_didRemoveDevice___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) callbackBlock];
  v2[2](v2, *(a1 + 40));
}

- (void)externalDeviceController:didDiscoverDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)externalDeviceController:didRemoveDevice:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end