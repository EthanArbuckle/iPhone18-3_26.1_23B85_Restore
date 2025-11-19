@interface NWAppStateTracker
- (id)description;
@end

@implementation NWAppStateTracker

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NWAppStateTracker, pid %d, uuid %@ display identifier %@", self->_pid, self->_uuid, self->_identifier];

  return v2;
}

@end