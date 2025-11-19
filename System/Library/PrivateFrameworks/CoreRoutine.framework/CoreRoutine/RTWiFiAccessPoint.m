@interface RTWiFiAccessPoint
- (BOOL)isEqual:(id)a3;
- (RTWiFiAccessPoint)initWithCoder:(id)a3;
- (RTWiFiAccessPoint)initWithDictionary:(id)a3;
- (RTWiFiAccessPoint)initWithFirstJSONDictionary:(id)a3;
- (RTWiFiAccessPoint)initWithMac:(id)a3 rssi:(int64_t)a4 channel:(int64_t)a5 age:(double)a6 date:(id)a7;
- (id)description;
- (id)outputToDictionary;
- (id)outputToFirstJSONDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTWiFiAccessPoint

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v8 = *&self->_mac;
  channel = self->_channel;
  age = self->_age;
  v5 = [(NSDate *)self->_date stringFromDate];
  v6 = [v2 stringWithFormat:@"mac, %@, rssi, %ld, channel, %ld, age, %.2f, date, %@", v8, channel, *&age, v5];

  return v6;
}

- (RTWiFiAccessPoint)initWithMac:(id)a3 rssi:(int64_t)a4 channel:(int64_t)a5 age:(double)a6 date:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = v13;
  if (!v12)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v18 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: mac";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    goto LABEL_9;
  }

  if (!v13)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: date";
    goto LABEL_12;
  }

  v22.receiver = self;
  v22.super_class = RTWiFiAccessPoint;
  v15 = [(RTWiFiAccessPoint *)&v22 init];
  if (v15)
  {
    v16 = [v12 copy];
    mac = v15->_mac;
    v15->_mac = v16;

    v15->_rssi = a4;
    v15->_channel = a5;
    v15->_age = a6;
    objc_storeStrong(&v15->_date, a7);
  }

  self = v15;
  v18 = self;
LABEL_10:

  return v18;
}

- (RTWiFiAccessPoint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mac"];
  v6 = [v4 decodeIntegerForKey:@"rssi"];
  v7 = [v4 decodeIntegerForKey:@"channel"];
  [v4 decodeDoubleForKey:@"age"];
  v9 = v8;
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v11 = [(RTWiFiAccessPoint *)self initWithMac:v5 rssi:v6 channel:v7 age:v10 date:v9];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  mac = self->_mac;
  v5 = a3;
  [v5 encodeObject:mac forKey:@"mac"];
  [v5 encodeInteger:self->_rssi forKey:@"rssi"];
  [v5 encodeInteger:self->_channel forKey:@"channel"];
  [v5 encodeDouble:@"age" forKey:self->_age];
  [v5 encodeObject:self->_date forKey:@"date"];
}

- (RTWiFiAccessPoint)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForKey:@"mac"];
  v6 = [v4 valueForKey:@"rssi"];
  v7 = [v4 valueForKey:@"channel"];
  v8 = [v4 valueForKey:@"age"];
  v9 = [v4 valueForKey:@"date"];

  v10 = 0;
  if (v5 && v6 && v7 && v8 && v9)
  {
    v11 = MEMORY[0x1E695DF00];
    [v9 doubleValue];
    v12 = [v11 dateWithTimeIntervalSince1970:?];
    v13 = [v6 integerValue];
    v14 = [v7 integerValue];
    [v8 doubleValue];
    v10 = [(RTWiFiAccessPoint *)self initWithMac:v5 rssi:v13 channel:v14 age:v12 date:?];

    self = v10;
  }

  return v10;
}

- (id)outputToDictionary
{
  v3 = objc_opt_new();
  v4 = [(RTWiFiAccessPoint *)self mac];
  [v3 setObject:v4 forKey:@"mac"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[RTWiFiAccessPoint rssi](self, "rssi")}];
  [v3 setObject:v5 forKey:@"rssi"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[RTWiFiAccessPoint channel](self, "channel")}];
  [v3 setObject:v6 forKey:@"channel"];

  v7 = MEMORY[0x1E696AD98];
  [(RTWiFiAccessPoint *)self age];
  v8 = [v7 numberWithDouble:?];
  [v3 setObject:v8 forKey:@"age"];

  v9 = MEMORY[0x1E696AD98];
  v10 = [(RTWiFiAccessPoint *)self date];
  [v10 timeIntervalSince1970];
  v11 = [v9 numberWithDouble:?];
  [v3 setObject:v11 forKey:@"date"];

  v12 = [(RTWiFiAccessPoint *)self date];
  v13 = [v12 getFormattedDateString];
  [v3 setObject:v13 forKey:@"dateAsString"];

  return v3;
}

- (RTWiFiAccessPoint)initWithFirstJSONDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForKey:@"macid"];
  v6 = [v4 valueForKey:@"rssi"];
  v7 = [v4 valueForKey:@"ch"];

  v8 = 0;
  if (v5 && v6 && v7)
  {
    v9 = [MEMORY[0x1E695DF00] date];
    v8 = -[RTWiFiAccessPoint initWithMac:rssi:channel:age:date:](self, "initWithMac:rssi:channel:age:date:", v5, [v6 integerValue], objc_msgSend(v7, "integerValue"), v9, 0.0);

    self = v8;
  }

  return v8;
}

- (id)outputToFirstJSONDictionary
{
  v3 = objc_opt_new();
  v4 = [(RTWiFiAccessPoint *)self mac];
  [v3 setObject:v4 forKey:@"macid"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[RTWiFiAccessPoint rssi](self, "rssi")}];
  [v3 setObject:v5 forKey:@"rssi"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[RTWiFiAccessPoint channel](self, "channel")}];
  [v3 setObject:v6 forKey:@"ch"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_mac hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_rssi];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_channel];
  v7 = [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_age];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(NSDate *)self->_date hash];

  return v9 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_25;
  }

  v6 = v5;
  v7 = [(RTWiFiAccessPoint *)self mac];
  if (!v7)
  {
    v3 = [(RTWiFiAccessPoint *)v6 mac];
    if (!v3)
    {
      v10 = 1;
LABEL_10:

      goto LABEL_11;
    }
  }

  v8 = [(RTWiFiAccessPoint *)self mac];
  v9 = [(RTWiFiAccessPoint *)v6 mac];
  v10 = [v8 isEqualToString:v9];

  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_11:

  v12 = [(RTWiFiAccessPoint *)self rssi];
  v13 = [(RTWiFiAccessPoint *)v6 rssi];
  v14 = [(RTWiFiAccessPoint *)self channel];
  v15 = [(RTWiFiAccessPoint *)v6 channel];
  [(RTWiFiAccessPoint *)self age];
  v17 = v16;
  [(RTWiFiAccessPoint *)v6 age];
  v19 = v18;
  v20 = [(RTWiFiAccessPoint *)self date];
  v32 = v6;
  if (!v20)
  {
    v30 = [(RTWiFiAccessPoint *)v6 date];
    if (!v30)
    {
      v31 = 0;
      v27 = 1;
LABEL_16:

      goto LABEL_17;
    }
  }

  [(RTWiFiAccessPoint *)self date:v30];
  v22 = v21 = v10;
  [(RTWiFiAccessPoint *)v6 date];
  v23 = v15;
  v24 = v14;
  v26 = v25 = v12;
  v27 = [v22 isEqualToDate:v26];

  v12 = v25;
  v14 = v24;
  v15 = v23;

  v10 = v21;
  if (!v20)
  {
    goto LABEL_16;
  }

LABEL_17:

  if (v12 == v13)
  {
    v28 = v10;
  }

  else
  {
    v28 = 0;
  }

  if (v14 != v15)
  {
    v28 = 0;
  }

  if (v17 != v19)
  {
    v28 = 0;
  }

  v11 = v28 & v27;

LABEL_25:
  return v11;
}

@end