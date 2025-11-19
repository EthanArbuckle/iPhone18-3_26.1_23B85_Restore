@interface NWStatsInterfaceSource
- (id)description;
@end

@implementation NWStatsInterfaceSource

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NWStatsInterfaceSource with srcref %lld interface %u threshold %lld", self->_srcRef, self->_ifIndex, self->_threshold];

  return v2;
}

@end