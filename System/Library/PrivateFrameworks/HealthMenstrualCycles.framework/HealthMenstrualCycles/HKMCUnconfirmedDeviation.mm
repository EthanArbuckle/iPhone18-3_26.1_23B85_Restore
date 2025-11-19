@interface HKMCUnconfirmedDeviation
- ($0AC6E346AE4835514AAA8AC86D8F4844)days;
- (BOOL)isEqual:(id)a3;
- (HKMCUnconfirmedDeviation)initWithCoder:(id)a3;
- (HKMCUnconfirmedDeviation)initWithType:(int64_t)a3 days:(id)a4 analyticsMetadata:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCUnconfirmedDeviation

- (HKMCUnconfirmedDeviation)initWithType:(int64_t)a3 days:(id)a4 analyticsMetadata:(id)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HKMCUnconfirmedDeviation;
  v11 = [(HKMCUnconfirmedDeviation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    v11->_days.start = var0;
    v11->_days.duration = var1;
    objc_storeStrong(&v11->_analyticsMetadata, a5);
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"Type"];
  [v5 encodeInteger:self->_days.start forKey:@"DaysStart"];
  [v5 encodeInteger:self->_days.duration forKey:@"DaysDuration"];
  [v5 encodeObject:self->_analyticsMetadata forKey:@"AnalyticsMetadata"];
}

- (HKMCUnconfirmedDeviation)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKMCUnconfirmedDeviation;
  v5 = [(HKMCUnconfirmedDeviation *)&v16 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"Type"];
    v5->_days.start = [v4 decodeIntegerForKey:@"DaysStart"];
    v5->_days.duration = [v4 decodeIntegerForKey:@"DaysDuration"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"AnalyticsMetadata"];
    analyticsMetadata = v5->_analyticsMetadata;
    v5->_analyticsMetadata = v13;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromDeviationType(self->_type);
  start = self->_days.start;
  duration = self->_days.duration;
  v8 = NSStringFromHKDayIndexRange();
  v9 = [v3 stringWithFormat:@"<%@:%p type:%@ days:%@ analytics:%@>", v4, self, v5, v8, self->_analyticsMetadata];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(HKMCUnconfirmedDeviation *)self type], v5 == [(HKMCUnconfirmedDeviation *)v4 type]))
    {
      v6 = [(HKMCUnconfirmedDeviation *)self days];
      v8 = v7;
      v10 = 0;
      if (v6 == [(HKMCUnconfirmedDeviation *)v4 days]&& v8 == v9)
      {
        v11 = [(HKMCUnconfirmedDeviation *)self analyticsMetadata];
        v12 = [(HKMCUnconfirmedDeviation *)v4 analyticsMetadata];
        if (v11 == v12)
        {
          v10 = 1;
        }

        else
        {
          v13 = [(HKMCUnconfirmedDeviation *)v4 analyticsMetadata];
          if (v13)
          {
            v14 = [(HKMCUnconfirmedDeviation *)self analyticsMetadata];
            v15 = [(HKMCUnconfirmedDeviation *)v4 analyticsMetadata];
            v10 = [v14 isEqual:v15];
          }

          else
          {
            v10 = 0;
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)days
{
  duration = self->_days.duration;
  start = self->_days.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

@end