@interface BSServiceListenerConnectionRevocationEvent
+ (id)eventForImplicit:(uint64_t)a1;
- (BOOL)isExplicitInitiatorInvalidation;
@end

@implementation BSServiceListenerConnectionRevocationEvent

+ (id)eventForImplicit:(uint64_t)a1
{
  objc_opt_self();
  if (qword_1ED4A7C40 != -1)
  {
    dispatch_once(&qword_1ED4A7C40, &__block_literal_global_8);
  }

  v3 = &_MergedGlobals_9;
  if (!a2)
  {
    v3 = &qword_1ED4A7C38;
  }

  v4 = *v3;

  return v4;
}

void __63__BSServiceListenerConnectionRevocationEvent_eventForImplicit___block_invoke()
{
  v0 = objc_alloc_init(BSServiceListenerConnectionRevocationEvent);
  v1 = _MergedGlobals_9;
  _MergedGlobals_9 = v0;

  v2 = objc_alloc_init(BSServiceListenerConnectionRevocationEvent);
  v3 = qword_1ED4A7C38;
  qword_1ED4A7C38 = v2;
}

- (BOOL)isExplicitInitiatorInvalidation
{
  v3 = [BSServiceListenerConnectionRevocationEvent eventForImplicit:?];
  LOBYTE(self) = v3 == self;

  return self;
}

@end