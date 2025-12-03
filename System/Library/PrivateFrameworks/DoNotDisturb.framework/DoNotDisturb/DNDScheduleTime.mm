@interface DNDScheduleTime
+ (id)defaultEndTime;
+ (id)defaultStartTime;
- (BOOL)isEqual:(id)equal;
- (DNDScheduleTime)initWithCoder:(id)coder;
- (id)_initWithHour:(unint64_t)hour minute:(unint64_t)minute;
- (id)_initWithTime:(id)time;
- (id)dateComponents;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDScheduleTime

+ (id)defaultStartTime
{
  v2 = [[self alloc] _initWithHour:9 minute:0];

  return v2;
}

+ (id)defaultEndTime
{
  v2 = [[self alloc] _initWithHour:17 minute:0];

  return v2;
}

- (id)_initWithTime:(id)time
{
  timeCopy = time;
  hour = [timeCopy hour];
  minute = [timeCopy minute];

  return [(DNDScheduleTime *)self _initWithHour:hour minute:minute];
}

- (id)_initWithHour:(unint64_t)hour minute:(unint64_t)minute
{
  v8.receiver = self;
  v8.super_class = DNDScheduleTime;
  result = [(DNDScheduleTime *)&v8 init];
  if (result)
  {
    *&v7 = hour % 0x18;
    *(&v7 + 1) = minute % 0x3C;
    *(result + 8) = v7;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      hour = [(DNDScheduleTime *)self hour];
      if (hour == [(DNDScheduleTime *)v5 hour])
      {
        minute = [(DNDScheduleTime *)self minute];
        v8 = minute == [(DNDScheduleTime *)v5 minute];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableScheduleTime alloc];

  return [(DNDScheduleTime *)v4 _initWithTime:self];
}

- (DNDScheduleTime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"hour"];
  v6 = [coderCopy decodeIntegerForKey:@"minute"];

  return [(DNDScheduleTime *)self _initWithHour:v5 minute:v6];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DNDScheduleTime hour](self forKey:{"hour"), @"hour"}];
  [coderCopy encodeInteger:-[DNDScheduleTime minute](self forKey:{"minute"), @"minute"}];
}

- (id)dateComponents
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v3 setHour:{-[DNDScheduleTime hour](self, "hour")}];
  [v3 setMinute:{-[DNDScheduleTime minute](self, "minute")}];
  [v3 setSecond:0];

  return v3;
}

@end