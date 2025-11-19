@interface NWStatsEntityMapper
- (id)identifierForUUID:(id)a3 derivation:(int *)a4;
@end

@implementation NWStatsEntityMapper

- (id)identifierForUUID:(id)a3 derivation:(int *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

@end