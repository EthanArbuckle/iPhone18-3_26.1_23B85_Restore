@interface PBHandshake
- (id)description;
@end

@implementation PBHandshake

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%p - %@ -- State: %d, Position %d, Version: %d", self, v5, self->_state, self->_position, self->_version];

  return v6;
}

@end