@interface ENBeaconCountMetrics
- (ENBeaconCountMetrics)initWithStartDate:(id)a3 endDate:(id)a4 windowDuration:(double)a5;
- (id)differentialPrivacyRepresentationWithCountThresholds:(id)a3;
- (unint64_t)beaconCountAtDate:(id)a3;
- (void)addAdvertisement:(id)a3;
- (void)dealloc;
- (void)enumerateBeaconCountWindows:(id)a3;
@end

@implementation ENBeaconCountMetrics

- (ENBeaconCountMetrics)initWithStartDate:(id)a3 endDate:(id)a4 windowDuration:(double)a5
{
  v9 = a3;
  v10 = a4;
  v19.receiver = self;
  v19.super_class = ENBeaconCountMetrics;
  v11 = [(ENBeaconCountMetrics *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startDate, a3);
    [(NSDate *)v12->_startDate timeIntervalSince1970];
    v12->_previousTimestamp = v13;
    objc_storeStrong(&v12->_endDate, a4);
    v12->_windowDuration = a5;
    v14 = objc_alloc_init(MEMORY[0x277CBEB50]);
    currentInsertionWindowObservedRPI = v12->_currentInsertionWindowObservedRPI;
    v12->_currentInsertionWindowObservedRPI = v14;

    [(NSDate *)v12->_endDate timeIntervalSinceDate:v12->_startDate];
    v17 = vcvtpd_u64_f64(v16 / v12->_windowDuration);
    v12->_beaconCountWindowCount = v17;
    v12->_beaconCountWindows = malloc_type_calloc(v17, 8uLL, 0x100004000313F17uLL);
  }

  return v12;
}

- (void)dealloc
{
  free(self->_beaconCountWindows);
  v3.receiver = self;
  v3.super_class = ENBeaconCountMetrics;
  [(ENBeaconCountMetrics *)&v3 dealloc];
}

- (void)addAdvertisement:(id)a3
{
  v12 = a3;
  [v12 timestamp];
  v5 = v4;
  if (v4 >= self->_previousTimestamp)
  {
    [(NSDate *)self->_startDate timeIntervalSince1970];
    if (v5 >= v6)
    {
      [(NSDate *)self->_endDate timeIntervalSince1970];
      if (v5 < v7)
      {
        [(NSDate *)self->_startDate timeIntervalSince1970];
        v9 = ((v5 - v8) / self->_windowDuration);
        if (self->_currentInsertionWindowIndex != v9)
        {
          [(NSMutableSet *)self->_currentInsertionWindowObservedRPI removeAllObjects];
          self->_currentInsertionWindowIndex = v9;
        }

        currentInsertionWindowObservedRPI = self->_currentInsertionWindowObservedRPI;
        v11 = [v12 rpi];
        [(NSMutableSet *)currentInsertionWindowObservedRPI addObject:v11];

        self->_beaconCountWindows[self->_currentInsertionWindowIndex] = [(NSMutableSet *)self->_currentInsertionWindowObservedRPI count];
        self->_previousTimestamp = v5;
      }
    }
  }
}

- (unint64_t)beaconCountAtDate:(id)a3
{
  v4 = a3;
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;
  [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
  if (v6 < v7 || ([v4 timeIntervalSinceReferenceDate], v9 = v8, -[NSDate timeIntervalSinceReferenceDate](self->_endDate, "timeIntervalSinceReferenceDate"), v9 >= v10))
  {
    v14 = 0;
  }

  else
  {
    [v4 timeIntervalSince1970];
    v12 = v11;
    [(NSDate *)self->_startDate timeIntervalSince1970];
    v14 = self->_beaconCountWindows[((v12 - v13) / self->_windowDuration)];
  }

  return v14;
}

- (void)enumerateBeaconCountWindows:(id)a3
{
  v6 = a3;
  if (self->_beaconCountWindowCount)
  {
    v4 = 0;
    do
    {
      v5 = [(NSDate *)self->_startDate dateByAddingTimeInterval:self->_windowDuration * v4];
      v6[2](v6, v5, self->_beaconCountWindows[v4], self->_windowDuration);

      ++v4;
    }

    while (v4 < self->_beaconCountWindowCount);
  }
}

- (id)differentialPrivacyRepresentationWithCountThresholds:(id)a3
{
  v4 = a3;
  v5 = vcvtpd_u64_f64(86400.0 / self->_windowDuration);
  v6 = [v4 count] * v5;
  v7 = malloc_type_calloc(v6, 1uLL, 0x100004077774924uLL);
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CBEA88] calendarWithIdentifier:*MEMORY[0x277CBE5B8]];
    v10 = [MEMORY[0x277CBEBA8] timeZoneForSecondsFromGMT:0];
    [v9 setTimeZone:v10];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__ENBeaconCountMetrics_differentialPrivacyRepresentationWithCountThresholds___block_invoke;
    v14[3] = &unk_278FD0F48;
    v15 = v9;
    v16 = v4;
    v17 = v8;
    v11 = v9;
    [(ENBeaconCountMetrics *)self enumerateBeaconCountWindows:v14];
    v12 = [MEMORY[0x277CBEA98] dataWithBytesNoCopy:v8 length:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __77__ENBeaconCountMetrics_differentialPrivacyRepresentationWithCountThresholds___block_invoke(uint64_t a1, void *a2, unint64_t a3, double a4)
{
  v7 = a2;
  if (a3)
  {
    v16 = v7;
    v8 = [*(a1 + 32) startOfDayForDate:v7];
    [v16 timeIntervalSinceDate:v8];
    v10 = v9;
    if ([*(a1 + 40) count])
    {
      v11 = 0;
      v12 = v10 / a4;
      while (1)
      {
        v13 = [*(a1 + 40) objectAtIndex:{v11, v12}];
        v14 = [v13 unsignedIntegerValue];

        if (v14 >= a3)
        {
          break;
        }

        if (++v11 >= [*(a1 + 40) count])
        {
          goto LABEL_8;
        }
      }

      v15 = *(a1 + 48);
      *(v15 + [*(a1 + 40) count] * (v10 / a4) + v11) = 1;
    }

LABEL_8:

    v7 = v16;
  }
}

@end