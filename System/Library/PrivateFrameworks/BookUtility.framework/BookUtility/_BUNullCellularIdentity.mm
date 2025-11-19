@interface _BUNullCellularIdentity
- (_BUNullCellularIdentity)init;
@end

@implementation _BUNullCellularIdentity

- (_BUNullCellularIdentity)init
{
  v3.receiver = self;
  v3.super_class = _BUNullCellularIdentity;
  return [(BUCellularIdentity *)&v3 initWithSIMIdentity:@"00000000000000000000" roaming:0];
}

@end