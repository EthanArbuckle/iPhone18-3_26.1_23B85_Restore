@interface HMIVideoTimelineEntry
- (HMIVideoTimelineEntry)initWithTime:(id *)a3 date:(id)a4;
- (NSString)description;
@end

@implementation HMIVideoTimelineEntry

- (HMIVideoTimelineEntry)initWithTime:(id *)a3 date:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HMIVideoTimelineEntry;
  v8 = [(HMIVideoTimelineEntry *)&v12 init];
  v9 = v8;
  if (v8)
  {
    var3 = a3->var3;
    *&v8->_time.value = *&a3->var0;
    v8->_time.epoch = var3;
    objc_storeStrong(&v8->_date, a4);
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  time = self->_time;
  v4 = HMICMTimeDescription(&time);
  v5 = [v3 stringWithFormat:@"Time: %@, Date: %@", v4, self->_date];

  return v5;
}

@end