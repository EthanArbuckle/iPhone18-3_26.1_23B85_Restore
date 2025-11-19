@interface UARPStats
- (UARPStats)initWithStatistics:(UARPStatistics *)a3;
@end

@implementation UARPStats

- (UARPStats)initWithStatistics:(UARPStatistics *)a3
{
  v5.receiver = self;
  v5.super_class = UARPStats;
  result = [(UARPStats *)&v5 init];
  if (result)
  {
    result->_packetsNoVersionAgreement = a3->packetsNoVersionAgreement;
    result->_packetsMissed = a3->packetsMissed;
    result->_packetsDuplicate = a3->packetsDuplicate;
    result->_packetsOutOfOrder = a3->packetsOutOfOrder;
  }

  return result;
}

@end