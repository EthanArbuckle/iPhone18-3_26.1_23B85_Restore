@interface RTTokenBucket
- (BOOL)_consumeTokens:(unint64_t)a3;
- (BOOL)operationAllowedWithCost:(double)a3;
- (RTTokenBucket)initWithFillRate:(double)a3 capacity:(double)a4 initialAllocation:(double)a5;
- (double)timeIntervalUntilOperationAllowedWithCost:(double)a3;
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

- (RTTokenBucket)initWithFillRate:(double)a3 capacity:(double)a4 initialAllocation:(double)a5
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3 <= 0.0)
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

  if (a4 <= 0.0)
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

  if (a5 < 0.0)
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

  if (a5 > a4)
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

  v13 = 0;
  if (a5 <= a4 && a3 > 0.0 && a4 > 0.0 && a5 >= 0.0)
  {
    v18.receiver = self;
    v18.super_class = RTTokenBucket;
    v14 = [(RTTokenBucket *)&v18 init];
    v15 = v14;
    if (v14)
    {
      v14->_tokenBucket = a5;
      v14->_fillRate = a3;
      v14->_capacity = a4;
      v14->_operationCost = 1.0;
      v14->_lastBucketFill = CFAbsoluteTimeGetCurrent();
      v15->_lastArrivalTime = -INFINITY;
    }

    self = v15;
    v13 = self;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)_consumeTokens:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
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
  v11 = a3;
  if (tokenBucket >= a3)
  {
    self->_tokenBucket = tokenBucket - v11;
    self->_totalTokensConsumed = self->_totalTokensConsumed + v11;
    ++self->_operationsAllowed;
  }

  result = tokenBucket >= v11;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)operationAllowedWithCost:(double)a3
{
  [(RTTokenBucket *)self _replenishTokens];

  return [(RTTokenBucket *)self _consumeTokens:a3];
}

- (double)timeIntervalUntilOperationAllowedWithCost:(double)a3
{
  [(RTTokenBucket *)self _replenishTokens];
  tokenBucket = self->_tokenBucket;
  result = 0.0;
  if (tokenBucket < a3)
  {
    return (a3 - tokenBucket) / self->_fillRate;
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