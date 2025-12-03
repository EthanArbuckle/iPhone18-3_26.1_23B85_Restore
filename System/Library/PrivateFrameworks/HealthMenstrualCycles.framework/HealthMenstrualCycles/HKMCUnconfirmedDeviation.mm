@interface HKMCUnconfirmedDeviation
- ($0AC6E346AE4835514AAA8AC86D8F4844)days;
- (BOOL)isEqual:(id)equal;
- (HKMCUnconfirmedDeviation)initWithCoder:(id)coder;
- (HKMCUnconfirmedDeviation)initWithType:(int64_t)type days:(id)days analyticsMetadata:(id)metadata;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCUnconfirmedDeviation

- (HKMCUnconfirmedDeviation)initWithType:(int64_t)type days:(id)days analyticsMetadata:(id)metadata
{
  var1 = days.var1;
  var0 = days.var0;
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = HKMCUnconfirmedDeviation;
  v11 = [(HKMCUnconfirmedDeviation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    v11->_days.start = var0;
    v11->_days.duration = var1;
    objc_storeStrong(&v11->_analyticsMetadata, metadata);
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"Type"];
  [coderCopy encodeInteger:self->_days.start forKey:@"DaysStart"];
  [coderCopy encodeInteger:self->_days.duration forKey:@"DaysDuration"];
  [coderCopy encodeObject:self->_analyticsMetadata forKey:@"AnalyticsMetadata"];
}

- (HKMCUnconfirmedDeviation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HKMCUnconfirmedDeviation;
  v5 = [(HKMCUnconfirmedDeviation *)&v16 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"Type"];
    v5->_days.start = [coderCopy decodeIntegerForKey:@"DaysStart"];
    v5->_days.duration = [coderCopy decodeIntegerForKey:@"DaysDuration"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"AnalyticsMetadata"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(HKMCUnconfirmedDeviation *)self type], v5 == [(HKMCUnconfirmedDeviation *)equalCopy type]))
    {
      days = [(HKMCUnconfirmedDeviation *)self days];
      v8 = v7;
      v10 = 0;
      if (days == [(HKMCUnconfirmedDeviation *)equalCopy days]&& v8 == v9)
      {
        analyticsMetadata = [(HKMCUnconfirmedDeviation *)self analyticsMetadata];
        analyticsMetadata2 = [(HKMCUnconfirmedDeviation *)equalCopy analyticsMetadata];
        if (analyticsMetadata == analyticsMetadata2)
        {
          v10 = 1;
        }

        else
        {
          analyticsMetadata3 = [(HKMCUnconfirmedDeviation *)equalCopy analyticsMetadata];
          if (analyticsMetadata3)
          {
            analyticsMetadata4 = [(HKMCUnconfirmedDeviation *)self analyticsMetadata];
            analyticsMetadata5 = [(HKMCUnconfirmedDeviation *)equalCopy analyticsMetadata];
            v10 = [analyticsMetadata4 isEqual:analyticsMetadata5];
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