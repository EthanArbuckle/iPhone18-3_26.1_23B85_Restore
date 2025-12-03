@interface FHAggregateFeature
- (BOOL)isEqual:(id)equal;
- (FHAggregateFeature)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHAggregateFeature

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"aggregateType"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_processingWindowStartDate forKey:@"processingWindowStartDate"];
  [coderCopy encodeObject:self->_processingWindowEndDate forKey:@"processingWindowEndDate"];
}

- (FHAggregateFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = FHAggregateFeature;
  v5 = [(FHAggregateFeature *)&v13 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"aggregateType"];
    v6 = [coderCopy decodeObjectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectForKey:@"processingWindowStartDate"];
    processingWindowStartDate = v5->_processingWindowStartDate;
    v5->_processingWindowStartDate = v8;

    v10 = [coderCopy decodeObjectForKey:@"processingWindowEndDate"];
    processingWindowEndDate = v5->_processingWindowEndDate;
    v5->_processingWindowEndDate = v10;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%lu'; ", @"aggregateType", self->_type];
  [v3 appendFormat:@"%@: '%@'; ", @"name", self->_name];
  [v3 appendFormat:@"%@: '%@'; ", @"processingWindowStartDate", self->_processingWindowStartDate];
  [v3 appendFormat:@"%@: '%@'; ", @"processingWindowEndDate", self->_processingWindowEndDate];

  return v3;
}

- (unint64_t)hash
{
  type = [(FHAggregateFeature *)self type];
  name = [(FHAggregateFeature *)self name];
  v5 = [name hash] - type + 32 * type;

  processingWindowStartDate = [(FHAggregateFeature *)self processingWindowStartDate];
  v7 = [processingWindowStartDate hash] - v5 + 32 * v5;

  processingWindowEndDate = [(FHAggregateFeature *)self processingWindowEndDate];
  v9 = [processingWindowEndDate hash] - v7 + 32 * v7;

  return v9 + 923521;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v6 = [(FHAggregateFeature *)self type], v6 == [(FHAggregateFeature *)v5 type]))
  {
    name = [(FHAggregateFeature *)self name];
    name2 = [(FHAggregateFeature *)v5 name];
    if ([name isEqual:name2])
    {
      processingWindowStartDate = [(FHAggregateFeature *)self processingWindowStartDate];
      processingWindowStartDate2 = [(FHAggregateFeature *)v5 processingWindowStartDate];
      if ([processingWindowStartDate isEqual:processingWindowStartDate2])
      {
        processingWindowEndDate = [(FHAggregateFeature *)self processingWindowEndDate];
        processingWindowEndDate2 = [(FHAggregateFeature *)v5 processingWindowEndDate];
        v13 = [processingWindowEndDate isEqual:processingWindowEndDate2];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end