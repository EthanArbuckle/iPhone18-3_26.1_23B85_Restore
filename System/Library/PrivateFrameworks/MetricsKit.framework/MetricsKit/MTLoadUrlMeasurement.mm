@interface MTLoadUrlMeasurement
- (void)mark:(id)a3;
- (void)mark:(id)a3 date:(id)a4;
- (void)mark:(id)a3 time:(int64_t)a4;
- (void)setDnsServersIPAddresses:(id)a3;
- (void)setEdgeNodeCacheStatus:(id)a3;
- (void)setRedirectCount:(unint64_t)a3;
- (void)setRequestUrl:(id)a3;
- (void)setResolvedIPAddress:(id)a3;
- (void)setStatusCode:(unint64_t)a3;
- (void)setXpSamplingPercentageUsers:(double)a3;
- (void)setXpSessionDuration:(unint64_t)a3;
@end

@implementation MTLoadUrlMeasurement

- (void)mark:(id)a3 time:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v9 = [v6 numberWithLongLong:a4];
  v8 = [(MTPerfBaseMeasurement *)self timestamps];
  [v8 setObject:v9 forKeyedSubscript:v7];
}

- (void)setRequestUrl:(id)a3
{
  v4 = a3;
  v5 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [v5 setObject:v4 forKeyedSubscript:@"requestUrl"];
}

- (void)setDnsServersIPAddresses:(id)a3
{
  v4 = a3;
  v5 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [v5 setObject:v4 forKeyedSubscript:@"dnsServersIPAddresses"];
}

- (void)setEdgeNodeCacheStatus:(id)a3
{
  v4 = a3;
  v5 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [v5 setObject:v4 forKeyedSubscript:@"edgeNodeCacheStatus"];
}

- (void)setRedirectCount:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v4 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [v4 setObject:v5 forKeyedSubscript:@"redirectCount"];
}

- (void)setResolvedIPAddress:(id)a3
{
  v4 = a3;
  v5 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [v5 setObject:v4 forKeyedSubscript:@"resolvedIPAddress"];
}

- (void)setStatusCode:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v4 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [v4 setObject:v5 forKeyedSubscript:@"statusCode"];
}

- (void)setXpSessionDuration:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v4 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [v4 setObject:v5 forKeyedSubscript:@"xpSessionDuration"];
}

- (void)setXpSamplingPercentageUsers:(double)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v4 = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [v4 setObject:v5 forKeyedSubscript:@"xpSamplingPercentageUsers"];
}

- (void)mark:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  -[MTLoadUrlMeasurement mark:time:](self, "mark:time:", v5, [v4 mt_longMillisecondsSince1970]);
}

- (void)mark:(id)a3 date:(id)a4
{
  v6 = a3;
  -[MTLoadUrlMeasurement mark:time:](self, "mark:time:", v6, [a4 mt_longMillisecondsSince1970]);
}

@end