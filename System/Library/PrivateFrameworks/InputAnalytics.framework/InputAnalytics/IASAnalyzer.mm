@interface IASAnalyzer
- (IASAnalyzer)initWithAnalyzerSessionId:(id)id sessionManagerDelegate:(id)delegate queue:(id)queue eventHandler:(id)handler;
- (IASSessionManager)sessionManagerDelegate;
- (_NSRange)depthRange;
- (id)createTimerWithDelay:(double)delay handler:(id)handler;
@end

@implementation IASAnalyzer

- (IASAnalyzer)initWithAnalyzerSessionId:(id)id sessionManagerDelegate:(id)delegate queue:(id)queue eventHandler:(id)handler
{
  idCopy = id;
  delegateCopy = delegate;
  queueCopy = queue;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = IASAnalyzer;
  v14 = [(IASAnalyzer *)&v22 init];
  if (v14)
  {
    v15 = objc_alloc_init(IASAnalyzerErrors);
    objc_msgSend_setSessionErrors_(v14, v16, v15);

    objc_msgSend_setEventHandler_(v14, v17, handlerCopy);
    objc_msgSend_setAnalyzerSessionId_(v14, v18, idCopy);
    objc_msgSend_setSessionManagerDelegate_(v14, v19, delegateCopy);
    objc_msgSend_setQueue_(v14, v20, queueCopy);
  }

  return v14;
}

- (id)createTimerWithDelay:(double)delay handler:(id)handler
{
  handlerCopy = handler;
  v10 = objc_msgSend_queue(self, v8, v9);

  if (!v10)
  {
    sub_1D462EE40(a2, self, v12);
  }

  v13 = objc_msgSend_queue(self, v11, v12);
  v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v13);

  if (v14)
  {
    v15 = dispatch_time(0, (delay * 1000000000.0));
    dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(v14, handlerCopy);
    dispatch_resume(v14);
  }

  return v14;
}

- (_NSRange)depthRange
{
  length = self->depthRange.length;
  location = self->depthRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (IASSessionManager)sessionManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->sessionManagerDelegate);

  return WeakRetained;
}

@end