@interface MTLoadUrlMeasurement
- (void)mark:(id)mark;
- (void)mark:(id)mark date:(id)date;
- (void)mark:(id)mark time:(int64_t)time;
- (void)setDnsServersIPAddresses:(id)addresses;
- (void)setEdgeNodeCacheStatus:(id)status;
- (void)setRedirectCount:(unint64_t)count;
- (void)setRequestUrl:(id)url;
- (void)setResolvedIPAddress:(id)address;
- (void)setStatusCode:(unint64_t)code;
- (void)setXpSamplingPercentageUsers:(double)users;
- (void)setXpSessionDuration:(unint64_t)duration;
@end

@implementation MTLoadUrlMeasurement

- (void)mark:(id)mark time:(int64_t)time
{
  v6 = MEMORY[0x277CCABB0];
  markCopy = mark;
  v9 = [v6 numberWithLongLong:time];
  timestamps = [(MTPerfBaseMeasurement *)self timestamps];
  [timestamps setObject:v9 forKeyedSubscript:markCopy];
}

- (void)setRequestUrl:(id)url
{
  urlCopy = url;
  measurementSpecificData = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [measurementSpecificData setObject:urlCopy forKeyedSubscript:@"requestUrl"];
}

- (void)setDnsServersIPAddresses:(id)addresses
{
  addressesCopy = addresses;
  measurementSpecificData = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [measurementSpecificData setObject:addressesCopy forKeyedSubscript:@"dnsServersIPAddresses"];
}

- (void)setEdgeNodeCacheStatus:(id)status
{
  statusCopy = status;
  measurementSpecificData = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [measurementSpecificData setObject:statusCopy forKeyedSubscript:@"edgeNodeCacheStatus"];
}

- (void)setRedirectCount:(unint64_t)count
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  measurementSpecificData = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [measurementSpecificData setObject:v5 forKeyedSubscript:@"redirectCount"];
}

- (void)setResolvedIPAddress:(id)address
{
  addressCopy = address;
  measurementSpecificData = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [measurementSpecificData setObject:addressCopy forKeyedSubscript:@"resolvedIPAddress"];
}

- (void)setStatusCode:(unint64_t)code
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:code];
  measurementSpecificData = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [measurementSpecificData setObject:v5 forKeyedSubscript:@"statusCode"];
}

- (void)setXpSessionDuration:(unint64_t)duration
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:duration];
  measurementSpecificData = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [measurementSpecificData setObject:v5 forKeyedSubscript:@"xpSessionDuration"];
}

- (void)setXpSamplingPercentageUsers:(double)users
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:users];
  measurementSpecificData = [(MTPerfBaseMeasurement *)self measurementSpecificData];
  [measurementSpecificData setObject:v5 forKeyedSubscript:@"xpSamplingPercentageUsers"];
}

- (void)mark:(id)mark
{
  v4 = MEMORY[0x277CBEAA8];
  markCopy = mark;
  -[MTLoadUrlMeasurement mark:time:](self, "mark:time:", markCopy, [v4 mt_longMillisecondsSince1970]);
}

- (void)mark:(id)mark date:(id)date
{
  markCopy = mark;
  -[MTLoadUrlMeasurement mark:time:](self, "mark:time:", markCopy, [date mt_longMillisecondsSince1970]);
}

@end