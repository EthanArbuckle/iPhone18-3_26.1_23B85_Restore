@interface MRResultReason
- (MRResultReason)initWithResult:(BOOL)result reason:(id)reason;
@end

@implementation MRResultReason

- (MRResultReason)initWithResult:(BOOL)result reason:(id)reason
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = MRResultReason;
  v8 = [(MRResultReason *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_result = result;
    objc_storeStrong(&v8->_reason, reason);
  }

  return v9;
}

@end