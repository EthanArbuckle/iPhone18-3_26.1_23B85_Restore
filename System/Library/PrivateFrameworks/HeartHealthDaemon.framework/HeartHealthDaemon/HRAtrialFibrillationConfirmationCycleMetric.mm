@interface HRAtrialFibrillationConfirmationCycleMetric
- (HRAtrialFibrillationConfirmationCycleMetric)initWithAgeBin:(unint64_t)bin numberOfPositiveTachograms:(int64_t)tachograms numberOfNegativeTachograms:(int64_t)negativeTachograms algorithmVersion:(int64_t)version biologicalSex:(int64_t)sex userShouldBeAlerted:(BOOL)alerted cycleDuration:(double)duration additionalMetrics:(id)self0;
- (NSDictionary)payload;
@end

@implementation HRAtrialFibrillationConfirmationCycleMetric

- (HRAtrialFibrillationConfirmationCycleMetric)initWithAgeBin:(unint64_t)bin numberOfPositiveTachograms:(int64_t)tachograms numberOfNegativeTachograms:(int64_t)negativeTachograms algorithmVersion:(int64_t)version biologicalSex:(int64_t)sex userShouldBeAlerted:(BOOL)alerted cycleDuration:(double)duration additionalMetrics:(id)self0
{
  alertedCopy = alerted;
  metricsCopy = metrics;
  v32.receiver = self;
  v32.super_class = HRAtrialFibrillationConfirmationCycleMetric;
  v18 = [(HRAtrialFibrillationConfirmationCycleMetric *)&v32 init];
  if (v18)
  {
    if (tachograms >= 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = -1;
    }

    if (alertedCopy)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:metricsCopy];
    eventPayload = v18->_eventPayload;
    v18->_eventPayload = v21;

    v23 = NSStringFromHKHRAnalyticsAgeBin();
    [(NSMutableDictionary *)v18->_eventPayload setObject:v23 forKeyedSubscript:@"age"];

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:tachograms];
    [(NSMutableDictionary *)v18->_eventPayload setObject:v24 forKeyedSubscript:@"numberOfPositiveTachograms"];

    v25 = [MEMORY[0x277CCABB0] numberWithInteger:negativeTachograms];
    [(NSMutableDictionary *)v18->_eventPayload setObject:v25 forKeyedSubscript:@"numberOfNegativeTachograms"];

    v26 = [MEMORY[0x277CCABB0] numberWithInteger:version];
    [(NSMutableDictionary *)v18->_eventPayload setObject:v26 forKeyedSubscript:@"algorithmVersionIRN"];

    if (sex > 3)
    {
      v27 = @"Unknown";
    }

    else
    {
      v27 = off_2786605D8[sex];
    }

    [(NSMutableDictionary *)v18->_eventPayload setObject:v27 forKeyedSubscript:@"sex"];
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
    [(NSMutableDictionary *)v18->_eventPayload setObject:v28 forKeyedSubscript:@"cycleResult"];

    if (tachograms > 0 || alertedCopy)
    {
      v29 = (duration / 60.0);
    }

    else
    {
      v29 = -1;
    }

    v30 = [MEMORY[0x277CCABB0] numberWithInteger:v29];
    [(NSMutableDictionary *)v18->_eventPayload setObject:v30 forKeyedSubscript:@"cycleDuration"];
  }

  return v18;
}

- (NSDictionary)payload
{
  v2 = MEMORY[0x277CBEAC0];
  eventPayload = [(HRAtrialFibrillationConfirmationCycleMetric *)self eventPayload];
  v4 = [v2 dictionaryWithDictionary:eventPayload];

  return v4;
}

@end