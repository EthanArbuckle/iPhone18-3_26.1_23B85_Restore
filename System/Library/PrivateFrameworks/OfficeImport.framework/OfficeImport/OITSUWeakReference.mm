@interface OITSUWeakReference
+ (id)weakReferenceWithObject:(id)a3;
- (OITSUWeakReference)init;
- (OITSUWeakReference)initWithObject:(id)a3;
- (void)dealloc;
@end

@implementation OITSUWeakReference

+ (id)weakReferenceWithObject:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithObject:a3];

  return v3;
}

- (OITSUWeakReference)initWithObject:(id)a3
{
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = OITSUWeakReference;
    v4 = [(OITSUWeakReference *)&v7 init];
    v5 = v4;
    if (v4)
    {
      objc_storeWeak(&v4->mObject, a3);
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (OITSUWeakReference)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUWeakReference init]"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUWeakReference.m"], 37, 0, "Do not call method");
  +[OITSUAssertionHandler logBacktraceThrottled];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%s: %s", "Do not call method", "-[OITSUWeakReference init]"), 0}]);
}

- (void)dealloc
{
  objc_storeWeak(&self->mObject, 0);
  v3.receiver = self;
  v3.super_class = OITSUWeakReference;
  [(OITSUWeakReference *)&v3 dealloc];
}

@end