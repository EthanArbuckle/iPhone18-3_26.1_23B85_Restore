@interface GEOSharedNavETAInfo(MSPExtras)
- (uint64_t)mspDescription;
@end

@implementation GEOSharedNavETAInfo(MSPExtras)

- (uint64_t)mspDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 waypointIndex];
  [a1 remainingTime];
  v5 = (v4 / 60.0);
  [a1 remainingDistance];
  return [v2 stringWithFormat:@"[%lu] remaining (%d min, %d km)", v3, v5, (v6 / 1000.0)];
}

@end