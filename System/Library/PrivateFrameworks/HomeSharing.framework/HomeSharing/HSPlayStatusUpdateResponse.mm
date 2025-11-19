@interface HSPlayStatusUpdateResponse
- (id)description;
@end

@implementation HSPlayStatusUpdateResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p: nextRevisionID:%u playStatusInformation:%@>", v5, self, self->_nextRevisionID, self->_playStatusInformation];

  return v6;
}

@end