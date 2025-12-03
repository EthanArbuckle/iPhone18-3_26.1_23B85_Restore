@interface RTSourceMapsSupportHistoryEntryRoute
- (BOOL)isEqual:(id)equal;
- (RTSourceMapsSupportHistoryEntryRoute)initWithCoder:(id)coder;
- (RTSourceMapsSupportHistoryEntryRoute)initWithUsageDate:(id)date navigationWasInterrupted:(BOOL)interrupted;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTSourceMapsSupportHistoryEntryRoute

- (RTSourceMapsSupportHistoryEntryRoute)initWithUsageDate:(id)date navigationWasInterrupted:(BOOL)interrupted
{
  v6.receiver = self;
  v6.super_class = RTSourceMapsSupportHistoryEntryRoute;
  result = [(RTSourceMapsSupportHistoryEntry *)&v6 initWithUsageDate:date];
  if (result)
  {
    result->_navigationWasInterrupted = interrupted;
  }

  return result;
}

- (RTSourceMapsSupportHistoryEntryRoute)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
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
  v6 = [(RTSourceMapsSupportHistoryEntry *)&v10 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"navigationWasInterrupted"];
    v6->_navigationWasInterrupted = [v7 BOOLValue];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v13 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
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
  [(RTSourceMapsSupportHistoryEntry *)&v8 encodeWithCoder:coderCopy];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_navigationWasInterrupted];
  [coderCopy encodeObject:v6 forKey:@"navigationWasInterrupted"];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = RTSourceMapsSupportHistoryEntryRoute;
  if ([(RTSourceMapsSupportHistoryEntry *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    navigationWasInterrupted = [(RTSourceMapsSupportHistoryEntryRoute *)self navigationWasInterrupted];
    navigationWasInterrupted2 = [v5 navigationWasInterrupted];

    v8 = navigationWasInterrupted ^ navigationWasInterrupted2 ^ 1;
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
  navigationWasInterrupted = [(RTSourceMapsSupportHistoryEntryRoute *)self navigationWasInterrupted];
  v6 = @"NO";
  if (navigationWasInterrupted)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"%@, navigationWasInterrupted, %@", v4, v6];

  return v7;
}

@end