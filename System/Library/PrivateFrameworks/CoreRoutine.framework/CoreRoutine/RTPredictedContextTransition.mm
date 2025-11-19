@interface RTPredictedContextTransition
- (BOOL)isEqual:(id)a3;
- (RTPredictedContextTransition)initWithCoder:(id)a3;
- (RTPredictedContextTransition)initWithPredictedContextTransports:(id)a3 predictedContextDateInterval:(id)a4 predictionSources:(id)a5 probability:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPredictedContextTransition

- (RTPredictedContextTransition)initWithPredictedContextTransports:(id)a3 predictedContextDateInterval:(id)a4 predictionSources:(id)a5 probability:(double)a6
{
  v11 = a3;
  if (v11)
  {
    v17.receiver = self;
    v17.super_class = RTPredictedContextTransition;
    v12 = [(RTPredictedContext *)&v17 initWithPredictedContextDateInterval:a4 predictionSources:a5 probability:a6];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_predictedContextTransports, a3);
    }

    self = v13;
    v14 = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: predictedContextTransports", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RTPredictedContextTransition;
  v4 = a3;
  [(RTPredictedContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_predictedContextTransports forKey:{@"predictedContextTransports", v5.receiver, v5.super_class}];
}

- (RTPredictedContextTransition)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RTPredictedContextTransition;
  v5 = [(RTPredictedContext *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"predictedContextTransports"];
    predictedContextTransports = v5->_predictedContextTransports;
    v5->_predictedContextTransports = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTPredictedContextTransition alloc];
  v5 = [(RTPredictedContextTransition *)self predictedContextTransports];
  v6 = [(RTPredictedContext *)self dateInterval];
  v7 = [(RTPredictedContext *)self predictionSources];
  [(RTPredictedContext *)self probability];
  v8 = [(RTPredictedContextTransition *)v4 initWithPredictedContextTransports:v5 predictedContextDateInterval:v6 predictionSources:v7 probability:?];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v11.receiver = self;
    v11.super_class = RTPredictedContextTransition;
    if ([(RTPredictedContext *)&v11 isEqual:v6])
    {
      v7 = [(RTPredictedContextTransition *)self predictedContextTransports];
      v8 = [(RTPredictedContextTransition *)v6 predictedContextTransports];
      v9 = [v7 isEqual:v8];
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
  v4 = [(RTPredictedContextTransition *)self predictedContextTransports];
  v8.receiver = self;
  v8.super_class = RTPredictedContextTransition;
  v5 = [(RTPredictedContext *)&v8 description];
  v6 = [v3 stringWithFormat:@"predictedContextTransports, %@, %@", v4, v5];

  return v6;
}

@end