@interface CKLStreamTrafficConsoleLogObserver
- (CKLStreamTrafficConsoleLogObserver)initWithLogTypes:(unint64_t)a3;
@end

@implementation CKLStreamTrafficConsoleLogObserver

- (CKLStreamTrafficConsoleLogObserver)initWithLogTypes:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = CKLStreamTrafficConsoleLogObserver;
  v3 = [(CKLStreamTrafficObserver *)&v7 initWithLogTypes:a3];
  v5 = v3;
  if (v3)
  {
    objc_msgSend_setRequestParsedBlock_(v3, v4, &unk_28385D340);
  }

  return v5;
}

@end