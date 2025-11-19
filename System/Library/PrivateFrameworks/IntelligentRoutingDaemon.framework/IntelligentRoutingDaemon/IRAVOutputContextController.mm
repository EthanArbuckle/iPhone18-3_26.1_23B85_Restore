@interface IRAVOutputContextController
- (IRAVOutputContextController)initWithOutputContextType:(int64_t)a3;
- (id)_associatedOutputContextForType:(int64_t)a3;
- (id)getOutputDevice;
- (id)getPredictedOutputDevice;
- (void)_didUpdateOutputDevice:(id)a3;
- (void)_didUpdatePredictedOutputDevice:(id)a3;
- (void)_registerForAVOutputContextOutputDeviceDidChangeNotification;
- (void)_registerForAVOutputContextPredictedOutputDeviceDidChangeNotification;
- (void)_unregisterForAVOutputContextOutputDeviceDidChangeNotification;
- (void)_unregisterForAVOutputContextPredictedOutputDeviceDidChangeNotification;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation IRAVOutputContextController

- (IRAVOutputContextController)initWithOutputContextType:(int64_t)a3
{
  if (a3)
  {
    [IRAVOutputContextController initWithOutputContextType:];
  }

  v9.receiver = self;
  v9.super_class = IRAVOutputContextController;
  v3 = [(IRAVOutputContextController *)&v9 init];
  v4 = v3;
  if (v3)
  {
    [(IRAVOutputContextController *)v3 setLock:0];
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(IRAVOutputContextController *)v4 setObservers:v5];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [(IRAVOutputContextController *)v4 setNotificationCenter:v6];

    v7 = [(IRAVOutputContextController *)v4 _associatedOutputContextForType:0];
    [(IRAVOutputContextController *)v4 setOutputContext:v7];

    [(IRAVOutputContextController *)v4 _registerForAVOutputContextOutputDeviceDidChangeNotification];
    [(IRAVOutputContextController *)v4 _registerForAVOutputContextPredictedOutputDeviceDidChangeNotification];
  }

  return v4;
}

- (void)dealloc
{
  [(IRAVOutputContextController *)self _unregisterForAVOutputContextOutputDeviceDidChangeNotification];
  [(IRAVOutputContextController *)self _unregisterForAVOutputContextPredictedOutputDeviceDidChangeNotification];
  v3.receiver = self;
  v3.super_class = IRAVOutputContextController;
  [(IRAVOutputContextController *)&v3 dealloc];
}

- (void)addObserver:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(IRAVOutputContextController *)self observers];
  v5 = [v4 containsObject:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(IRAVOutputContextController *)self observers];
    [v6 addObject:v7];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(IRAVOutputContextController *)self observers];
  v5 = [v4 containsObject:v7];

  if (v5)
  {
    v6 = [(IRAVOutputContextController *)self observers];
    [v6 removeObject:v7];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)getOutputDevice
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(IRAVOutputContextController *)self outputContext];
  v4 = [v3 outputDevice];
  v5 = [IRAVOutputDeviceDO AVOutputDeviceToDO:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)getPredictedOutputDevice
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(IRAVOutputContextController *)self outputContext];
  v4 = [v3 predictedOutputDevice];
  v5 = [IRAVOutputDeviceDO AVOutputDeviceToDO:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_associatedOutputContextForType:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      self = [MEMORY[0x277CB8698] sharedAudioPresentationOutputContext];
      break;
    case 1:
      self = [MEMORY[0x277CB8698] sharedSystemScreenContext];
      break;
    case 0:
      self = [MEMORY[0x277CB8698] sharedSystemAudioContext];
      break;
  }

  return self;
}

- (void)_didUpdateOutputDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IRAVOutputContextController *)self outputContext];
  v6 = [v5 outputDevice];

  v7 = [IRAVOutputDeviceDO AVOutputDeviceToDO:v6];
  v8 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
  {
    [(IRAVOutputContextController *)v7 _didUpdateOutputDevice:v8];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [(IRAVOutputContextController *)self observers];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v12++) context:self didUpdateOutputDevice:v7];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_didUpdatePredictedOutputDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IRAVOutputContextController *)self outputContext];
  v6 = [v5 predictedOutputDevice];

  v7 = [IRAVOutputDeviceDO AVOutputDeviceToDO:v6];
  v8 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
  {
    [(IRAVOutputContextController *)v7 _didUpdatePredictedOutputDevice:v8];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [(IRAVOutputContextController *)self observers];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v12++) context:self didUpdatePredicatedOutputDevice:v7];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_registerForAVOutputContextOutputDeviceDidChangeNotification
{
  v5 = [(IRAVOutputContextController *)self notificationCenter];
  v3 = *MEMORY[0x277CB8628];
  v4 = [(IRAVOutputContextController *)self outputContext];
  [v5 addObserver:self selector:sel__didUpdateOutputDevice_ name:v3 object:v4];
}

- (void)_unregisterForAVOutputContextOutputDeviceDidChangeNotification
{
  notificationCenter = self->_notificationCenter;
  v4 = *MEMORY[0x277CB8628];
  v5 = [(IRAVOutputContextController *)self outputContext];
  [(NSNotificationCenter *)notificationCenter removeObserver:self name:v4 object:v5];
}

- (void)_registerForAVOutputContextPredictedOutputDeviceDidChangeNotification
{
  v5 = [(IRAVOutputContextController *)self notificationCenter];
  v3 = *MEMORY[0x277CB8638];
  v4 = [(IRAVOutputContextController *)self outputContext];
  [v5 addObserver:self selector:sel__didUpdatePredictedOutputDevice_ name:v3 object:v4];
}

- (void)_unregisterForAVOutputContextPredictedOutputDeviceDidChangeNotification
{
  notificationCenter = self->_notificationCenter;
  v4 = *MEMORY[0x277CB8638];
  v5 = [(IRAVOutputContextController *)self outputContext];
  [(NSNotificationCenter *)notificationCenter removeObserver:self name:v4 object:v5];
}

- (void)initWithOutputContextType:.cold.1()
{
  v0 = MEMORY[0x277D21260];
  v1 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_FAULT))
  {
    LOWORD(v3) = 0;
    _os_log_fault_impl(&dword_25543D000, v1, OS_LOG_TYPE_FAULT, "#output-context-controller, [ErrorId - AVOutputContext type] Currently only Audio output context type is supported", &v3, 2u);
  }

  v2 = *v0;
  if (os_log_type_enabled(*v0, OS_LOG_TYPE_INFO))
  {
    v3 = 136315650;
    v4 = "/Library/Caches/com.apple.xbs/Sources/IntelligentRouting/IntelligentRoutingDaemon/DataProviders/AVOutputContext/IRAVOutputContextController.m";
    v5 = 1024;
    v6 = 36;
    v7 = 2080;
    v8 = "[IRAVOutputContextController initWithOutputContextType:]";
    _os_log_impl(&dword_25543D000, v2, OS_LOG_TYPE_INFO, "#output-context-controller, %s:%d: assertion failure in %s", &v3, 0x1Cu);
  }

  abort();
}

- (void)_didUpdateOutputDevice:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25543D000, a2, OS_LOG_TYPE_DEBUG, "#output-context-controller, Output device has been updated: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_didUpdatePredictedOutputDevice:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25543D000, a2, OS_LOG_TYPE_DEBUG, "#output-context-controller, Predicted output device has been updated: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end