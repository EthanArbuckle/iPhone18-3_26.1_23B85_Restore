@interface MSNCarPlay
- (BOOL)carplayConnected;
- (MSNCarPlay)init;
- (void)init;
@end

@implementation MSNCarPlay

- (MSNCarPlay)init
{
  v18[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = MSNCarPlay;
  v2 = [(MSNCarPlay *)&v15 init];
  if (!v2)
  {
LABEL_13:
    v9 = v2;
    goto LABEL_14;
  }

  v3 = [objc_alloc(MEMORY[0x277D26E68]) initWithPID:getpid()];
  systemController = v2->_systemController;
  v2->_systemController = v3;

  if (!v2->_systemController)
  {
    v5 = MSNLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MSNCarPlay init];
    }

    goto LABEL_9;
  }

  v18[0] = *MEMORY[0x277D273D0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  MEMORY[0x259C88ED0]([(MXSystemController *)v2->_systemController setAttributeForKey:*MEMORY[0x277D27420] andValue:v5]);
  v6 = *MEMORY[0x277D26E88];
  v7 = v2->_systemController;
  if (!CMNotificationCenterAddListener())
  {
    v14 = 0;
    [(MXSystemController *)v2->_systemController copyAttributeForKey:*MEMORY[0x277D27410] withValueOut:&v14];
    v2->_carplayConnected = [v14 BOOLValue];
    v10 = MSNLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      carplayConnected = v2->_carplayConnected;
      *buf = 67109120;
      v17 = carplayConnected;
      _os_log_impl(&dword_258731000, v10, OS_LOG_TYPE_INFO, "Registered for CarPlay status changes with initial state: %{BOOL}d.", buf, 8u);
    }

    goto LABEL_13;
  }

  v8 = MSNLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MSNCarPlay init];
  }

LABEL_9:
  v9 = 0;
LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)carplayConnected
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MSNLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    carplayConnected = self->_carplayConnected;
    v7[0] = 67109120;
    v7[1] = carplayConnected;
    _os_log_impl(&dword_258731000, v3, OS_LOG_TYPE_INFO, "CarPlay connected: %{BOOL}d", v7, 8u);
  }

  result = self->_carplayConnected;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end