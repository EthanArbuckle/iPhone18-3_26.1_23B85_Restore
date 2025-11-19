@interface IASAnalyzer
- (IASAnalyzer)initWithAnalyzerSessionId:(id)a3 sessionManagerDelegate:(id)a4 queue:(id)a5 eventHandler:(id)a6;
- (IASSessionManager)sessionManagerDelegate;
- (_NSRange)depthRange;
- (id)createTimerWithDelay:(double)a3 handler:(id)a4;
@end

@implementation IASAnalyzer

- (IASAnalyzer)initWithAnalyzerSessionId:(id)a3 sessionManagerDelegate:(id)a4 queue:(id)a5 eventHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = IASAnalyzer;
  v14 = [(IASAnalyzer *)&v22 init];
  if (v14)
  {
    v15 = objc_alloc_init(IASAnalyzerErrors);
    objc_msgSend_setSessionErrors_(v14, v16, v15);

    objc_msgSend_setEventHandler_(v14, v17, v13);
    objc_msgSend_setAnalyzerSessionId_(v14, v18, v10);
    objc_msgSend_setSessionManagerDelegate_(v14, v19, v11);
    objc_msgSend_setQueue_(v14, v20, v12);
  }

  return v14;
}

- (id)createTimerWithDelay:(double)a3 handler:(id)a4
{
  v7 = a4;
  v10 = objc_msgSend_queue(self, v8, v9);

  if (!v10)
  {
    sub_1D462EE40(a2, self, v12);
  }

  v13 = objc_msgSend_queue(self, v11, v12);
  v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v13);

  if (v14)
  {
    v15 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(v14, v7);
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