@interface GKTransportMonitorStat
- (GKTransportMonitorStat)initWithPlayerStats:(id)stats;
- (NSArray)playerStats;
- (double)overallAverageLatency;
- (double)overallLatency;
- (double)overallPacketLoss;
@end

@implementation GKTransportMonitorStat

- (NSArray)playerStats
{
  TransportMonitorStat.playerStats.getter();
  type metadata accessor for TransportMonitorPlayerStat();
  v2 = sub_227A7268C();

  return v2;
}

- (double)overallLatency
{
  selfCopy = self;
  TransportMonitorStat.overallLatency.getter();
  v4 = v3;

  return v4;
}

- (double)overallAverageLatency
{
  selfCopy = self;
  TransportMonitorStat.overallAverageLatency.getter();
  v4 = v3;

  return v4;
}

- (double)overallPacketLoss
{
  selfCopy = self;
  TransportMonitorStat.overallPacketLoss.getter();
  v4 = v3;

  return v4;
}

- (GKTransportMonitorStat)initWithPlayerStats:(id)stats
{
  type metadata accessor for TransportMonitorPlayerStat();
  v3 = sub_227A7269C();
  return sub_227A62144(v3);
}

@end