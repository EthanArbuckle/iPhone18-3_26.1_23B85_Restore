@interface IASDailyGarbageCollectionAnalyzer
- (BOOL)shouldBeGarbageCollected;
- (IASDailyGarbageCollectionAnalyzer)initWithAnalyzerSessionId:(id)id sessionManagerDelegate:(id)delegate queue:(id)queue;
- (IASDailyGarbageCollectionAnalyzer)initWithAnalyzerSessionId:(id)id sessionManagerDelegate:(id)delegate queue:(id)queue eventHandler:(id)handler;
- (void)consumeAction:(id)action;
@end

@implementation IASDailyGarbageCollectionAnalyzer

- (IASDailyGarbageCollectionAnalyzer)initWithAnalyzerSessionId:(id)id sessionManagerDelegate:(id)delegate queue:(id)queue
{
  v11.receiver = self;
  v11.super_class = IASDailyGarbageCollectionAnalyzer;
  v7 = [(IASAnalyzer *)&v11 initWithAnalyzerSessionId:id sessionManagerDelegate:delegate queue:queue];
  if (v7)
  {
    v8 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6);
    objc_msgSend_setDateOfLastAction_(v7, v9, v8);
  }

  return v7;
}

- (IASDailyGarbageCollectionAnalyzer)initWithAnalyzerSessionId:(id)id sessionManagerDelegate:(id)delegate queue:(id)queue eventHandler:(id)handler
{
  v12.receiver = self;
  v12.super_class = IASDailyGarbageCollectionAnalyzer;
  v8 = [(IASAnalyzer *)&v12 initWithAnalyzerSessionId:id sessionManagerDelegate:delegate queue:queue eventHandler:handler];
  if (v8)
  {
    v9 = objc_msgSend_date(MEMORY[0x1E695DF00], v6, v7);
    objc_msgSend_setDateOfLastAction_(v8, v10, v9);
  }

  return v8;
}

- (void)consumeAction:(id)action
{
  v5 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, action);
  objc_msgSend_setDateOfLastAction_(self, v4, v5);
}

- (BOOL)shouldBeGarbageCollected
{
  v4 = MEMORY[0x1E695DF00];
  v5 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, v2);
  v7 = objc_msgSend_dateWithTimeInterval_sinceDate_(v4, v6, v5, -86400.0);

  v10 = objc_msgSend_dateOfLastAction(self, v8, v9);
  LOBYTE(v5) = objc_msgSend_compare_(v7, v11, v10) != -1;

  return v5;
}

@end