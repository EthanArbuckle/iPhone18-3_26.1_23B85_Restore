@interface RTWiFiAccessPoint
- (BOOL)isEqual:(id)equal;
- (RTWiFiAccessPoint)initWithCoder:(id)coder;
- (RTWiFiAccessPoint)initWithDictionary:(id)dictionary;
- (RTWiFiAccessPoint)initWithFirstJSONDictionary:(id)dictionary;
- (RTWiFiAccessPoint)initWithMac:(id)mac rssi:(int64_t)rssi channel:(int64_t)channel age:(double)age date:(id)date;
- (id)description;
- (id)outputToDictionary;
- (id)outputToFirstJSONDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTWiFiAccessPoint

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v8 = *&self->_mac;
  channel = self->_channel;
  age = self->_age;
  stringFromDate = [(NSDate *)self->_date stringFromDate];
  v6 = [v2 stringWithFormat:@"mac, %@, rssi, %ld, channel, %ld, age, %.2f, date, %@", v8, channel, *&age, stringFromDate];

  return v6;
}

- (RTWiFiAccessPoint)initWithMac:(id)mac rssi:(int64_t)rssi channel:(int64_t)channel age:(double)age date:(id)date
{
  macCopy = mac;
  dateCopy = date;
  v14 = dateCopy;
  if (!macCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: mac";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    goto LABEL_9;
  }

  if (!dateCopy)
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
    v16 = [macCopy copy];
    mac = v15->_mac;
    v15->_mac = v16;

    v15->_rssi = rssi;
    v15->_channel = channel;
    v15->_age = age;
    objc_storeStrong(&v15->_date, date);
  }

  self = v15;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (RTWiFiAccessPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mac"];
  v6 = [coderCopy decodeIntegerForKey:@"rssi"];
  v7 = [coderCopy decodeIntegerForKey:@"channel"];
  [coderCopy decodeDoubleForKey:@"age"];
  v9 = v8;
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v11 = [(RTWiFiAccessPoint *)self initWithMac:v5 rssi:v6 channel:v7 age:v10 date:v9];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  mac = self->_mac;
  coderCopy = coder;
  [coderCopy encodeObject:mac forKey:@"mac"];
  [coderCopy encodeInteger:self->_rssi forKey:@"rssi"];
  [coderCopy encodeInteger:self->_channel forKey:@"channel"];
  [coderCopy encodeDouble:@"age" forKey:self->_age];
  [coderCopy encodeObject:self->_date forKey:@"date"];
}

- (RTWiFiAccessPoint)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy valueForKey:@"mac"];
  v6 = [dictionaryCopy valueForKey:@"rssi"];
  v7 = [dictionaryCopy valueForKey:@"channel"];
  v8 = [dictionaryCopy valueForKey:@"age"];
  v9 = [dictionaryCopy valueForKey:@"date"];

  v10 = 0;
  if (v5 && v6 && v7 && v8 && v9)
  {
    v11 = MEMORY[0x1E695DF00];
    [v9 doubleValue];
    v12 = [v11 dateWithTimeIntervalSince1970:?];
    integerValue = [v6 integerValue];
    integerValue2 = [v7 integerValue];
    [v8 doubleValue];
    v10 = [(RTWiFiAccessPoint *)self initWithMac:v5 rssi:integerValue channel:integerValue2 age:v12 date:?];

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
  date = [(RTWiFiAccessPoint *)self date];
  [date timeIntervalSince1970];
  v11 = [v9 numberWithDouble:?];
  [v3 setObject:v11 forKey:@"date"];

  date2 = [(RTWiFiAccessPoint *)self date];
  getFormattedDateString = [date2 getFormattedDateString];
  [v3 setObject:getFormattedDateString forKey:@"dateAsString"];

  return v3;
}

- (RTWiFiAccessPoint)initWithFirstJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy valueForKey:@"macid"];
  v6 = [dictionaryCopy valueForKey:@"rssi"];
  v7 = [dictionaryCopy valueForKey:@"ch"];

  v8 = 0;
  if (v5 && v6 && v7)
  {
    date = [MEMORY[0x1E695DF00] date];
    v8 = -[RTWiFiAccessPoint initWithMac:rssi:channel:age:date:](self, "initWithMac:rssi:channel:age:date:", v5, [v6 integerValue], objc_msgSend(v7, "integerValue"), date, 0.0);

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

  v6 = equalCopy;
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

  rssi = [(RTWiFiAccessPoint *)self rssi];
  rssi2 = [(RTWiFiAccessPoint *)v6 rssi];
  channel = [(RTWiFiAccessPoint *)self channel];
  channel2 = [(RTWiFiAccessPoint *)v6 channel];
  [(RTWiFiAccessPoint *)self age];
  v17 = v16;
  [(RTWiFiAccessPoint *)v6 age];
  v19 = v18;
  date = [(RTWiFiAccessPoint *)self date];
  v32 = v6;
  if (!date)
  {
    date2 = [(RTWiFiAccessPoint *)v6 date];
    if (!date2)
    {
      v31 = 0;
      v27 = 1;
LABEL_16:

      goto LABEL_17;
    }
  }

  [(RTWiFiAccessPoint *)self date:date2];
  v22 = v21 = v10;
  [(RTWiFiAccessPoint *)v6 date];
  v23 = channel2;
  v24 = channel;
  v26 = v25 = rssi;
  v27 = [v22 isEqualToDate:v26];

  rssi = v25;
  channel = v24;
  channel2 = v23;

  v10 = v21;
  if (!date)
  {
    goto LABEL_16;
  }

LABEL_17:

  if (rssi == rssi2)
  {
    v28 = v10;
  }

  else
  {
    v28 = 0;
  }

  if (channel != channel2)
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