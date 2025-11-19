@interface RTPredictedContextSequence
- (BOOL)isEqual:(id)a3;
- (RTPredictedContextSequence)initWithCoder:(id)a3;
- (RTPredictedContextSequence)initWithProbability:(double)a3 dateInterval:(id)a4 predictedContexts:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPredictedContextSequence

- (RTPredictedContextSequence)initWithProbability:(double)a3 dateInterval:(id)a4 predictedContexts:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = RTPredictedContextSequence;
  v11 = [(RTPredictedContextSequence *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_probability = a3;
    objc_storeStrong(&v11->_dateInterval, a4);
    objc_storeStrong(&v12->_predictedContexts, a5);
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  probability = self->_probability;
  v5 = a3;
  [v5 encodeDouble:@"probability" forKey:probability];
  [v5 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v5 encodeObject:self->_predictedContexts forKey:@"contexts"];
}

- (RTPredictedContextSequence)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = RTPredictedContextSequence;
  v5 = [(RTPredictedContextSequence *)&v15 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"probability"];
    v5->_probability = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"contexts"];
    predictedContexts = v5->_predictedContexts;
    v5->_predictedContexts = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTPredictedContextSequence alloc];
  probability = self->_probability;
  dateInterval = self->_dateInterval;
  predictedContexts = self->_predictedContexts;

  return [(RTPredictedContextSequence *)v4 initWithProbability:dateInterval dateInterval:predictedContexts predictedContexts:probability];
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
    v7 = [(RTPredictedContextSequence *)self predictedContexts];
    v8 = [(RTPredictedContextSequence *)v6 predictedContexts];

    v9 = [v7 isEqual:v8];
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
  [(RTPredictedContextSequence *)self probability];
  v5 = v4;
  v6 = [(RTPredictedContextSequence *)self dateInterval];
  v7 = [(RTPredictedContextSequence *)self predictedContexts];
  v8 = [v3 stringWithFormat:@"probability, %f, dateInterval, %@, predictedContexts, %@", v5, v6, v7];

  return v8;
}

@end