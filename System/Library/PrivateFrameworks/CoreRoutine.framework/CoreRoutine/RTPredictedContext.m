@interface RTPredictedContext
+ (unint64_t)maskForSources:(id)a3;
- (BOOL)isEqual:(id)a3;
- (RTPredictedContext)initWithCoder:(id)a3;
- (RTPredictedContext)initWithPredictedContextDateInterval:(id)a3 predictionSources:(id)a4 probability:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPredictedContext

- (RTPredictedContext)initWithPredictedContextDateInterval:(id)a3 predictionSources:(id)a4 probability:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = RTPredictedContext;
  v11 = [(RTPredictedContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dateInterval, a3);
    objc_storeStrong(&v12->_predictionSources, a4);
    v12->_probability = a5;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"dateInterval"];
  [v5 encodeObject:self->_predictionSources forKey:@"predictionSources"];
  [v5 encodeDouble:@"probability" forKey:self->_probability];
}

- (RTPredictedContext)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = RTPredictedContext;
  v5 = [(RTPredictedContext *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"predictionSources"];
    predictionSources = v5->_predictionSources;
    v5->_predictionSources = v11;

    [v4 decodeDoubleForKey:@"probability"];
    v5->_probability = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v14 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RTPredictedContext *)self dateInterval];
    v8 = [(RTPredictedContext *)v6 dateInterval];
    if ([v7 isEqual:v8])
    {
      v9 = [(RTPredictedContext *)self predictionSources];
      v10 = [(RTPredictedContext *)self predictionSources];
      if ([v9 isEqualToArray:v10])
      {
        [(RTPredictedContext *)self probability];
        v12 = v11;
        [(RTPredictedContext *)v6 probability];
        v14 = v12 == v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTPredictedContext alloc];
  dateInterval = self->_dateInterval;
  predictionSources = self->_predictionSources;
  probability = self->_probability;

  return [(RTPredictedContext *)v4 initWithPredictedContextDateInterval:dateInterval predictionSources:predictionSources probability:probability];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTPredictedContext *)self dateInterval];
  [(RTPredictedContext *)self probability];
  v6 = v5;
  v7 = [(RTPredictedContext *)self predictionSources];
  v8 = [v3 stringWithFormat:@"dateInterval, %@, probability, %.2f, predictionSources, %@", v4, v6, v7];

  return v8;
}

+ (unint64_t)maskForSources:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138412803;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2117;
      v25 = v4;
      _os_log_debug_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_DEBUG, "%@, %@, %{sensitive}@", buf, 0x20u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v25 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __37__RTPredictedContext_maskForSources___block_invoke;
  v17[3] = &unk_1E80B4C80;
  v17[4] = buf;
  [v4 enumerateObjectsUsingBlock:v17];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v16 = *(*&buf[8] + 24);
      *v18 = 138412802;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2048;
      v23 = v16;
      _os_log_debug_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_DEBUG, "%@, %@, mask, %lu", v18, 0x20u);
    }
  }

  v7 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __37__RTPredictedContext_maskForSources___block_invoke(uint64_t a1, void *a2)
{
  a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 2;
LABEL_15:
    *(*(*(a1 + 32) + 8) + 24) |= v3;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 4;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 8;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 16;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 32;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 64;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 128;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 256;
    goto LABEL_15;
  }

LABEL_16:

  return MEMORY[0x1EEE66BB8]();
}

@end