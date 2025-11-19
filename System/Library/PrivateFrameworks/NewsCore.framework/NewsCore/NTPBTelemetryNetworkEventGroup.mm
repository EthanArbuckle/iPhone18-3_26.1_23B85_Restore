@interface NTPBTelemetryNetworkEventGroup
@end

@implementation NTPBTelemetryNetworkEventGroup

uint64_t __87__NTPBTelemetryNetworkEventGroup_FCNetworkBehaviorMonitorAdditions__totalDurationStats__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = a2;
  v4 = [v3 connectDuration];
  v5 = [v3 dnsDuration] + v4;
  v6 = [v3 requestDuration];
  v7 = [v3 dnsDuration];

  return [v2 numberWithLongLong:v5 + v6 + v7];
}

uint64_t __85__NTPBTelemetryNetworkEventGroup_FCNetworkBehaviorMonitorAdditions__dnsDurationStats__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 dnsDuration];

  return [v2 numberWithLongLong:v3];
}

uint64_t __89__NTPBTelemetryNetworkEventGroup_FCNetworkBehaviorMonitorAdditions__connectDurationStats__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 connectDuration];

  return [v2 numberWithLongLong:v3];
}

uint64_t __89__NTPBTelemetryNetworkEventGroup_FCNetworkBehaviorMonitorAdditions__timeToFirstByteStats__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = a2;
  v4 = [v3 dnsDuration];
  v5 = [v3 connectDuration] + v4;
  v6 = [v3 requestDuration];

  return [v2 numberWithLongLong:v5 + v6];
}

@end