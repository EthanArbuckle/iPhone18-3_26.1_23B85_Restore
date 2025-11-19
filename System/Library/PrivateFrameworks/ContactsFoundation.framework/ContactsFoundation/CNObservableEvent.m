@interface CNObservableEvent
+ (CNObservableEvent)eventWithResult:(id)a3;
+ (id)completionEvent;
+ (id)failureEventWithError:(id)a3;
- (BOOL)hasValue;
- (NSError)error;
- (id)value;
- (unint64_t)eventType;
- (void)dematerializeWithObserver:(id)a3;
@end

@implementation CNObservableEvent

+ (CNObservableEvent)eventWithResult:(id)a3
{
  v3 = a3;
  v4 = [[_CNObservableResultEvent alloc] initWithResult:v3];

  return v4;
}

+ (id)completionEvent
{
  if (completionEvent_cn_once_token_1 != -1)
  {
    +[CNObservableEvent completionEvent];
  }

  v3 = completionEvent_cn_once_object_1;

  return v3;
}

uint64_t __36__CNObservableEvent_completionEvent__block_invoke()
{
  v0 = objc_alloc_init(_CNObservableCompletionEvent);
  v1 = completionEvent_cn_once_object_1;
  completionEvent_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)failureEventWithError:(id)a3
{
  v3 = a3;
  v4 = [[_CNObservableFailureEvent alloc] initWithError:v3];

  return v4;
}

- (unint64_t)eventType
{
  v2 = CNAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (BOOL)hasValue
{
  v2 = CNAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (id)value
{
  v2 = CNAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (NSError)error
{
  v2 = CNAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (void)dematerializeWithObserver:(id)a3
{
  v5 = a3;
  v6 = CNAbstractMethodException(self, a2);
  objc_exception_throw(v6);
}

@end