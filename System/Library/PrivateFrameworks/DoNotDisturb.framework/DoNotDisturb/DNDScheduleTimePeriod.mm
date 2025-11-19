@interface DNDScheduleTimePeriod
- (BOOL)isEqual:(id)a3;
- (DNDScheduleTimePeriod)initWithCoder:(id)a3;
- (id)_initWithPeriod:(id)a3;
- (id)_initWithStartTime:(id)a3 endTime:(id)a4 weekdays:(unint64_t)a5;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDScheduleTimePeriod

- (id)_initWithPeriod:(id)a3
{
  v4 = a3;
  v5 = [v4 startTime];
  v6 = [v4 endTime];
  if (v4)
  {
    v7 = [v4 weekdays];
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v8 = [(DNDScheduleTimePeriod *)self _initWithStartTime:v5 endTime:v6 weekdays:v7];

  return v8;
}

- (id)_initWithStartTime:(id)a3 endTime:(id)a4 weekdays:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = DNDScheduleTimePeriod;
  v10 = [(DNDScheduleTimePeriod *)&v21 init];
  if (v10)
  {
    v11 = [v8 copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = +[DNDScheduleTime defaultStartTime];
    }

    startTime = v10->_startTime;
    v10->_startTime = v13;

    v15 = [v9 copy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = +[DNDScheduleTime defaultEndTime];
    }

    endTime = v10->_endTime;
    v10->_endTime = v17;

    v19 = 127;
    if (a5 != 0xFFFFFFFF)
    {
      v19 = a5;
    }

    v10->_weekdays = v19;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(DNDScheduleTimePeriod *)self startTime];
  v4 = [v3 hash];
  v5 = [(DNDScheduleTimePeriod *)self endTime];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDScheduleTimePeriod *)self weekdays];

  return v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(DNDScheduleTimePeriod *)self startTime];
      v10 = [(DNDScheduleTimePeriod *)v8 startTime];
      if (v9 != v10)
      {
        v11 = [(DNDScheduleTimePeriod *)self startTime];
        if (!v11)
        {
          v14 = 0;
          goto LABEL_27;
        }

        v3 = v11;
        v12 = [(DNDScheduleTimePeriod *)v8 startTime];
        if (!v12)
        {
          v14 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v4 = v12;
        v13 = [(DNDScheduleTimePeriod *)self startTime];
        v5 = [(DNDScheduleTimePeriod *)v8 startTime];
        if (![v13 isEqual:v5])
        {
          v14 = 0;
LABEL_25:

          goto LABEL_26;
        }

        v26 = v5;
        v27 = v13;
        v28 = v4;
      }

      v15 = [(DNDScheduleTimePeriod *)self endTime];
      v16 = [(DNDScheduleTimePeriod *)v8 endTime];
      if (v15 == v16)
      {
        goto LABEL_16;
      }

      v17 = [(DNDScheduleTimePeriod *)self endTime];
      if (!v17)
      {

        v14 = 0;
        goto LABEL_24;
      }

      v5 = v17;
      v18 = [(DNDScheduleTimePeriod *)v8 endTime];
      if (!v18)
      {
        v14 = 0;
        goto LABEL_22;
      }

      v24 = v18;
      v19 = [(DNDScheduleTimePeriod *)self endTime];
      v20 = [(DNDScheduleTimePeriod *)v8 endTime];
      v25 = v19;
      v21 = v19;
      v4 = v20;
      if ([v21 isEqual:v20])
      {
LABEL_16:
        v22 = [(DNDScheduleTimePeriod *)self weekdays];
        v14 = v22 == [(DNDScheduleTimePeriod *)v8 weekdays];
        if (v15 == v16)
        {
LABEL_23:

LABEL_24:
          v13 = v27;
          v4 = v28;
          v5 = v26;
          if (v9 != v10)
          {
            goto LABEL_25;
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_22:
      goto LABEL_23;
    }

    v14 = 0;
  }

LABEL_28:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DNDScheduleTimePeriod *)self startTime];
  v5 = [(DNDScheduleTimePeriod *)self endTime];
  v6 = NSStringFromDNDWeekdays([(DNDScheduleTimePeriod *)self weekdays]);
  v7 = [v3 stringWithFormat:@"<period: s: %@ e: %@; weekdays: %@>", v4, v5, v6];;

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableScheduleTimePeriod alloc];

  return [(DNDScheduleTimePeriod *)v4 _initWithPeriod:self];
}

- (DNDScheduleTimePeriod)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
  if ([v4 containsValueForKey:@"weekdays"])
  {
    v7 = [v4 decodeIntegerForKey:@"weekdays"];
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v8 = [(DNDScheduleTimePeriod *)self _initWithStartTime:v5 endTime:v6 weekdays:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(DNDScheduleTimePeriod *)self startTime];
  [v6 encodeObject:v4 forKey:@"startTime"];

  v5 = [(DNDScheduleTimePeriod *)self endTime];
  [v6 encodeObject:v5 forKey:@"endTime"];

  [v6 encodeInteger:-[DNDScheduleTimePeriod weekdays](self forKey:{"weekdays"), @"weekdays"}];
}

@end