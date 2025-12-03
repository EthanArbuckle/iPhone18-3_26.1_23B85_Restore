@interface BRRTCPairingMetric
- (BRRTCPairingMetric)initWithPairingBeginsType:(unint64_t)type;
- (id)dictionaryRepresentation;
- (void)addPairingTimeEventToMetricDict:(id)dict withValue:(id)value;
- (void)addPairingTimePerformanceEventToMetricDict:(id)dict withTime:(id)time;
@end

@implementation BRRTCPairingMetric

- (BRRTCPairingMetric)initWithPairingBeginsType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = BRRTCPairingMetric;
  v4 = [(BRRTCPairingMetric *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(BRRTCPairingMetric *)v4 setPairingBeginsType:type];
    v6 = objc_opt_new();
    [(BRRTCPairingMetric *)v5 setMetricDict:v6];
  }

  return v5;
}

- (void)addPairingTimeEventToMetricDict:(id)dict withValue:(id)value
{
  valueCopy = value;
  dictCopy = dict;
  metricDict = [(BRRTCPairingMetric *)self metricDict];
  [metricDict setObject:valueCopy forKey:dictCopy];
}

- (void)addPairingTimePerformanceEventToMetricDict:(id)dict withTime:(id)time
{
  timeCopy = time;
  dictCopy = dict;
  metricDict = [(BRRTCPairingMetric *)self metricDict];
  [metricDict setObject:timeCopy forKey:dictCopy];
}

- (id)dictionaryRepresentation
{
  metricDict = [(BRRTCPairingMetric *)self metricDict];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[BRRTCPairingMetric pairingBeginsType](self, "pairingBeginsType")}];
  [metricDict setObject:v4 forKey:@"PairingBeginsType"];

  subreasonCode = [(BRRTCPairingMetric *)self subreasonCode];

  if (subreasonCode)
  {
    subreasonCode2 = [(BRRTCPairingMetric *)self subreasonCode];
    [metricDict setObject:subreasonCode2 forKey:@"NRSubreason"];
  }

  return metricDict;
}

@end