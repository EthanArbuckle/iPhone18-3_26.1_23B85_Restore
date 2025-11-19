@interface RTSourceMapsSupportHistoryEntryRoute
- (BOOL)isEqual:(id)a3;
- (RTSourceMapsSupportHistoryEntryRoute)initWithCoder:(id)a3;
- (RTSourceMapsSupportHistoryEntryRoute)initWithUsageDate:(id)a3 navigationWasInterrupted:(BOOL)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTSourceMapsSupportHistoryEntryRoute

- (RTSourceMapsSupportHistoryEntryRoute)initWithUsageDate:(id)a3 navigationWasInterrupted:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = RTSourceMapsSupportHistoryEntryRoute;
  result = [(RTSourceMapsSupportHistoryEntry *)&v6 initWithUsageDate:a3];
  if (result)
  {
    result->_navigationWasInterrupted = a4;
  }

  return result;
}

- (RTSourceMapsSupportHistoryEntryRoute)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[RTSourceMapsSupportHistoryEntryRoute initWithCoder:]";
      v13 = 1024;
      v14 = 31;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [aDecoder allowsKeyedCoding] (in %s:%d)", buf, 0x12u);
    }
  }

  v10.receiver = self;
  v10.super_class = RTSourceMapsSupportHistoryEntryRoute;
  v6 = [(RTSourceMapsSupportHistoryEntry *)&v10 initWithCoder:v4];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"navigationWasInterrupted"];
    v6->_navigationWasInterrupted = [v7 BOOLValue];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[RTSourceMapsSupportHistoryEntryRoute encodeWithCoder:]";
      v11 = 1024;
      v12 = 43;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [aCoder allowsKeyedCoding] (in %s:%d)", buf, 0x12u);
    }
  }

  v8.receiver = self;
  v8.super_class = RTSourceMapsSupportHistoryEntryRoute;
  [(RTSourceMapsSupportHistoryEntry *)&v8 encodeWithCoder:v4];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_navigationWasInterrupted];
  [v4 encodeObject:v6 forKey:@"navigationWasInterrupted"];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RTSourceMapsSupportHistoryEntryRoute;
  if ([(RTSourceMapsSupportHistoryEntry *)&v10 isEqual:v4])
  {
    v5 = v4;
    v6 = [(RTSourceMapsSupportHistoryEntryRoute *)self navigationWasInterrupted];
    v7 = [v5 navigationWasInterrupted];

    v8 = v6 ^ v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = RTSourceMapsSupportHistoryEntryRoute;
  v3 = [(RTSourceMapsSupportHistoryEntry *)&v7 hash];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[RTSourceMapsSupportHistoryEntryRoute navigationWasInterrupted](self, "navigationWasInterrupted")}];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = RTSourceMapsSupportHistoryEntryRoute;
  v4 = [(RTSourceMapsSupportHistoryEntry *)&v9 description];
  v5 = [(RTSourceMapsSupportHistoryEntryRoute *)self navigationWasInterrupted];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"%@, navigationWasInterrupted, %@", v4, v6];

  return v7;
}

@end