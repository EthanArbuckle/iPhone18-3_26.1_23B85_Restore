@interface CKLStreamTrafficConsoleLogObserver
- (CKLStreamTrafficConsoleLogObserver)initWithLogTypes:(unint64_t)types;
@end

@implementation CKLStreamTrafficConsoleLogObserver

- (CKLStreamTrafficConsoleLogObserver)initWithLogTypes:(unint64_t)types
{
  v7.receiver = self;
  v7.super_class = CKLStreamTrafficConsoleLogObserver;
  v3 = [(CKLStreamTrafficObserver *)&v7 initWithLogTypes:types];
  v5 = v3;
  if (v3)
  {
    objc_msgSend_setRequestParsedBlock_(v3, v4, &unk_28385D340);
  }

  return v5;
}

@end