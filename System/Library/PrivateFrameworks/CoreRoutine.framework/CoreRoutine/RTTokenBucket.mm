@interface RTTokenBucket
- (BOOL)_consumeTokens:(unint64_t)tokens;
- (BOOL)operationAllowedWithCost:(double)cost;
- (RTTokenBucket)initWithFillRate:(double)rate capacity:(double)capacity initialAllocation:(double)allocation;
- (double)timeIntervalUntilOperationAllowedWithCost:(double)cost;
- (void)_replenishTokens;
- (void)reset;
@end

@implementation RTTokenBucket

- (void)_replenishTokens
{
  Current = CFAbsoluteTimeGetCurrent();
  tokenBucket = self->_tokenBucket;
  capacity = self->_capacity;
  if (tokenBucket < capacity)
  {
    v6 = tokenBucket + self->_fillRate * (Current - self->_lastBucketFill);
    v7.f64[0] = vabdd_f64(v6, capacity);
    v7.f64[1] = self->_fillRate * (Current - self->_lastBucketFill);
    *&self->_wastedTokens = vaddq_f64(*&self->_wastedTokens, v7);
    if (capacity >= v6)
    {
      capacity = v6;
    }

    self->_tokenBucket = capacity;
  }

  self->_lastBucketFill = Current;
}

- (RTTokenBucket)initWithFillRate:(double)rate capacity:(double)capacity initialAllocation:(double)allocation
{
  v23 = *MEMORY[0x1E69E9840];
  if (rate <= 0.0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTTokenBucket initWithFillRate:capacity:initialAllocation:]";
      v21 = 1024;
      v22 = 64;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Rate must be greater than 0. (in %s:%d)", buf, 0x12u);
    }
  }

  if (capacity <= 0.0)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTTokenBucket initWithFillRate:capacity:initialAllocation:]";
      v21 = 1024;
      v22 = 65;
      _os_log_error_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_ERROR, "Capacity must be greater than 0. (in %s:%d)", buf, 0x12u);
    }
  }

  if (allocation < 0.0)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTTokenBucket initWithFillRate:capacity:initialAllocation:]";
      v21 = 1024;
      v22 = 66;
      _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "Initial allocation must be greater than 0. (in %s:%d)", buf, 0x12u);
    }
  }

  if (allocation > capacity)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTTokenBucket initWithFillRate:capacity:initialAllocation:]";
      v21 = 1024;
      v22 = 67;
      _os_log_error_impl(&dword_1BF1C4000, v12, OS_LOG_TYPE_ERROR, "Initial allocation must be less than capacity. (in %s:%d)", buf, 0x12u);
    }
  }

  selfCopy = 0;
  if (allocation <= capacity && rate > 0.0 && capacity > 0.0 && allocation >= 0.0)
  {
    v18.receiver = self;
    v18.super_class = RTTokenBucket;
    v14 = [(RTTokenBucket *)&v18 init];
    v15 = v14;
    if (v14)
    {
      v14->_tokenBucket = allocation;
      v14->_fillRate = rate;
      v14->_capacity = capacity;
      v14->_operationCost = 1.0;
      v14->_lastBucketFill = CFAbsoluteTimeGetCurrent();
      v15->_lastArrivalTime = -INFINITY;
    }

    self = v15;
    selfCopy = self;
  }

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BOOL)_consumeTokens:(unint64_t)tokens
{
  v18 = *MEMORY[0x1E69E9840];
  if (!tokens)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[RTTokenBucket _consumeTokens:]";
      v16 = 1024;
      v17 = 106;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Token count less than 1. (in %s:%d)", &v14, 0x12u);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  tokenBucket = self->_tokenBucket;
  lastArrivalTime = self->_lastArrivalTime;
  v9 = Current - lastArrivalTime;
  if (lastArrivalTime == -INFINITY)
  {
    v9 = 0.0;
  }

  self->_interArrivalTime = v9;
  v10 = v9 + self->_totalInterArrivalTime;
  self->_lastArrivalTime = Current;
  self->_totalInterArrivalTime = v10;
  ++self->_totalOperations;
  tokensCopy = tokens;
  if (tokenBucket >= tokens)
  {
    self->_tokenBucket = tokenBucket - tokensCopy;
    self->_totalTokensConsumed = self->_totalTokensConsumed + tokensCopy;
    ++self->_operationsAllowed;
  }

  result = tokenBucket >= tokensCopy;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)operationAllowedWithCost:(double)cost
{
  [(RTTokenBucket *)self _replenishTokens];

  return [(RTTokenBucket *)self _consumeTokens:cost];
}

- (double)timeIntervalUntilOperationAllowedWithCost:(double)cost
{
  [(RTTokenBucket *)self _replenishTokens];
  tokenBucket = self->_tokenBucket;
  result = 0.0;
  if (tokenBucket < cost)
  {
    return (cost - tokenBucket) / self->_fillRate;
  }

  return result;
}

- (void)reset
{
  self->_totalOperations = 0;
  self->_operationsAllowed = 0;
  self->_tokenBucket = self->_capacity;
  *&self->_lastArrivalTime = xmmword_1BF231A50;
  self->_interArrivalTime = 0.0;
  self->_lastBucketFill = CFAbsoluteTimeGetCurrent();
  self->_totalTokensGenerated = 0.0;
  self->_totalTokensConsumed = 0.0;
  self->_wastedTokens = 0.0;
}

@end