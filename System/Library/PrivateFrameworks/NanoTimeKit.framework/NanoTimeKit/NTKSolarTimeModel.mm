@interface NTKSolarTimeModel
- (BOOL)includesDate:(id)date;
- (NSDate)endDateForReferenceDate;
- (NSDate)localDawnDate;
- (NSDate)localDuskDate;
- (NSDate)localSolarMidnightDate;
- (NSDate)localSolarNoonDate;
- (NSDate)localSunriseDate;
- (NSDate)localSunsetDate;
- (NSDate)startDateForReferenceDate;
- (NTKSolarTimeModel)initWithReferenceDate:(id)date referenceLocation:(id)location twilightType:(unint64_t)type;
- (double)percentageThroughPeriodForDate:(id)date;
- (double)percentageThroughPeriodForIdealizedTimeInCurrentSolarDay;
- (double)percentageThroughPeriodInCurrentSolarDayForDate:(id)date;
- (id)_nextEvent:(id)event ofType:(unsigned int)type;
- (id)dateForPercentageThroughPeriod:(double)period;
- (id)normalizeDateIntervalForDate:(id)date;
- (id)ntkCacheableKey;
- (void)_updateDependentValues;
- (void)setReferenceDate:(id)date;
- (void)setReferenceLocation:(id)location;
- (void)setUsePlaceholderData:(BOOL)data;
- (void)updateForTimeZoneChange;
@end

@implementation NTKSolarTimeModel

- (NTKSolarTimeModel)initWithReferenceDate:(id)date referenceLocation:(id)location twilightType:(unint64_t)type
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  locationCopy = location;
  v14.receiver = self;
  v14.super_class = NTKSolarTimeModel;
  v11 = [(NTKSolarTimeModel *)&v14 init];
  if (v11)
  {
    v12 = _NTKLoggingObjectForDomain(34, "NTKLoggingDomainSolar");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412803;
      v16 = dateCopy;
      v17 = 2113;
      v18 = locationCopy;
      v19 = 2048;
      typeCopy = type;
      _os_log_debug_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEBUG, "SolarTimeModel initWithReferenceDate:%@, referenceLocation:%{private}@, twilightType:%lu", buf, 0x20u);
    }

    objc_storeStrong(&v11->_referenceDate, date);
    objc_storeStrong(&v11->_referenceLocation, location);
    v11->_twilightType = type;
    v11->_dependentValuesNeedUpdate = 1;
  }

  return v11;
}

- (BOOL)includesDate:(id)date
{
  dateCopy = date;
  [(NTKSolarTimeModel *)self _updateDependentValues];
  startDateForReferenceDate = [(NTKSolarTimeModel *)self startDateForReferenceDate];
  [startDateForReferenceDate timeIntervalSinceReferenceDate];
  v7 = v6;

  endDateForReferenceDate = [(NTKSolarTimeModel *)self endDateForReferenceDate];
  [endDateForReferenceDate timeIntervalSinceReferenceDate];
  v10 = v9;

  [dateCopy timeIntervalSinceReferenceDate];
  v12 = v11;

  return v12 <= v10 && v12 >= v7;
}

- (double)percentageThroughPeriodForIdealizedTimeInCurrentSolarDay
{
  v3 = NTKIdealizedDate();
  [(NTKSolarTimeModel *)self percentageThroughPeriodInCurrentSolarDayForDate:v3];
  v5 = v4;

  return v5;
}

- (id)normalizeDateIntervalForDate:(id)date
{
  [date timeIntervalSinceReferenceDate];
  v5 = v4;
  startDateForReferenceDate = [(NTKSolarTimeModel *)self startDateForReferenceDate];
  [startDateForReferenceDate timeIntervalSinceReferenceDate];
  v8 = v7;

  endDateForReferenceDate = [(NTKSolarTimeModel *)self endDateForReferenceDate];
  [endDateForReferenceDate timeIntervalSinceReferenceDate];
  v11 = v10;

    ;
  }

    ;
  }

  v12 = MEMORY[0x277CBEAA8];

  return [v12 dateWithTimeIntervalSinceReferenceDate:v5];
}

- (double)percentageThroughPeriodInCurrentSolarDayForDate:(id)date
{
  dateCopy = date;
  [(NTKSolarTimeModel *)self _updateDependentValues];
  v5 = [(NTKSolarTimeModel *)self normalizeDateIntervalForDate:dateCopy];

  [(NTKSolarTimeModel *)self percentageThroughPeriodForDate:v5];
  v7 = v6;

  return v7;
}

- (double)percentageThroughPeriodForDate:(id)date
{
  dateCopy = date;
  [(NTKSolarTimeModel *)self _updateDependentValues];
  startDateForReferenceDate = [(NTKSolarTimeModel *)self startDateForReferenceDate];
  [startDateForReferenceDate timeIntervalSinceReferenceDate];
  v7 = v6;

  endDateForReferenceDate = [(NTKSolarTimeModel *)self endDateForReferenceDate];
  [endDateForReferenceDate timeIntervalSinceReferenceDate];
  v10 = v9;

  [dateCopy timeIntervalSinceReferenceDate];
  v12 = v11;

  result = 0.0;
  if (v10 - v7 > 0.0)
  {
    return (v12 - v7) / (v10 - v7);
  }

  return result;
}

- (id)dateForPercentageThroughPeriod:(double)period
{
  [(NTKSolarTimeModel *)self _updateDependentValues];
  startDateForReferenceDate = [(NTKSolarTimeModel *)self startDateForReferenceDate];
  [startDateForReferenceDate timeIntervalSinceReferenceDate];
  v7 = v6;

  endDateForReferenceDate = [(NTKSolarTimeModel *)self endDateForReferenceDate];
  [endDateForReferenceDate timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = MEMORY[0x277CBEAA8];

  return [v11 dateWithTimeIntervalSinceReferenceDate:v7 + (v10 - v7) * period];
}

- (id)_nextEvent:(id)event ofType:(unsigned int)type
{
  [event nextEventOfType:*&type];
  if (v4 == 0.0)
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }

  else
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  }
  v5 = ;

  return v5;
}

- (void)_updateDependentValues
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *self;
  [*self coordinate];
  v6 = v5;
  [*self coordinate];
  v8 = 138478339;
  v9 = v4;
  v10 = 2049;
  v11 = v6;
  v12 = 2049;
  v13 = v7;
  _os_log_debug_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_DEBUG, "SolarTimeModel referenceLocation: %{private}@ latitue: %{private}f longitude: %{private}f ", &v8, 0x20u);
}

- (void)updateForTimeZoneChange
{
  v3 = _NTKLoggingObjectForDomain(34, "NTKLoggingDomainSolar");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [NTKSolarTimeModel updateForTimeZoneChange];
  }

  [(NTKSolarTimeModel *)self setDependentValuesNeedUpdate:1];
}

- (void)setReferenceDate:(id)date
{
  dateCopy = date;
  if (([dateCopy isEqualToDate:self->_referenceDate] & 1) == 0)
  {
    v6 = _NTKLoggingObjectForDomain(34, "NTKLoggingDomainSolar");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [NTKSolarTimeModel setReferenceDate:];
    }

    objc_storeStrong(&self->_referenceDate, date);
    [(NTKSolarTimeModel *)self setDependentValuesNeedUpdate:1];
  }
}

- (void)setReferenceLocation:(id)location
{
  locationCopy = location;
  if (([locationCopy isEqual:self->_referenceLocation] & 1) == 0)
  {
    v6 = _NTKLoggingObjectForDomain(34, "NTKLoggingDomainSolar");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [NTKSolarTimeModel setReferenceLocation:];
    }

    objc_storeStrong(&self->_referenceLocation, location);
    [(NTKSolarTimeModel *)self setDependentValuesNeedUpdate:1];
  }
}

- (void)setUsePlaceholderData:(BOOL)data
{
  if (self->_usePlaceholderData != data)
  {
    self->_usePlaceholderData = data;
    [(NTKSolarTimeModel *)self setDependentValuesNeedUpdate:1];
  }
}

- (NSDate)startDateForReferenceDate
{
  [(NTKSolarTimeModel *)self _updateDependentValues];
  startDateForReferenceDate = self->_startDateForReferenceDate;

  return startDateForReferenceDate;
}

- (NSDate)endDateForReferenceDate
{
  [(NTKSolarTimeModel *)self _updateDependentValues];
  endDateForReferenceDate = self->_endDateForReferenceDate;

  return endDateForReferenceDate;
}

- (NSDate)localSolarMidnightDate
{
  [(NTKSolarTimeModel *)self _updateDependentValues];
  localSolarMidnightDate = self->_localSolarMidnightDate;

  return localSolarMidnightDate;
}

- (NSDate)localSunriseDate
{
  [(NTKSolarTimeModel *)self _updateDependentValues];
  localSunriseDate = self->_localSunriseDate;

  return localSunriseDate;
}

- (NSDate)localSunsetDate
{
  [(NTKSolarTimeModel *)self _updateDependentValues];
  localSunsetDate = self->_localSunsetDate;

  return localSunsetDate;
}

- (NSDate)localDawnDate
{
  [(NTKSolarTimeModel *)self _updateDependentValues];
  localDawnDate = self->_localDawnDate;

  return localDawnDate;
}

- (NSDate)localDuskDate
{
  [(NTKSolarTimeModel *)self _updateDependentValues];
  localDuskDate = self->_localDuskDate;

  return localDuskDate;
}

- (NSDate)localSolarNoonDate
{
  [(NTKSolarTimeModel *)self _updateDependentValues];
  localSolarNoonDate = self->_localSolarNoonDate;

  return localSolarNoonDate;
}

- (id)ntkCacheableKey
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"YYYY-MM-dd"];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  usePlaceholderData = self->_usePlaceholderData;
  v8 = [v3 stringFromDate:self->_referenceDate];
  [(CLLocation *)self->_referenceLocation coordinate];
  v10 = (v9 * 10000.0);
  [(CLLocation *)self->_referenceLocation coordinate];
  v12 = [v4 stringWithFormat:@"[%@-usePlaceholderData:%d-date:%@-lat:%d-lon:%d]", v6, usePlaceholderData, v8, v10, (v11 * 10000.0)];

  return v12;
}

@end