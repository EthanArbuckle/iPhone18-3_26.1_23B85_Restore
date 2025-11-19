@interface BDSMutableSecureEngagementData
- (BDSMutableSecureEngagementData)initWithCloudData:(id)a3;
- (BDSMutableSecureEngagementData)initWithCoder:(id)a3;
- (BDSMutableSecureEngagementData)initWithRecord:(id)a3;
- (BDSMutableSecureEngagementData)initWithStartTimestampString:(id)a3 durationInterval:(double)a4;
- (NSString)description;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSMutableSecureEngagementData

- (BDSMutableSecureEngagementData)initWithStartTimestampString:(id)a3 durationInterval:(double)a4
{
  v6 = a3;
  if (v6)
  {
    v12.receiver = self;
    v12.super_class = BDSMutableSecureEngagementData;
    v7 = [(BCMutableCloudData *)&v12 init];
    if (v7)
    {
      v8 = [v6 copy];
      startTimestampString = v7->_startTimestampString;
      v7->_startTimestampString = v8;

      v7->_durationInterval = a4;
    }
  }

  else
  {
    v10 = BDSCloudKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704DB4();
    }

    v7 = 0;
  }

  return v7;
}

- (BDSMutableSecureEngagementData)initWithCloudData:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = BDSMutableSecureEngagementData;
  v5 = [(BCMutableCloudData *)&v16 initWithCloudData:v4];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      v8 = [v6 startTimestampString];
      v9 = [v8 copy];
      startTimestampString = v5->_startTimestampString;
      v5->_startTimestampString = v9;

      [v7 durationInterval];
      v5->_durationInterval = v11;
      v12 = [v7 value];
      v13 = [v12 copy];
      p_super = &v5->_value->super;
      v5->_value = v13;
    }

    else
    {
      p_super = BDSCloudKitLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_1E4704C38();
      }

      v12 = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (BDSMutableSecureEngagementData)initWithRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    p_super = BDSCloudKitLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704E1C();
    }

    goto LABEL_9;
  }

  v15.receiver = self;
  v15.super_class = BDSMutableSecureEngagementData;
  v5 = [(BCMutableCloudData *)&v15 initWithRecord:v4];
  if (v5)
  {
    self = [v4 objectForKey:@"value"];
    if (![BDSSecureEngagementDataHelper isEngagementTimeSliceDataEmpty:self])
    {
      p_super = [BCCloudData localIdentifierFromRecord:v4];
      v8 = [p_super copy];
      startTimestampString = v5->_startTimestampString;
      v5->_startTimestampString = v8;

      v10 = [v4 objectForKey:@"durationInterval"];
      [v10 doubleValue];
      v5->_durationInterval = v11;

      v12 = [(BDSMutableSecureEngagementData *)self copy];
      value = v5->_value;
      v5->_value = v12;

      goto LABEL_11;
    }

    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704DE8();
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
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BDSMutableSecureEngagementData *)self startTimestampString];
  [(BDSMutableSecureEngagementData *)self durationInterval];
  v6 = [v3 stringWithFormat:@"start timestamp: %@, duration interval: %.1lf", v4, v5];

  return v6;
}

- (id)configuredRecordFromAttributes
{
  v8.receiver = self;
  v8.super_class = BDSMutableSecureEngagementData;
  v3 = [(BCMutableCloudData *)&v8 configuredRecordFromAttributes];
  v4 = MEMORY[0x1E696AD98];
  [(BDSMutableSecureEngagementData *)self durationInterval];
  v5 = [v4 numberWithDouble:?];
  [v3 setObject:v5 forKey:@"durationInterval"];

  v6 = [(BDSMutableSecureEngagementData *)self value];
  [v3 setObject:v6 forKey:@"value"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BDSMutableSecureEngagementData;
  v4 = a3;
  [(BCMutableCloudData *)&v6 encodeWithCoder:v4];
  [(BDSMutableSecureEngagementData *)self durationInterval:v6.receiver];
  [v4 encodeDouble:@"durationInterval" forKey:?];
  v5 = [(BDSMutableSecureEngagementData *)self value];
  [v4 encodeObject:v5 forKey:@"value"];
}

- (BDSMutableSecureEngagementData)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BDSMutableSecureEngagementData;
  v5 = [(BCMutableCloudData *)&v14 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(BCMutableCloudData *)v5 localRecordID];
    v8 = [v7 copy];
    startTimestampString = v6->_startTimestampString;
    v6->_startTimestampString = v8;

    [v4 decodeDoubleForKey:@"durationInterval"];
    v6->_durationInterval = v10;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v6->_value;
    v6->_value = v11;
  }

  return v6;
}

@end