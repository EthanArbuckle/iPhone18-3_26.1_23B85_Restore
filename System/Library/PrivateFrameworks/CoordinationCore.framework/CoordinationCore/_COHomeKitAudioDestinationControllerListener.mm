@interface _COHomeKitAudioDestinationControllerListener
- (_COHomeKitAudioDestinationControllerListenerDelegate)delegate;
- (id)initWitAccessory:(id)a3 home:(id)a4 delegate:(id)a5;
- (void)accessoryDidUpdateAudioDestinationController:(id)a3;
@end

@implementation _COHomeKitAudioDestinationControllerListener

- (id)initWitAccessory:(id)a3 home:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = _COHomeKitAudioDestinationControllerListener;
  v12 = [(_COHomeKitAudioDestinationControllerListener *)&v16 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, v11);
    objc_storeStrong(p_isa + 1, a3);
    objc_storeStrong(p_isa + 2, a4);
    [p_isa[1] setDelegate:p_isa];
    v14 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [_COHomeKitAudioDestinationControllerListener initWitAccessory:home:delegate:];
    }
  }

  return p_isa;
}

- (void)accessoryDidUpdateAudioDestinationController:(id)a3
{
  v6 = a3;
  v4 = [(_COHomeKitAudioDestinationControllerListener *)self delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [(_COHomeKitAudioDestinationControllerListener *)self home];
    [v4 audioDestinationControllerDidUpdateForAccessory:v6 inHome:v5];
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