@interface BDSMutableSecureEngagementData
- (BDSMutableSecureEngagementData)initWithCloudData:(id)data;
- (BDSMutableSecureEngagementData)initWithCoder:(id)coder;
- (BDSMutableSecureEngagementData)initWithRecord:(id)record;
- (BDSMutableSecureEngagementData)initWithStartTimestampString:(id)string durationInterval:(double)interval;
- (NSString)description;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSMutableSecureEngagementData

- (BDSMutableSecureEngagementData)initWithStartTimestampString:(id)string durationInterval:(double)interval
{
  stringCopy = string;
  if (stringCopy)
  {
    v12.receiver = self;
    v12.super_class = BDSMutableSecureEngagementData;
    v7 = [(BCMutableCloudData *)&v12 init];
    if (v7)
    {
      v8 = [stringCopy copy];
      startTimestampString = v7->_startTimestampString;
      v7->_startTimestampString = v8;

      v7->_durationInterval = interval;
    }
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3620();
    }

    v7 = 0;
  }

  return v7;
}

- (BDSMutableSecureEngagementData)initWithCloudData:(id)data
{
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = BDSMutableSecureEngagementData;
  v5 = [(BCMutableCloudData *)&v16 initWithCloudData:dataCopy];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      startTimestampString = [v6 startTimestampString];
      v9 = [startTimestampString copy];
      startTimestampString = v5->_startTimestampString;
      v5->_startTimestampString = v9;

      [v7 durationInterval];
      v5->_durationInterval = v11;
      value = [v7 value];
      v13 = [value copy];
      p_super = &v5->_value->super;
      v5->_value = v13;
    }

    else
    {
      p_super = sub_100002660();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_1001C34A4();
      }

      value = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (BDSMutableSecureEngagementData)initWithRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    p_super = sub_100002660();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3688();
    }

    goto LABEL_9;
  }

  v15.receiver = self;
  v15.super_class = BDSMutableSecureEngagementData;
  v5 = [(BCMutableCloudData *)&v15 initWithRecord:recordCopy];
  if (v5)
  {
    self = [recordCopy objectForKey:@"value"];
    if (![BDSSecureEngagementDataHelper isEngagementTimeSliceDataEmpty:self])
    {
      p_super = [BCCloudData localIdentifierFromRecord:recordCopy];
      v8 = [p_super copy];
      startTimestampString = v5->_startTimestampString;
      v5->_startTimestampString = v8;

      v10 = [recordCopy objectForKey:@"durationInterval"];
      [v10 doubleValue];
      v5->_durationInterval = v11;

      v12 = [(BDSMutableSecureEngagementData *)self copy];
      value = v5->_value;
      v5->_value = v12;

      goto LABEL_11;
    }

    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3654();
    }

    p_super = &v5->super.super;
LABEL_9:
    v5 = 0;
LABEL_11:
  }

  return v5;
}

- (NSString)description
{
  startTimestampString = [(BDSMutableSecureEngagementData *)self startTimestampString];
  [(BDSMutableSecureEngagementData *)self durationInterval];
  v5 = [NSString stringWithFormat:@"start timestamp: %@, duration interval: %.1lf", startTimestampString, v4];

  return v5;
}

- (id)configuredRecordFromAttributes
{
  v7.receiver = self;
  v7.super_class = BDSMutableSecureEngagementData;
  configuredRecordFromAttributes = [(BCMutableCloudData *)&v7 configuredRecordFromAttributes];
  [(BDSMutableSecureEngagementData *)self durationInterval];
  v4 = [NSNumber numberWithDouble:?];
  [configuredRecordFromAttributes setObject:v4 forKey:@"durationInterval"];

  value = [(BDSMutableSecureEngagementData *)self value];
  [configuredRecordFromAttributes setObject:value forKey:@"value"];

  return configuredRecordFromAttributes;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BDSMutableSecureEngagementData;
  coderCopy = coder;
  [(BCMutableCloudData *)&v6 encodeWithCoder:coderCopy];
  [(BDSMutableSecureEngagementData *)self durationInterval:v6.receiver];
  [coderCopy encodeDouble:@"durationInterval" forKey:?];
  value = [(BDSMutableSecureEngagementData *)self value];
  [coderCopy encodeObject:value forKey:@"value"];
}

- (BDSMutableSecureEngagementData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = BDSMutableSecureEngagementData;
  v5 = [(BCMutableCloudData *)&v14 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    localRecordID = [(BCMutableCloudData *)v5 localRecordID];
    v8 = [localRecordID copy];
    startTimestampString = v6->_startTimestampString;
    v6->_startTimestampString = v8;

    [coderCopy decodeDoubleForKey:@"durationInterval"];
    v6->_durationInterval = v10;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v6->_value;
    v6->_value = v11;
  }

  return v6;
}

@end