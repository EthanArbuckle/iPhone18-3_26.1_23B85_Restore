@interface HMIVideoEventEntry
- (HMIVideoEventEntry)initWithValue:(id)value time:(id *)time;
@end

@implementation HMIVideoEventEntry

- (HMIVideoEventEntry)initWithValue:(id)value time:(id *)time
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = HMIVideoEventEntry;
  v8 = [(HMIVideoEventEntry *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, value);
    var3 = time->var3;
    *&v9->_time.value = *&time->var0;
    v9->_time.epoch = var3;
  }

  return v9;
}

@end