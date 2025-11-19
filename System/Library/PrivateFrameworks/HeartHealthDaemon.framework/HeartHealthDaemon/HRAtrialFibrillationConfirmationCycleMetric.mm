@interface HRAtrialFibrillationConfirmationCycleMetric
- (HRAtrialFibrillationConfirmationCycleMetric)initWithAgeBin:(unint64_t)a3 numberOfPositiveTachograms:(int64_t)a4 numberOfNegativeTachograms:(int64_t)a5 algorithmVersion:(int64_t)a6 biologicalSex:(int64_t)a7 userShouldBeAlerted:(BOOL)a8 cycleDuration:(double)a9 additionalMetrics:(id)a10;
- (NSDictionary)payload;
@end

@implementation HRAtrialFibrillationConfirmationCycleMetric

- (HRAtrialFibrillationConfirmationCycleMetric)initWithAgeBin:(unint64_t)a3 numberOfPositiveTachograms:(int64_t)a4 numberOfNegativeTachograms:(int64_t)a5 algorithmVersion:(int64_t)a6 biologicalSex:(int64_t)a7 userShouldBeAlerted:(BOOL)a8 cycleDuration:(double)a9 additionalMetrics:(id)a10
{
  v11 = a8;
  v17 = a10;
  v32.receiver = self;
  v32.super_class = HRAtrialFibrillationConfirmationCycleMetric;
  v18 = [(HRAtrialFibrillationConfirmationCycleMetric *)&v32 init];
  if (v18)
  {
    if (a4 >= 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = -1;
    }

    if (v11)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v17];
    eventPayload = v18->_eventPayload;
    v18->_eventPayload = v21;

    v23 = NSStringFromHKHRAnalyticsAgeBin();
    [(NSMutableDictionary *)v18->_eventPayload setObject:v23 forKeyedSubscript:@"age"];

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(NSMutableDictionary *)v18->_eventPayload setObject:v24 forKeyedSubscript:@"numberOfPositiveTachograms"];

    v25 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [(NSMutableDictionary *)v18->_eventPayload setObject:v25 forKeyedSubscript:@"numberOfNegativeTachograms"];

    v26 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
    [(NSMutableDictionary *)v18->_eventPayload setObject:v26 forKeyedSubscript:@"algorithmVersionIRN"];

    if (a7 > 3)
    {
      v27 = @"Unknown";
    }

    else
    {
      v27 = off_2786605D8[a7];
    }

    [(NSMutableDictionary *)v18->_eventPayload setObject:v27 forKeyedSubscript:@"sex"];
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
    [(NSMutableDictionary *)v18->_eventPayload setObject:v28 forKeyedSubscript:@"cycleResult"];

    if (a4 > 0 || v11)
    {
      v29 = (a9 / 60.0);
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
  v3 = [(HRAtrialFibrillationConfirmationCycleMetric *)self eventPayload];
  v4 = [v2 dictionaryWithDictionary:v3];

  return v4;
}

@end