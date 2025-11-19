@interface RTSourceMapsSupportHistoryEntry
- (BOOL)isEqual:(id)a3;
- (RTSourceMapsSupportHistoryEntry)initWithCoder:(id)a3;
- (RTSourceMapsSupportHistoryEntry)initWithUsageDate:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTSourceMapsSupportHistoryEntry

- (RTSourceMapsSupportHistoryEntry)initWithUsageDate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTSourceMapsSupportHistoryEntry;
  v5 = [(RTSourceMapsSupportHistoryEntry *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    usageDate = v5->_usageDate;
    v5->_usageDate = v6;
  }

  return v5;
}

- (RTSourceMapsSupportHistoryEntry)initWithCoder:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTSourceMapsSupportHistoryEntry initWithCoder:]";
      v14 = 1024;
      v15 = 28;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [aDecoder allowsKeyedCoding] (in %s:%d)", buf, 0x12u);
    }
  }

  v11.receiver = self;
  v11.super_class = RTSourceMapsSupportHistoryEntry;
  v6 = [(RTSource *)&v11 initWithCoder:v4];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usageDate"];
    usageDate = v6->_usageDate;
    v6->_usageDate = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[RTSourceMapsSupportHistoryEntry encodeWithCoder:]";
      v10 = 1024;
      v11 = 40;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [aCoder allowsKeyedCoding] (in %s:%d)", buf, 0x12u);
    }
  }

  v7.receiver = self;
  v7.super_class = RTSourceMapsSupportHistoryEntry;
  [(RTSource *)&v7 encodeWithCoder:v4];
  [v4 encodeObject:self->_usageDate forKey:@"usageDate"];

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = RTSourceMapsSupportHistoryEntry;
  if ([(RTSource *)&v12 isEqual:v5])
  {
    v6 = v5;
    v7 = [(RTSourceMapsSupportHistoryEntry *)self usageDate];
    if (v7 || ([v6 usageDate], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(RTSourceMapsSupportHistoryEntry *)self usageDate];
      v9 = [v6 usageDate];
      v10 = [v8 isEqualToDate:v9];

      if (v7)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = RTSourceMapsSupportHistoryEntry;
  v3 = [(RTSource *)&v7 hash];
  v4 = [(RTSourceMapsSupportHistoryEntry *)self usageDate];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = RTSourceMapsSupportHistoryEntry;
  v4 = [(RTSource *)&v8 description];
  v5 = [(RTSourceMapsSupportHistoryEntry *)self usageDate];
  v6 = [v3 stringWithFormat:@"%@, usageDate, %@", v4, v5];

  return v6;
}

@end