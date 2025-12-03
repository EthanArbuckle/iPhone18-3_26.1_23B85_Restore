@interface RTPredictedContextTransition
- (BOOL)isEqual:(id)equal;
- (RTPredictedContextTransition)initWithCoder:(id)coder;
- (RTPredictedContextTransition)initWithPredictedContextTransports:(id)transports predictedContextDateInterval:(id)interval predictionSources:(id)sources probability:(double)probability;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPredictedContextTransition

- (RTPredictedContextTransition)initWithPredictedContextTransports:(id)transports predictedContextDateInterval:(id)interval predictionSources:(id)sources probability:(double)probability
{
  transportsCopy = transports;
  if (transportsCopy)
  {
    v17.receiver = self;
    v17.super_class = RTPredictedContextTransition;
    v12 = [(RTPredictedContext *)&v17 initWithPredictedContextDateInterval:interval predictionSources:sources probability:probability];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_predictedContextTransports, transports);
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: predictedContextTransports", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RTPredictedContextTransition;
  coderCopy = coder;
  [(RTPredictedContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_predictedContextTransports forKey:{@"predictedContextTransports", v5.receiver, v5.super_class}];
}

- (RTPredictedContextTransition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = RTPredictedContextTransition;
  v5 = [(RTPredictedContext *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"predictedContextTransports"];
    predictedContextTransports = v5->_predictedContextTransports;
    v5->_predictedContextTransports = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTPredictedContextTransition alloc];
  predictedContextTransports = [(RTPredictedContextTransition *)self predictedContextTransports];
  dateInterval = [(RTPredictedContext *)self dateInterval];
  predictionSources = [(RTPredictedContext *)self predictionSources];
  [(RTPredictedContext *)self probability];
  v8 = [(RTPredictedContextTransition *)v4 initWithPredictedContextTransports:predictedContextTransports predictedContextDateInterval:dateInterval predictionSources:predictionSources probability:?];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v11.receiver = self;
    v11.super_class = RTPredictedContextTransition;
    if ([(RTPredictedContext *)&v11 isEqual:v6])
    {
      predictedContextTransports = [(RTPredictedContextTransition *)self predictedContextTransports];
      predictedContextTransports2 = [(RTPredictedContextTransition *)v6 predictedContextTransports];
      v9 = [predictedContextTransports isEqual:predictedContextTransports2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  predictedContextTransports = [(RTPredictedContextTransition *)self predictedContextTransports];
  v8.receiver = self;
  v8.super_class = RTPredictedContextTransition;
  v5 = [(RTPredictedContext *)&v8 description];
  v6 = [v3 stringWithFormat:@"predictedContextTransports, %@, %@", predictedContextTransports, v5];

  return v6;
}

@end