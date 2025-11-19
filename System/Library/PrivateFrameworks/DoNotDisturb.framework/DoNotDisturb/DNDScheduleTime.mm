@interface DNDScheduleTime
+ (id)defaultEndTime;
+ (id)defaultStartTime;
- (BOOL)isEqual:(id)a3;
- (DNDScheduleTime)initWithCoder:(id)a3;
- (id)_initWithHour:(unint64_t)a3 minute:(unint64_t)a4;
- (id)_initWithTime:(id)a3;
- (id)dateComponents;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDScheduleTime

+ (id)defaultStartTime
{
  v2 = [[a1 alloc] _initWithHour:9 minute:0];

  return v2;
}

+ (id)defaultEndTime
{
  v2 = [[a1 alloc] _initWithHour:17 minute:0];

  return v2;
}

- (id)_initWithTime:(id)a3
{
  v4 = a3;
  v5 = [v4 hour];
  v6 = [v4 minute];

  return [(DNDScheduleTime *)self _initWithHour:v5 minute:v6];
}

- (id)_initWithHour:(unint64_t)a3 minute:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = DNDScheduleTime;
  result = [(DNDScheduleTime *)&v8 init];
  if (result)
  {
    *&v7 = a3 % 0x18;
    *(&v7 + 1) = a4 % 0x3C;
    *(result + 8) = v7;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDScheduleTime *)self hour];
      if (v6 == [(DNDScheduleTime *)v5 hour])
      {
        v7 = [(DNDScheduleTime *)self minute];
        v8 = v7 == [(DNDScheduleTime *)v5 minute];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableScheduleTime alloc];

  return [(DNDScheduleTime *)v4 _initWithTime:self];
}

- (DNDScheduleTime)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"hour"];
  v6 = [v4 decodeIntegerForKey:@"minute"];

  return [(DNDScheduleTime *)self _initWithHour:v5 minute:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[DNDScheduleTime hour](self forKey:{"hour"), @"hour"}];
  [v4 encodeInteger:-[DNDScheduleTime minute](self forKey:{"minute"), @"minute"}];
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