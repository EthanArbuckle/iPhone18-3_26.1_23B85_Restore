@interface IASDailyGarbageCollectionAnalyzer
- (BOOL)shouldBeGarbageCollected;
- (IASDailyGarbageCollectionAnalyzer)initWithAnalyzerSessionId:(id)a3 sessionManagerDelegate:(id)a4 queue:(id)a5;
- (IASDailyGarbageCollectionAnalyzer)initWithAnalyzerSessionId:(id)a3 sessionManagerDelegate:(id)a4 queue:(id)a5 eventHandler:(id)a6;
- (void)consumeAction:(id)a3;
@end

@implementation IASDailyGarbageCollectionAnalyzer

- (IASDailyGarbageCollectionAnalyzer)initWithAnalyzerSessionId:(id)a3 sessionManagerDelegate:(id)a4 queue:(id)a5
{
  v11.receiver = self;
  v11.super_class = IASDailyGarbageCollectionAnalyzer;
  v7 = [(IASAnalyzer *)&v11 initWithAnalyzerSessionId:a3 sessionManagerDelegate:a4 queue:a5];
  if (v7)
  {
    v8 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6);
    objc_msgSend_setDateOfLastAction_(v7, v9, v8);
  }

  return v7;
}

- (IASDailyGarbageCollectionAnalyzer)initWithAnalyzerSessionId:(id)a3 sessionManagerDelegate:(id)a4 queue:(id)a5 eventHandler:(id)a6
{
  v12.receiver = self;
  v12.super_class = IASDailyGarbageCollectionAnalyzer;
  v8 = [(IASAnalyzer *)&v12 initWithAnalyzerSessionId:a3 sessionManagerDelegate:a4 queue:a5 eventHandler:a6];
  if (v8)
  {
    v9 = objc_msgSend_date(MEMORY[0x1E695DF00], v6, v7);
    objc_msgSend_setDateOfLastAction_(v8, v10, v9);
  }

  return v8;
}

- (void)consumeAction:(id)a3
{
  v5 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, a3);
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