@interface HMIVideoEventEntry
- (HMIVideoEventEntry)initWithValue:(id)a3 time:(id *)a4;
@end

@implementation HMIVideoEventEntry

- (HMIVideoEventEntry)initWithValue:(id)a3 time:(id *)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = HMIVideoEventEntry;
  v8 = [(HMIVideoEventEntry *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, a3);
    var3 = a4->var3;
    *&v9->_time.value = *&a4->var0;
    v9->_time.epoch = var3;
  }

  return v9;
}

@end