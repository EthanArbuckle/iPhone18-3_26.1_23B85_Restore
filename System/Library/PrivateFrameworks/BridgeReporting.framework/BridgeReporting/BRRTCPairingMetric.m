@interface BRRTCPairingMetric
- (BRRTCPairingMetric)initWithPairingBeginsType:(unint64_t)a3;
- (id)dictionaryRepresentation;
- (void)addPairingTimeEventToMetricDict:(id)a3 withValue:(id)a4;
- (void)addPairingTimePerformanceEventToMetricDict:(id)a3 withTime:(id)a4;
@end

@implementation BRRTCPairingMetric

- (BRRTCPairingMetric)initWithPairingBeginsType:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = BRRTCPairingMetric;
  v4 = [(BRRTCPairingMetric *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(BRRTCPairingMetric *)v4 setPairingBeginsType:a3];
    v6 = objc_opt_new();
    [(BRRTCPairingMetric *)v5 setMetricDict:v6];
  }

  return v5;
}

- (void)addPairingTimeEventToMetricDict:(id)a3 withValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BRRTCPairingMetric *)self metricDict];
  [v8 setObject:v6 forKey:v7];
}

- (void)addPairingTimePerformanceEventToMetricDict:(id)a3 withTime:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BRRTCPairingMetric *)self metricDict];
  [v8 setObject:v6 forKey:v7];
}

- (id)dictionaryRepresentation
{
  v3 = [(BRRTCPairingMetric *)self metricDict];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[BRRTCPairingMetric pairingBeginsType](self, "pairingBeginsType")}];
  [v3 setObject:v4 forKey:@"PairingBeginsType"];

  v5 = [(BRRTCPairingMetric *)self subreasonCode];

  if (v5)
  {
    v6 = [(BRRTCPairingMetric *)self subreasonCode];
    [v3 setObject:v6 forKey:@"NRSubreason"];
  }

  return v3;
}

@end