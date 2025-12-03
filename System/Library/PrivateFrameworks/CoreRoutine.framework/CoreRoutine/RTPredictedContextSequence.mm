@interface RTPredictedContextSequence
- (BOOL)isEqual:(id)equal;
- (RTPredictedContextSequence)initWithCoder:(id)coder;
- (RTPredictedContextSequence)initWithProbability:(double)probability dateInterval:(id)interval predictedContexts:(id)contexts;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPredictedContextSequence

- (RTPredictedContextSequence)initWithProbability:(double)probability dateInterval:(id)interval predictedContexts:(id)contexts
{
  intervalCopy = interval;
  contextsCopy = contexts;
  v14.receiver = self;
  v14.super_class = RTPredictedContextSequence;
  v11 = [(RTPredictedContextSequence *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_probability = probability;
    objc_storeStrong(&v11->_dateInterval, interval);
    objc_storeStrong(&v12->_predictedContexts, contexts);
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  probability = self->_probability;
  coderCopy = coder;
  [coderCopy encodeDouble:@"probability" forKey:probability];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_predictedContexts forKey:@"contexts"];
}

- (RTPredictedContextSequence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = RTPredictedContextSequence;
  v5 = [(RTPredictedContextSequence *)&v15 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"probability"];
    v5->_probability = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"contexts"];
    predictedContexts = v5->_predictedContexts;
    v5->_predictedContexts = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTPredictedContextSequence alloc];
  probability = self->_probability;
  dateInterval = self->_dateInterval;
  predictedContexts = self->_predictedContexts;

  return [(RTPredictedContextSequence *)v4 initWithProbability:dateInterval dateInterval:predictedContexts predictedContexts:probability];
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
    predictedContexts = [(RTPredictedContextSequence *)self predictedContexts];
    predictedContexts2 = [(RTPredictedContextSequence *)v6 predictedContexts];

    v9 = [predictedContexts isEqual:predictedContexts2];
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
  dateInterval = [(RTPredictedContextSequence *)self dateInterval];
  predictedContexts = [(RTPredictedContextSequence *)self predictedContexts];
  v8 = [v3 stringWithFormat:@"probability, %f, dateInterval, %@, predictedContexts, %@", v5, dateInterval, predictedContexts];

  return v8;
}

@end