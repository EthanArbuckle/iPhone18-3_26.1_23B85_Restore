@interface HKMCProjection
- ($0AC6E346AE4835514AAA8AC86D8F4844)allDays;
- ($0AC6E346AE4835514AAA8AC86D8F4844)mostLikelyDays;
- ($0AC6E346AE4835514AAA8AC86D8F4844)startDayRange;
- (BOOL)isEqual:(id)a3;
- (HKMCProjection)initWithCoder:(id)a3;
- (HKMCProjection)initWithStartMean:(double)a3 startStandardDeviation:(double)a4 endMean:(double)a5 endStandardDeviation:(double)a6 allDays:(id)a7 partiallyLogged:(BOOL)a8 daysOffsetFromCalendarMethod:(int64_t)a9 predictionPrimarySource:(int64_t)a10;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCProjection

- (HKMCProjection)initWithStartMean:(double)a3 startStandardDeviation:(double)a4 endMean:(double)a5 endStandardDeviation:(double)a6 allDays:(id)a7 partiallyLogged:(BOOL)a8 daysOffsetFromCalendarMethod:(int64_t)a9 predictionPrimarySource:(int64_t)a10
{
  var1 = a7.var1;
  var0 = a7.var0;
  v31.receiver = self;
  v31.super_class = HKMCProjection;
  v20 = [(HKMCProjection *)&v31 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_15;
  }

  v20->_startMean = a3;
  v20->_startStandardDeviation = a4;
  v20->_endMean = a5;
  v20->_endStandardDeviation = a6;
  v20->_allDays.start = var0;
  v20->_allDays.duration = var1;
  v20->_partiallyLogged = a8;
  v20->_daysOffsetFromCalendarMethod = a9;
  v20->_predictionPrimarySource = a10;
  v22 = [MEMORY[0x277CCDD30] sharedBehavior];
  v23 = [v22 isAppleInternalInstall];

  if (v23)
  {
    [(HKMCProjection *)v21 mostLikelyDays];
    if (HKUnionDayIndexRange() != var0 || v24 != var1)
    {
      [HKMCProjection initWithStartMean:a2 startStandardDeviation:v21 endMean:? endStandardDeviation:? allDays:? partiallyLogged:? daysOffsetFromCalendarMethod:? predictionPrimarySource:?];
    }
  }

  [(HKMCProjection *)v21 mostLikelyDays];
  if (HKUnionDayIndexRange() == var0 && v26 == var1)
  {
LABEL_15:
    v29 = v21;
  }

  else
  {
    _HKInitializeLogging();
    v28 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_FAULT))
    {
      [HKMCProjection initWithStartMean:v28 startStandardDeviation:? endMean:? endStandardDeviation:? allDays:? partiallyLogged:? daysOffsetFromCalendarMethod:? predictionPrimarySource:?];
    }

    v29 = 0;
  }

  return v29;
}

- (void)encodeWithCoder:(id)a3
{
  startMean = self->_startMean;
  v5 = a3;
  [v5 encodeDouble:@"StartMean" forKey:startMean];
  [v5 encodeDouble:@"StartStandardDeviation" forKey:self->_startStandardDeviation];
  [v5 encodeDouble:@"EndMean" forKey:self->_endMean];
  [v5 encodeDouble:@"EndStandardDeviation" forKey:self->_endStandardDeviation];
  [v5 encodeInteger:self->_allDays.start forKey:@"AllDaysStart"];
  [v5 encodeInteger:self->_allDays.duration forKey:@"AllDaysDuration"];
  [v5 encodeBool:self->_partiallyLogged forKey:@"PartiallyLogged"];
  [v5 encodeInteger:self->_daysOffsetFromCalendarMethod forKey:@"DaysOffsetFromCalendarMethod"];
  [v5 encodeInteger:self->_predictionPrimarySource forKey:@"PredictionPrimarySource"];
}

- (HKMCProjection)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKMCProjection;
  v5 = [(HKMCProjection *)&v11 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"StartMean"];
    v5->_startMean = v6;
    [v4 decodeDoubleForKey:@"StartStandardDeviation"];
    v5->_startStandardDeviation = v7;
    [v4 decodeDoubleForKey:@"EndMean"];
    v5->_endMean = v8;
    [v4 decodeDoubleForKey:@"EndStandardDeviation"];
    v5->_endStandardDeviation = v9;
    v5->_allDays.start = [v4 decodeIntegerForKey:@"AllDaysStart"];
    v5->_allDays.duration = [v4 decodeIntegerForKey:@"AllDaysDuration"];
    v5->_partiallyLogged = [v4 decodeBoolForKey:@"PartiallyLogged"];
    v5->_daysOffsetFromCalendarMethod = [v4 decodeIntegerForKey:@"DaysOffsetFromCalendarMethod"];
    v5->_predictionPrimarySource = [v4 decodeIntegerForKey:@"PredictionPrimarySource"];
  }

  return v5;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)mostLikelyDays
{
  startMean = self->_startMean;
  v3 = llround(self->_endMean - startMean) + 1;
  v4 = llround(startMean);
  result.var1 = v3;
  result.var0 = v4;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)startDayRange
{
  start = self->_allDays.start;
  v3 = (2 * ([(HKMCProjection *)self mostLikelyDays]- start)) | 1;
  v4 = start;
  result.var1 = v3;
  result.var0 = v4;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v15 = *&self->_startMean;
  endMean = self->_endMean;
  endStandardDeviation = self->_endStandardDeviation;
  start = self->_allDays.start;
  duration = self->_allDays.duration;
  v9 = NSStringFromHKDayIndexRange();
  partiallyLogged = self->_partiallyLogged;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_daysOffsetFromCalendarMethod];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_predictionPrimarySource];
  v13 = [v3 stringWithFormat:@"<%@:%p start:%.2f±%.2f end:%.2f±%.2f allDays:%@ partiallyLogged:%d daysShifted:%@ predictionPrimarySource:%@>", v4, self, v15, *&endMean, *&endStandardDeviation, v9, partiallyLogged, v11, v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || vabdd_f64(self->_startMean, v4->_startMean) >= 2.22044605e-16 || vabdd_f64(self->_startStandardDeviation, v4->_startStandardDeviation) >= 2.22044605e-16 || vabdd_f64(self->_endMean, v4->_endMean) >= 2.22044605e-16 || vabdd_f64(self->_endStandardDeviation, v4->_endStandardDeviation) >= 2.22044605e-16)
  {
    goto LABEL_12;
  }

  v5 = [(HKMCProjection *)self allDays];
  v7 = v6;
  v9 = 0;
  if (v5 == [(HKMCProjection *)v4 allDays]&& v7 == v8)
  {
    if (self->_partiallyLogged == v4->_partiallyLogged && self->_daysOffsetFromCalendarMethod == v4->_daysOffsetFromCalendarMethod)
    {
      v9 = self->_predictionPrimarySource == v4->_predictionPrimarySource;
      goto LABEL_14;
    }

LABEL_12:
    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startMean];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startStandardDeviation];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endMean];
  v8 = [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endStandardDeviation];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_allDays.start];
  v12 = [v11 hash];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_allDays.duration];
  v14 = v10 ^ v12 ^ [v13 hash] ^ self->_partiallyLogged;
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:self->_daysOffsetFromCalendarMethod];
  v16 = [v15 hash] ^ self->_predictionPrimarySource;

  return v14 ^ v16;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)allDays
{
  duration = self->_allDays.duration;
  start = self->_allDays.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

- (void)initWithStartMean:(uint64_t)a1 startStandardDeviation:(uint64_t)a2 endMean:endStandardDeviation:allDays:partiallyLogged:daysOffsetFromCalendarMethod:predictionPrimarySource:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMCProjection.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"HKEqualDayIndexRanges(HKUnionDayIndexRange([self mostLikelyDays], allDays), allDays)"}];
}

- (void)initWithStartMean:(void *)a1 startStandardDeviation:endMean:endStandardDeviation:allDays:partiallyLogged:daysOffsetFromCalendarMethod:predictionPrimarySource:.cold.2(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v4 = 138543362;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_fault_impl(&dword_2518FC000, v1, OS_LOG_TYPE_FAULT, "[%{public}@] Cannot create projection with most likely days outside of all days", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

@end