@interface FHDateTimeAggregateFeature
- (BOOL)isEqual:(id)a3;
- (FHDateTimeAggregateFeature)initWithCoder:(id)a3;
- (FHDateTimeAggregateFeature)initWithStartDate:(id)a3 endDate:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHDateTimeAggregateFeature

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = FHDateTimeAggregateFeature;
  v4 = a3;
  [(FHAggregateFeature *)&v7 encodeWithCoder:v4];
  v5 = [(FHDateTimeAggregateFeature *)self startDate:v7.receiver];
  [v4 encodeObject:v5 forKey:@"startDate"];

  v6 = [(FHDateTimeAggregateFeature *)self endDate];
  [v4 encodeObject:v6 forKey:@"endDate"];
}

- (FHDateTimeAggregateFeature)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FHDateTimeAggregateFeature;
  v5 = [(FHAggregateFeature *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(FHDateTimeAggregateFeature *)v5 setStartDate:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(FHDateTimeAggregateFeature *)v5 setEndDate:v7];
  }

  return v5;
}

- (FHDateTimeAggregateFeature)initWithStartDate:(id)a3 endDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FHDateTimeAggregateFeature;
  v9 = [(FHDateTimeAggregateFeature *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(FHAggregateFeature *)v9 setType:2];
    objc_storeStrong(&v10->_startDate, a3);
    objc_storeStrong(&v10->_endDate, a4);
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"startDate", self->_startDate];
  [v3 appendFormat:@"%@: '%@'; ", @"endDate", self->_endDate];
  [v3 appendFormat:@">"];

  return v3;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = FHDateTimeAggregateFeature;
  v3 = [(FHAggregateFeature *)&v9 hash];
  v4 = [(FHDateTimeAggregateFeature *)self startDate];
  v5 = [v4 hash] - v3 + 32 * v3;

  v6 = [(FHDateTimeAggregateFeature *)self endDate];
  v7 = [v6 hash] - v5 + 32 * v5;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v12.receiver = self, v12.super_class = FHDateTimeAggregateFeature, [(FHAggregateFeature *)&v12 isEqual:v5]))
  {
    v6 = [(FHDateTimeAggregateFeature *)self startDate];
    v7 = [(FHDateTimeAggregateFeature *)v5 startDate];
    if ([v6 isEqual:v7])
    {
      v8 = [(FHDateTimeAggregateFeature *)self endDate];
      v9 = [(FHDateTimeAggregateFeature *)v5 endDate];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end