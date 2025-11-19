@interface CRXFServiceConnection
- (BOOL)isActivated;
- (CRXFServiceConnection)initWithServiceName:(id)a3 xpcInterface:(id)a4;
- (id)activate;
- (void)activate;
- (void)forceInvalidate;
- (void)invalidate;
@end

@implementation CRXFServiceConnection

- (CRXFServiceConnection)initWithServiceName:(id)a3 xpcInterface:(id)a4
{
  v7 = a4;
  if (self)
  {
    v8 = [a3 copy];
    serviceName = self->_serviceName;
    self->_serviceName = v8;

    objc_storeStrong(&self->_xpcInterface, a4);
    self->_activateCount = 0;
    xpcConnection = self->_xpcConnection;
    self->_xpcConnection = 0;

    v11 = os_log_create(CRXFLoggingSubsystem, CRXFLoggingCategory[0]);
    log = self->_log;
    self->_log = v11;
  }

  return self;
}

- (id)activate
{
  v15 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [(CRXFServiceConnection *)self activate];
  }

  v4 = self;
  objc_sync_enter(v4);
  activateCount = v4->_activateCount;
  v4->_activateCount = activateCount + 1;
  v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG);
  if (activateCount)
  {
    if (v6)
    {
      [(CRXFServiceConnection *)v4 activate];
    }
  }

  else
  {
    if (v6)
    {
      [(CRXFServiceConnection *)v4 activate];
    }

    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:v4->_serviceName];
    xpcConnection = v4->_xpcConnection;
    v4->_xpcConnection = v7;

    [(NSXPCConnection *)v4->_xpcConnection setRemoteObjectInterface:v4->_xpcInterface];
    [(NSXPCConnection *)v4->_xpcConnection activate];
  }

  v9 = self->_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:v4->_activateCount];
    [(CRXFServiceConnection *)v10 activate];
  }

  v11 = v4->_xpcConnection;
  objc_sync_exit(v4);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)invalidate
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1(&dword_24732C000, v1, v2, "%s @%d: Invalidating connection to %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)forceInvalidate
{
  OUTLINED_FUNCTION_4_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1(&dword_24732C000, v1, v2, "%s @%d: Invalidating connection to %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isActivated
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activateCount > 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)activate
{
  *buf = 136315650;
  *(buf + 4) = "[CRXFServiceConnection activate]";
  *(buf + 6) = 1024;
  *(buf + 14) = 51;
  *(buf + 9) = 2112;
  *(buf + 20) = a1;
  _os_log_debug_impl(&dword_24732C000, log, OS_LOG_TYPE_DEBUG, "%s @%d: leaving activate; Activate count is now %@", buf, 0x1Cu);
}

@end