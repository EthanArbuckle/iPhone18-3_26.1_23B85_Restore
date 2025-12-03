@interface HMIVideoTimelineEntry
- (HMIVideoTimelineEntry)initWithTime:(id *)time date:(id)date;
- (NSString)description;
@end

@implementation HMIVideoTimelineEntry

- (HMIVideoTimelineEntry)initWithTime:(id *)time date:(id)date
{
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = HMIVideoTimelineEntry;
  v8 = [(HMIVideoTimelineEntry *)&v12 init];
  v9 = v8;
  if (v8)
  {
    var3 = time->var3;
    *&v8->_time.value = *&time->var0;
    v8->_time.epoch = var3;
    objc_storeStrong(&v8->_date, date);
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