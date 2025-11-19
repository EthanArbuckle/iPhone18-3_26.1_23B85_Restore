@interface MRResultReason
- (MRResultReason)initWithResult:(BOOL)a3 reason:(id)a4;
@end

@implementation MRResultReason

- (MRResultReason)initWithResult:(BOOL)a3 reason:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MRResultReason;
  v8 = [(MRResultReason *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_result = a3;
    objc_storeStrong(&v8->_reason, a4);
  }

  return v9;
}

@end