@interface CADOperationProxy
- (CADOperationProxy)initWithClientConnection:(id)connection;
- (id)_newImplementation;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
@end

@implementation CADOperationProxy

- (id)_newImplementation
{
  v3 = [CADXPCImplementation alloc];
  conn = self->_conn;

  return [(CADXPCImplementation *)v3 initWithClientConnection:conn];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CADOperationProxy;
  [(CADOperationProxy *)&v3 dealloc];
}

- (CADOperationProxy)initWithClientConnection:(id)connection
{
  if (initWithClientConnection__onceToken != -1)
  {
    [CADOperationProxy initWithClientConnection:];
  }

  v7.receiver = self;
  v7.super_class = CADOperationProxy;
  v5 = [(CADOperationProxy *)&v7 init];
  if (v5)
  {
    v5->_conn = connection;
    v5->_implementation = [(CADOperationProxy *)v5 _newImplementation];
  }

  return v5;
}

os_log_t __46__CADOperationProxy_initWithClientConnection___block_invoke()
{
  v0 = CADCalendarLogSubsystem;
  v1 = objc_opt_class();
  v2 = [NSStringFromClass(v1) UTF8String];
  result = os_log_create(v0, v2);
  CADOperationProxyLogHandle = result;
  return result;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  selfCopy = self;
  if (sel_CADDatabaseSetInitializationOptions_reply_ == selector || [(ClientConnection *)self->_conn initializationOptionsSet])
  {
    if ([(CADXPCImplementation *)selfCopy->_implementation accessGrantedToPerformSelector:selector])
    {
      return selfCopy->_implementation;
    }

    else
    {
      v5 = CADOperationProxyLogHandle;
      if (os_log_type_enabled(CADOperationProxyLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(CADOperationProxy *)selector forwardingTargetForSelector:selfCopy, v5];
      }
    }
  }

  return selfCopy;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  MethodDescription = protocol_getMethodDescription(&unk_2837DB770, selector, 1, 1);
  types = MethodDescription.types;
  if (MethodDescription.name || (v6 = protocol_getMethodDescription(&unk_2837DB770, selector, 0, 1), types = v6.types, v6.name))
  {
    v7 = MEMORY[0x277CBEB08];

    return [v7 signatureWithObjCTypes:types];
  }

  else
  {
    v9 = MEMORY[0x277CBEB08];

    return [v9 methodSignatureForSelector:sel__emptyMethod];
  }
}

- (void)forwardInvocation:(id)invocation
{
  if (([objc_opt_class() _selectorMayBeCalledBeforeInitialization:{objc_msgSend(invocation, "selector")}] & 1) == 0 && !-[ClientConnection initializationOptionsSet](self->_conn, "initializationOptionsSet"))
  {
    v8 = [MEMORY[0x277CF7820] copyReplyBlockFromInvocation:invocation];
    v13 = CADOperationProxyLogHandle;
    if (os_log_type_enabled(CADOperationProxyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [(CADOperationProxy *)invocation forwardInvocation:v13];
    }

    v9 = MEMORY[0x277CF7820];
    v10 = v8;
    invocationCopy2 = invocation;
    v12 = 1019;
    goto LABEL_18;
  }

  if (!-[CADXPCImplementation accessGrantedToPerformSelector:](self->_implementation, "accessGrantedToPerformSelector:", [invocation selector]))
  {
    v6 = CADOperationProxyLogHandle;
    if (os_log_type_enabled(CADOperationProxyLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(CADOperationProxy *)invocation forwardInvocation:v6];
    }

    if (MGGetBoolAnswer())
    {
      v7 = CADOperationProxyLogHandle;
      if (os_log_type_enabled(CADOperationProxyLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(CADOperationProxy *)self forwardInvocation:v7, &v14];
        v7 = v14;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CADOperationProxy forwardInvocation:v7];
      }
    }

    v8 = [MEMORY[0x277CF7820] copyReplyBlockFromInvocation:invocation];
    v9 = MEMORY[0x277CF7820];
    v10 = v8;
    invocationCopy2 = invocation;
    v12 = 1013;
LABEL_18:
    [v9 callReplyHandler:v10 ofInvocation:invocationCopy2 withErrorCode:v12];

    return;
  }

  implementation = self->_implementation;

  [invocation invokeWithTarget:implementation];
}

- (void)forwardingTargetForSelector:(NSObject *)a3 .cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = [*(a2 + 8) identity];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_22430B000, a3, OS_LOG_TYPE_ERROR, "A client attempted to call [%@] and was denied due to insufficient privileges.  Client identity: [%@]", &v8, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)forwardInvocation:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = NSStringFromSelector([a1 selector]);
  _os_log_debug_impl(&dword_22430B000, a2, OS_LOG_TYPE_DEBUG, "Received message %@ before initialization. Dropping this message.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)forwardInvocation:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector([a1 selector]);
  v6 = [*(a2 + 8) reminderAccessGranted];
  v7 = [*(a2 + 8) eventAccessLevel];
  v9 = 138412802;
  v10 = v5;
  v11 = 1024;
  v12 = v6;
  v13 = 1024;
  v14 = v7;
  _os_log_error_impl(&dword_22430B000, a3, OS_LOG_TYPE_ERROR, "ERROR: access denied to perform invocation %@. The CADXPCImplementation has the following TCC status: Reminders %{BOOL}i, Events %d.", &v9, 0x18u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)forwardInvocation:(void *)a3 .cold.3(uint64_t a1, NSObject *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 8) identity];
  v7 = 138412290;
  v8 = v5;
  _os_log_error_impl(&dword_22430B000, a2, OS_LOG_TYPE_ERROR, "ERROR: Refused for connection from %@", &v7, 0xCu);
  *a3 = CADOperationProxyLogHandle;
  v6 = *MEMORY[0x277D85DE8];
}

@end