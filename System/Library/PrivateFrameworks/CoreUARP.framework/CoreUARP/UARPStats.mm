@interface UARPStats
- (UARPStats)initWithStatistics:(UARPStatistics *)statistics;
@end

@implementation UARPStats

- (UARPStats)initWithStatistics:(UARPStatistics *)statistics
{
  v5.receiver = self;
  v5.super_class = UARPStats;
  result = [(UARPStats *)&v5 init];
  if (result)
  {
    result->_packetsNoVersionAgreement = statistics->packetsNoVersionAgreement;
    result->_packetsMissed = statistics->packetsMissed;
    result->_packetsDuplicate = statistics->packetsDuplicate;
    result->_packetsOutOfOrder = statistics->packetsOutOfOrder;
  }

  return result;
}

@end