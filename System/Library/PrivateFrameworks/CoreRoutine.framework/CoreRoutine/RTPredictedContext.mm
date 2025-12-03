@interface RTPredictedContext
+ (unint64_t)maskForSources:(id)sources;
- (BOOL)isEqual:(id)equal;
- (RTPredictedContext)initWithCoder:(id)coder;
- (RTPredictedContext)initWithPredictedContextDateInterval:(id)interval predictionSources:(id)sources probability:(double)probability;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPredictedContext

- (RTPredictedContext)initWithPredictedContextDateInterval:(id)interval predictionSources:(id)sources probability:(double)probability
{
  intervalCopy = interval;
  sourcesCopy = sources;
  v14.receiver = self;
  v14.super_class = RTPredictedContext;
  v11 = [(RTPredictedContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dateInterval, interval);
    objc_storeStrong(&v12->_predictionSources, sources);
    v12->_probability = probability;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_predictionSources forKey:@"predictionSources"];
  [coderCopy encodeDouble:@"probability" forKey:self->_probability];
}

- (RTPredictedContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = RTPredictedContext;
  v5 = [(RTPredictedContext *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"predictionSources"];
    predictionSources = v5->_predictionSources;
    v5->_predictionSources = v11;

    [coderCopy decodeDoubleForKey:@"probability"];
    v5->_probability = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    dateInterval = [(RTPredictedContext *)self dateInterval];
    dateInterval2 = [(RTPredictedContext *)v6 dateInterval];
    if ([dateInterval isEqual:dateInterval2])
    {
      predictionSources = [(RTPredictedContext *)self predictionSources];
      predictionSources2 = [(RTPredictedContext *)self predictionSources];
      if ([predictionSources isEqualToArray:predictionSources2])
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

- (id)copyWithZone:(_NSZone *)zone
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
  dateInterval = [(RTPredictedContext *)self dateInterval];
  [(RTPredictedContext *)self probability];
  v6 = v5;
  predictionSources = [(RTPredictedContext *)self predictionSources];
  v8 = [v3 stringWithFormat:@"dateInterval, %@, probability, %.2f, predictionSources, %@", dateInterval, v6, predictionSources];

  return v8;
}

+ (unint64_t)maskForSources:(id)sources
{
  v26 = *MEMORY[0x1E69E9840];
  sourcesCopy = sources;
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
      v25 = sourcesCopy;
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
  [sourcesCopy enumerateObjectsUsingBlock:v17];
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