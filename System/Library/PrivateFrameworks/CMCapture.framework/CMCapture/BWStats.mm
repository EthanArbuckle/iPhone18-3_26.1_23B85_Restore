@interface BWStats
- (BOOL)addDataPointP:(double)p;
- (BWStats)init;
- (BWStats)initWithStats:(id)stats;
- (double)average;
- (double)standardDeviation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
@end

@implementation BWStats

- (BWStats)init
{
  v5.receiver = self;
  v5.super_class = BWStats;
  v2 = [(BWStats *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_multiplier = 1.0;
    v2->_unitDesignator = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:&stru_1F216A3D0];
    v3->_numberOfSamples = 0;
    *&v3->_min = xmmword_1AD055100;
    v3->_sumX = 0.0;
    v3->_sumXX = 0.0;
  }

  return v3;
}

- (double)average
{
  numberOfSamples = self->_numberOfSamples;
  if (numberOfSamples)
  {
    v3 = self->_sumX / numberOfSamples;
  }

  else
  {
    v3 = 0.0;
  }

  return v3 * self->_multiplier;
}

- (BWStats)initWithStats:(id)stats
{
  v8.receiver = self;
  v8.super_class = BWStats;
  v4 = [(BWStats *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_multiplier = *(stats + 1);
    if (*(stats + 2))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:*(stats + 2)];
    }

    else
    {
      v6 = 0;
    }

    v5->_unitDesignator = v6;
    v5->_numberOfSamples = *(stats + 3);
    v5->_min = *(stats + 4);
    v5->_max = *(stats + 5);
    v5->_sumX = *(stats + 6);
    v5->_sumXX = *(stats + 7);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStats;
  [(BWStats *)&v3 dealloc];
}

- (BOOL)addDataPointP:(double)p
{
  if ((*&p & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    ++self->_numberOfSamples;
    if (self->_min > p)
    {
      self->_min = p;
    }

    if (self->_max < p)
    {
      self->_max = p;
    }

    v3 = self->_sumXX + p * p;
    self->_sumX = self->_sumX + p;
    self->_sumXX = v3;
  }

  return (*&p & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
}

- (double)standardDeviation
{
  numberOfSamples = self->_numberOfSamples;
  if (numberOfSamples < 1)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = sqrt(vabdd_f64(self->_sumXX, self->_sumX * self->_sumX / numberOfSamples) / numberOfSamples);
  }

  return v3 * self->_multiplier;
}

- (id)description
{
  numberOfSamples = self->_numberOfSamples;
  v4 = 0;
  if (numberOfSamples < 1)
  {
    v6 = 0;
  }

  else
  {
    [(BWStats *)self min];
    v6 = v5;
    numberOfSamples = self->_numberOfSamples;
    if (numberOfSamples >= 1)
    {
      [(BWStats *)self max];
      v4 = v7;
      numberOfSamples = self->_numberOfSamples;
    }
  }

  v8 = MEMORY[0x1E696AEC0];
  unitDesignator = self->_unitDesignator;
  [(BWStats *)self average];
  v11 = v10;
  v12 = self->_unitDesignator;
  [(BWStats *)self standardDeviation];
  return [v8 stringWithFormat:@"Number of samples: %lld, min: %lf%@, max: %lf%@, average: %lf%@, standard deviation: %lf%@", numberOfSamples, v6, unitDesignator, v4, unitDesignator, v11, v12, v13, self->_unitDesignator];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> %@", NSStringFromClass(v4), self, -[BWStats description](self, "description")];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(BWStats *)self multiplier];
  [v4 setMultiplier:?];
  [v4 setUnitDesignator:{-[BWStats unitDesignator](self, "unitDesignator")}];
  *(v4 + 24) = [(BWStats *)self numberOfSamples];
  *(v4 + 32) = self->_min;
  *(v4 + 40) = self->_max;
  *(v4 + 48) = self->_sumX;
  *(v4 + 56) = self->_sumXX;
  return v4;
}

@end