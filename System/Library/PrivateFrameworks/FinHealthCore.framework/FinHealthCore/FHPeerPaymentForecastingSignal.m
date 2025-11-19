@interface FHPeerPaymentForecastingSignal
- (BOOL)isEqual:(id)a3;
- (FHPeerPaymentForecastingSignal)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setFrequency:(id)a3;
- (void)setSignalDate:(id)a3;
@end

@implementation FHPeerPaymentForecastingSignal

- (void)encodeWithCoder:(id)a3
{
  forecastingType = self->_forecastingType;
  v5 = a3;
  [v5 encodeInteger:forecastingType forKey:@"forecastingType"];
  [v5 encodeObject:self->_frequency forKey:@"frequency"];
  [v5 encodeObject:self->_signalDate forKey:@"signalDate"];
  [v5 encodeObject:self->_peerPaymentHeuristicIds forKey:@"peerPaymentHeuristicIds"];
  [v5 encodeObject:self->_dayOfWeek forKey:@"dayOfWeek"];
  [v5 encodeObject:self->_periodicCategory forKey:@"periodicCategory"];
}

- (FHPeerPaymentForecastingSignal)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = FHPeerPaymentForecastingSignal;
  v5 = [(FHPeerPaymentForecastingSignal *)&v20 init];
  if (v5)
  {
    v5->_forecastingType = [v4 decodeIntegerForKey:@"forecastingType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frequency"];
    frequency = v5->_frequency;
    v5->_frequency = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signalDate"];
    signalDate = v5->_signalDate;
    v5->_signalDate = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"peerPaymentHeuristicIds"];
    peerPaymentHeuristicIds = v5->_peerPaymentHeuristicIds;
    v5->_peerPaymentHeuristicIds = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dayOfWeek"];
    dayOfWeek = v5->_dayOfWeek;
    v5->_dayOfWeek = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"periodicCategory"];
    periodicCategory = v5->_periodicCategory;
    v5->_periodicCategory = v17;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:&stru_283A7B918];
  [v3 appendFormat:@"%@: '%lu'; ", @"forecastingType", self->_forecastingType];
  [v3 appendFormat:@"%@: '%@'; ", @"frequency", self->_frequency];
  [v3 appendFormat:@"%@: '%@'; ", @"signalDate", self->_signalDate];
  v4 = [(NSSet *)self->_peerPaymentHeuristicIds allObjects];
  v5 = [v4 componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"%@: '{%@}'; ", @"peerPaymentHeuristicIds", v5];

  [v3 appendFormat:@"%@: '%@'; ", @"dayOfWeek", self->_dayOfWeek];
  [v3 appendFormat:@"%@: '%@'; ", @"periodicCategory", self->_periodicCategory];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(FHPeerPaymentForecastingSignal *)self forecastingType];
  v4 = [(FHPeerPaymentForecastingSignal *)self frequency];
  v5 = [v4 hash] + 43 * v3 + 1849;

  v6 = [(FHPeerPaymentForecastingSignal *)self signalDate];
  v7 = [v6 hash] + 43 * v5;

  v8 = [(FHPeerPaymentForecastingSignal *)self peerPaymentHeuristicIds];
  v9 = [v8 hash] + 43 * v7;

  v10 = [(FHPeerPaymentForecastingSignal *)self dayOfWeek];
  v11 = [v10 hash] + 43 * v9;

  v12 = [(FHPeerPaymentForecastingSignal *)self periodicCategory];
  v13 = [v12 hash] + 43 * v11;

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v16 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v6 = [(FHPeerPaymentForecastingSignal *)self forecastingType], v6 == [(FHPeerPaymentForecastingSignal *)v5 forecastingType]))
  {
    v7 = [(FHPeerPaymentForecastingSignal *)self frequency];
    v8 = [(FHPeerPaymentForecastingSignal *)v5 frequency];
    if ([v7 isEqualToNumber:v8])
    {
      v9 = [(FHPeerPaymentForecastingSignal *)self signalDate];
      v10 = [(FHPeerPaymentForecastingSignal *)v5 signalDate];
      if ([v9 isEqualToDate:v10])
      {
        v11 = [(FHPeerPaymentForecastingSignal *)self peerPaymentHeuristicIds];
        v12 = [(FHPeerPaymentForecastingSignal *)v5 peerPaymentHeuristicIds];
        if ([v11 isEqualToSet:v12])
        {
          v13 = [(FHPeerPaymentForecastingSignal *)self dayOfWeek];
          v14 = [(FHPeerPaymentForecastingSignal *)v5 dayOfWeek];
          if ([v13 isEqualToString:v14])
          {
            v18 = [(FHPeerPaymentForecastingSignal *)self periodicCategory];
            [(FHPeerPaymentForecastingSignal *)v5 periodicCategory];
            v15 = v19 = v13;
            v16 = [v18 isEqualToString:v15];

            v13 = v19;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setSignalDate:(id)a3
{
  objc_storeStrong(&self->_signalDate, a3);
  v7 = a3;
  v5 = GetDayOfWeekFromSignalDate(v7);
  dayOfWeek = self->_dayOfWeek;
  self->_dayOfWeek = v5;
}

- (void)setFrequency:(id)a3
{
  objc_storeStrong(&self->_frequency, a3);
  v7 = a3;
  v5 = GetPeriodicCategoryFromFrequency(v7);
  periodicCategory = self->_periodicCategory;
  self->_periodicCategory = v5;
}

@end