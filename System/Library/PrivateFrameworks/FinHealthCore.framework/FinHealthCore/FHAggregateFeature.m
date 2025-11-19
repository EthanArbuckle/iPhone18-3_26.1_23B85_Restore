@interface FHAggregateFeature
- (BOOL)isEqual:(id)a3;
- (FHAggregateFeature)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHAggregateFeature

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"aggregateType"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_processingWindowStartDate forKey:@"processingWindowStartDate"];
  [v5 encodeObject:self->_processingWindowEndDate forKey:@"processingWindowEndDate"];
}

- (FHAggregateFeature)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FHAggregateFeature;
  v5 = [(FHAggregateFeature *)&v13 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"aggregateType"];
    v6 = [v4 decodeObjectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectForKey:@"processingWindowStartDate"];
    processingWindowStartDate = v5->_processingWindowStartDate;
    v5->_processingWindowStartDate = v8;

    v10 = [v4 decodeObjectForKey:@"processingWindowEndDate"];
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
  v3 = [(FHAggregateFeature *)self type];
  v4 = [(FHAggregateFeature *)self name];
  v5 = [v4 hash] - v3 + 32 * v3;

  v6 = [(FHAggregateFeature *)self processingWindowStartDate];
  v7 = [v6 hash] - v5 + 32 * v5;

  v8 = [(FHAggregateFeature *)self processingWindowEndDate];
  v9 = [v8 hash] - v7 + 32 * v7;

  return v9 + 923521;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v6 = [(FHAggregateFeature *)self type], v6 == [(FHAggregateFeature *)v5 type]))
  {
    v7 = [(FHAggregateFeature *)self name];
    v8 = [(FHAggregateFeature *)v5 name];
    if ([v7 isEqual:v8])
    {
      v9 = [(FHAggregateFeature *)self processingWindowStartDate];
      v10 = [(FHAggregateFeature *)v5 processingWindowStartDate];
      if ([v9 isEqual:v10])
      {
        v11 = [(FHAggregateFeature *)self processingWindowEndDate];
        v12 = [(FHAggregateFeature *)v5 processingWindowEndDate];
        v13 = [v11 isEqual:v12];
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