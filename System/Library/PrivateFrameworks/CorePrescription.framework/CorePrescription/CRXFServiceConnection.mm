@interface CRXFServiceConnection
- (BOOL)isActivated;
- (CRXFServiceConnection)initWithServiceName:(id)name xpcInterface:(id)interface;
- (id)activate;
- (void)activate;
- (void)forceInvalidate;
- (void)invalidate;
@end

@implementation CRXFServiceConnection

- (CRXFServiceConnection)initWithServiceName:(id)name xpcInterface:(id)interface
{
  interfaceCopy = interface;
  if (self)
  {
    v8 = [name copy];
    serviceName = self->_serviceName;
    self->_serviceName = v8;

    objc_storeStrong(&self->_xpcInterface, interface);
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  activateCount = selfCopy->_activateCount;
  selfCopy->_activateCount = activateCount + 1;
  v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG);
  if (activateCount)
  {
    if (v6)
    {
      [(CRXFServiceConnection *)selfCopy activate];
    }
  }

  else
  {
    if (v6)
    {
      [(CRXFServiceConnection *)selfCopy activate];
    }

    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:selfCopy->_serviceName];
    xpcConnection = selfCopy->_xpcConnection;
    selfCopy->_xpcConnection = v7;

    [(NSXPCConnection *)selfCopy->_xpcConnection setRemoteObjectInterface:selfCopy->_xpcInterface];
    [(NSXPCConnection *)selfCopy->_xpcConnection activate];
  }

  v9 = self->_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:selfCopy->_activateCount];
    [(CRXFServiceConnection *)v10 activate];
  }

  v11 = selfCopy->_xpcConnection;
  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)invalidate
{
  OUTLINED_FUNCTION_4_1(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1(&dword_24732C000, v1, v2, "%s @%d: Invalidating connection to %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)forceInvalidate
{
  OUTLINED_FUNCTION_4_1(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1(&dword_24732C000, v1, v2, "%s @%d: Invalidating connection to %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isActivated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activateCount > 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)activate
{
  *buf = 136315650;
  *(buf + 4) = "[CRXFServiceConnection activate]";
  *(buf + 6) = 1024;
  *(buf + 14) = 51;
  *(buf + 9) = 2112;
  *(buf + 20) = self;
  _os_log_debug_impl(&dword_24732C000, log, OS_LOG_TYPE_DEBUG, "%s @%d: leaving activate; Activate count is now %@", buf, 0x1Cu);
}

@end