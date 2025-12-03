@interface CDPDCircleStateObserver
- (CDPDCircleStateObserver)init;
- (void)_sendCircleStatusChangedForContext:(id)context;
- (void)_sendCircleViewStatusChangedForContext:(id)context;
- (void)dealloc;
- (void)eventReceived:(const char *)received eventValue:(unint64_t)value;
- (void)init;
- (void)observeChangeToState:(unint64_t)state circleProxy:(id)proxy handler:(id)handler;
- (void)observeCircleStateWithCircleProxy:(id)proxy changeHandler:(id)handler;
@end

@implementation CDPDCircleStateObserver

- (CDPDCircleStateObserver)init
{
  v10.receiver = self;
  v10.super_class = CDPDCircleStateObserver;
  v2 = [(CDPDCircleStateObserver *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    circleObservers = v2->_circleObservers;
    v2->_circleObservers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("CDPDCircleStateObserver Event Queue", v5);
    eventQueue = v2->_eventQueue;
    v2->_eventQueue = v6;

    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CDPDCircleStateObserver init];
    }
  }

  return v2;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24510B000, v0, v1, "Deallocated %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)observeCircleStateWithCircleProxy:(id)proxy changeHandler:(id)handler
{
  proxyCopy = proxy;
  handlerCopy = handler;
  self->_isObserving = 1;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPDCircleStateObserver observeCircleStateWithCircleProxy:changeHandler:];
  }

  _notificationName = [(CDPDCircleStateObserver *)self _notificationName];
  eventQueue = self->_eventQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __75__CDPDCircleStateObserver_observeCircleStateWithCircleProxy_changeHandler___block_invoke;
  handler[3] = &unk_278E24430;
  v14 = proxyCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = proxyCopy;
  notify_register_dispatch(_notificationName, &self->_circleChangeToken, eventQueue, handler);
}

void __75__CDPDCircleStateObserver_observeCircleStateWithCircleProxy_changeHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v3 = [v2 combinedCircleStatus:&v8];
  v4 = v8;
  v5 = _CDPLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      __75__CDPDCircleStateObserver_observeCircleStateWithCircleProxy_changeHandler___block_invoke_cold_1(v3);
    }
  }

  else if (v6)
  {
    __75__CDPDCircleStateObserver_observeCircleStateWithCircleProxy_changeHandler___block_invoke_cold_2(v3, a1);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)observeChangeToState:(unint64_t)state circleProxy:(id)proxy handler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__CDPDCircleStateObserver_observeChangeToState_circleProxy_handler___block_invoke;
  v10[3] = &unk_278E24458;
  v11 = handlerCopy;
  stateCopy = state;
  v9 = handlerCopy;
  [(CDPDCircleStateObserver *)self observeCircleStateWithCircleProxy:proxy changeHandler:v10];
}

uint64_t __68__CDPDCircleStateObserver_observeChangeToState_circleProxy_handler___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 40) == a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)_sendCircleStatusChangedForContext:(id)context
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [contextCopy altDSID];
    *buf = 141558274;
    v13 = 1752392040;
    v14 = 2112;
    v15 = altDSID;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "_sendCircleStatusChangedForContext: calling circleStatusChangedForAccountContext for altDSID (%{mask.hash}@", buf, 0x16u);
  }

  circleObservers = self->_circleObservers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__CDPDCircleStateObserver__sendCircleStatusChangedForContext___block_invoke;
  v10[3] = &unk_278E24480;
  v11 = contextCopy;
  v8 = contextCopy;
  [(NSMutableArray *)circleObservers enumerateObjectsUsingBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_sendCircleViewStatusChangedForContext:(id)context
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [contextCopy altDSID];
    *buf = 141558274;
    v13 = 1752392040;
    v14 = 2112;
    v15 = altDSID;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "_sendCircleStatusChangedForContext: calling circleStatusChangedForAccountContext for altDSID (%{mask.hash}@", buf, 0x16u);
  }

  circleObservers = self->_circleObservers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__CDPDCircleStateObserver__sendCircleViewStatusChangedForContext___block_invoke;
  v10[3] = &unk_278E24480;
  v11 = contextCopy;
  v8 = contextCopy;
  [(NSMutableArray *)circleObservers enumerateObjectsUsingBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)eventReceived:(const char *)received eventValue:(unint64_t)value
{
  v12 = *MEMORY[0x277D85DE8];
  if (!strcmp(*MEMORY[0x277CDBDA0], received) || !strcmp(*MEMORY[0x277CDBE68], received))
  {
    contextForPrimaryAccount = _CDPLogSystem();
    if (!os_log_type_enabled(contextForPrimaryAccount, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
      [(CDPDCircleStateObserver *)self _sendCircleViewStatusChangedForContext:contextForPrimaryAccount];
      goto LABEL_10;
    }

    v10 = 136315138;
    receivedCopy2 = received;
LABEL_8:
    _os_log_impl(&dword_24510B000, contextForPrimaryAccount, OS_LOG_TYPE_DEFAULT, "Processing circle status changed event for event %s", &v10, 0xCu);
    goto LABEL_9;
  }

  v6 = strcmp(*MEMORY[0x277CDBE78], received);
  v7 = _CDPLogSystem();
  contextForPrimaryAccount = v7;
  if (!v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v10 = 136315138;
    receivedCopy2 = received;
    goto LABEL_8;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CDPDCircleStateObserver eventReceived:eventValue:];
  }

LABEL_10:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24510B000, v0, v1, "Initialized %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)observeCircleStateWithCircleProxy:changeHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24510B000, v0, v1, "%@ started observing state", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__CDPDCircleStateObserver_observeCircleStateWithCircleProxy_changeHandler___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_24510B000, v2, v3, "Error checking circle status (%@) after observing kSOSCCCircleChangedNotification - %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __75__CDPDCircleStateObserver_observeCircleStateWithCircleProxy_changeHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = *(a2 + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_24510B000, v5, v6, "Circle state is %@ after observing kSOSCCCircleChangedNotification (observer %p)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)eventReceived:eventValue:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24510B000, v0, v1, "Circle observer ignoring: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end