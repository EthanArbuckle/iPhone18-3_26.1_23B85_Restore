@interface _COHomeKitAudioDestinationControllerListener
- (_COHomeKitAudioDestinationControllerListenerDelegate)delegate;
- (id)initWitAccessory:(id)accessory home:(id)home delegate:(id)delegate;
- (void)accessoryDidUpdateAudioDestinationController:(id)controller;
@end

@implementation _COHomeKitAudioDestinationControllerListener

- (id)initWitAccessory:(id)accessory home:(id)home delegate:(id)delegate
{
  accessoryCopy = accessory;
  homeCopy = home;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = _COHomeKitAudioDestinationControllerListener;
  v12 = [(_COHomeKitAudioDestinationControllerListener *)&v16 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(p_isa + 1, accessory);
    objc_storeStrong(p_isa + 2, home);
    [p_isa[1] setDelegate:p_isa];
    v14 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [_COHomeKitAudioDestinationControllerListener initWitAccessory:home:delegate:];
    }
  }

  return p_isa;
}

- (void)accessoryDidUpdateAudioDestinationController:(id)controller
{
  controllerCopy = controller;
  delegate = [(_COHomeKitAudioDestinationControllerListener *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    home = [(_COHomeKitAudioDestinationControllerListener *)self home];
    [delegate audioDestinationControllerDidUpdateForAccessory:controllerCopy inHome:home];
  }
}

- (_COHomeKitAudioDestinationControllerListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWitAccessory:home:delegate:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(&dword_244378000, v0, OS_LOG_TYPE_DEBUG, "%p listening for audio destination controller on %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end