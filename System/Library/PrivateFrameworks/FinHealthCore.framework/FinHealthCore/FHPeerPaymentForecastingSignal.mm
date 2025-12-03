@interface FHPeerPaymentForecastingSignal
- (BOOL)isEqual:(id)equal;
- (FHPeerPaymentForecastingSignal)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setFrequency:(id)frequency;
- (void)setSignalDate:(id)date;
@end

@implementation FHPeerPaymentForecastingSignal

- (void)encodeWithCoder:(id)coder
{
  forecastingType = self->_forecastingType;
  coderCopy = coder;
  [coderCopy encodeInteger:forecastingType forKey:@"forecastingType"];
  [coderCopy encodeObject:self->_frequency forKey:@"frequency"];
  [coderCopy encodeObject:self->_signalDate forKey:@"signalDate"];
  [coderCopy encodeObject:self->_peerPaymentHeuristicIds forKey:@"peerPaymentHeuristicIds"];
  [coderCopy encodeObject:self->_dayOfWeek forKey:@"dayOfWeek"];
  [coderCopy encodeObject:self->_periodicCategory forKey:@"periodicCategory"];
}

- (FHPeerPaymentForecastingSignal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = FHPeerPaymentForecastingSignal;
  v5 = [(FHPeerPaymentForecastingSignal *)&v20 init];
  if (v5)
  {
    v5->_forecastingType = [coderCopy decodeIntegerForKey:@"forecastingType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"frequency"];
    frequency = v5->_frequency;
    v5->_frequency = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signalDate"];
    signalDate = v5->_signalDate;
    v5->_signalDate = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"peerPaymentHeuristicIds"];
    peerPaymentHeuristicIds = v5->_peerPaymentHeuristicIds;
    v5->_peerPaymentHeuristicIds = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dayOfWeek"];
    dayOfWeek = v5->_dayOfWeek;
    v5->_dayOfWeek = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"periodicCategory"];
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
  allObjects = [(NSSet *)self->_peerPaymentHeuristicIds allObjects];
  v5 = [allObjects componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"%@: '{%@}'; ", @"peerPaymentHeuristicIds", v5];

  [v3 appendFormat:@"%@: '%@'; ", @"dayOfWeek", self->_dayOfWeek];
  [v3 appendFormat:@"%@: '%@'; ", @"periodicCategory", self->_periodicCategory];

  return v3;
}

- (unint64_t)hash
{
  forecastingType = [(FHPeerPaymentForecastingSignal *)self forecastingType];
  frequency = [(FHPeerPaymentForecastingSignal *)self frequency];
  v5 = [frequency hash] + 43 * forecastingType + 1849;

  signalDate = [(FHPeerPaymentForecastingSignal *)self signalDate];
  v7 = [signalDate hash] + 43 * v5;

  peerPaymentHeuristicIds = [(FHPeerPaymentForecastingSignal *)self peerPaymentHeuristicIds];
  v9 = [peerPaymentHeuristicIds hash] + 43 * v7;

  dayOfWeek = [(FHPeerPaymentForecastingSignal *)self dayOfWeek];
  v11 = [dayOfWeek hash] + 43 * v9;

  periodicCategory = [(FHPeerPaymentForecastingSignal *)self periodicCategory];
  v13 = [periodicCategory hash] + 43 * v11;

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v6 = [(FHPeerPaymentForecastingSignal *)self forecastingType], v6 == [(FHPeerPaymentForecastingSignal *)v5 forecastingType]))
  {
    frequency = [(FHPeerPaymentForecastingSignal *)self frequency];
    frequency2 = [(FHPeerPaymentForecastingSignal *)v5 frequency];
    if ([frequency isEqualToNumber:frequency2])
    {
      signalDate = [(FHPeerPaymentForecastingSignal *)self signalDate];
      signalDate2 = [(FHPeerPaymentForecastingSignal *)v5 signalDate];
      if ([signalDate isEqualToDate:signalDate2])
      {
        peerPaymentHeuristicIds = [(FHPeerPaymentForecastingSignal *)self peerPaymentHeuristicIds];
        peerPaymentHeuristicIds2 = [(FHPeerPaymentForecastingSignal *)v5 peerPaymentHeuristicIds];
        if ([peerPaymentHeuristicIds isEqualToSet:peerPaymentHeuristicIds2])
        {
          dayOfWeek = [(FHPeerPaymentForecastingSignal *)self dayOfWeek];
          dayOfWeek2 = [(FHPeerPaymentForecastingSignal *)v5 dayOfWeek];
          if ([dayOfWeek isEqualToString:dayOfWeek2])
          {
            periodicCategory = [(FHPeerPaymentForecastingSignal *)self periodicCategory];
            [(FHPeerPaymentForecastingSignal *)v5 periodicCategory];
            v15 = v19 = dayOfWeek;
            v16 = [periodicCategory isEqualToString:v15];

            dayOfWeek = v19;
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

- (void)setSignalDate:(id)date
{
  objc_storeStrong(&self->_signalDate, date);
  dateCopy = date;
  v5 = GetDayOfWeekFromSignalDate(dateCopy);
  dayOfWeek = self->_dayOfWeek;
  self->_dayOfWeek = v5;
}

- (void)setFrequency:(id)frequency
{
  objc_storeStrong(&self->_frequency, frequency);
  frequencyCopy = frequency;
  v5 = GetPeriodicCategoryFromFrequency(frequencyCopy);
  periodicCategory = self->_periodicCategory;
  self->_periodicCategory = v5;
}

@end