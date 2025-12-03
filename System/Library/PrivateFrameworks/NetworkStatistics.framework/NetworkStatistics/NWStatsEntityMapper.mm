@interface NWStatsEntityMapper
- (id)identifierForUUID:(id)d derivation:(int *)derivation;
@end

@implementation NWStatsEntityMapper

- (id)identifierForUUID:(id)d derivation:(int *)derivation
{
  if (derivation)
  {
    *derivation = 0;
  }

  return 0;
}

@end