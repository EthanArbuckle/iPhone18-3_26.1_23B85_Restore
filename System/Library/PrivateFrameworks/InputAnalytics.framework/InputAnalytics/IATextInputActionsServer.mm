@interface IATextInputActionsServer
- (IASServerAnalyticsDelegate)serverDelegate;
- (IATextInputActionsServer)initWithQueue:(id)queue eventHandler:(id)handler;
- (void)consumeAction:(id)action;
- (void)dispatchEventToCoreAnalytics;
- (void)enumerateTextInputActionsAnalytics;
- (void)setKeyboardTrialParameters:(id)parameters;
@end

@implementation IATextInputActionsServer

- (IATextInputActionsServer)initWithQueue:(id)queue eventHandler:(id)handler
{
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = IATextInputActionsServer;
  v6 = [(IATextInputActionsServer *)&v23 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create("com.apple.inputAnalytics.IATextInputActionsServer", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFA0]);
    v12 = objc_msgSend_initWithCapacity_(v10, v11, 20);
    recentActions = v6->_recentActions;
    v6->_recentActions = v12;

    v14 = [IASTextInputActionsAnalyzer alloc];
    v15 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v18 = objc_msgSend_queue(v6, v16, v17);
    v20 = objc_msgSend_initWithAnalyzerSessionId_sessionManagerDelegate_queue_eventHandler_(v14, v19, v15, 0, v18, handlerCopy);
    analyzer = v6->_analyzer;
    v6->_analyzer = v20;
  }

  return v6;
}

- (void)consumeAction:(id)action
{
  actionCopy = action;
  v7 = objc_msgSend_analyzer(self, v5, v6);
  objc_msgSend_consumeAction_(v7, v8, actionCopy);

  v11 = objc_msgSend_asEnd(actionCopy, v9, v10);

  if (v11)
  {

    MEMORY[0x1EEE66B58](self, sel_enumerateTextInputActionsAnalytics, v12);
  }
}

- (void)enumerateTextInputActionsAnalytics
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1D4612860;
  block[3] = &unk_1E84897A0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dispatchEventToCoreAnalytics
{
  v5 = objc_msgSend_analyzer(self, a2, v2);
  objc_msgSend_enumerateAnalytics(v5, v3, v4);
}

- (void)setKeyboardTrialParameters:(id)parameters
{
  parametersCopy = parameters;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1D4612A0C;
  v7[3] = &unk_1E84897C8;
  v7[4] = self;
  v8 = parametersCopy;
  v6 = parametersCopy;
  dispatch_async(queue, v7);
}

- (IASServerAnalyticsDelegate)serverDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serverDelegate);

  return WeakRetained;
}

@end