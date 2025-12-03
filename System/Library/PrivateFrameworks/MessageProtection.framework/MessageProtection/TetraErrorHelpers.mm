@interface TetraErrorHelpers
+ (BOOL)shouldMarkForStateResetWithString:(id)string;
- (_TtC17MessageProtection17TetraErrorHelpers)init;
@end

@implementation TetraErrorHelpers

+ (BOOL)shouldMarkForStateResetWithString:(id)string
{
  stringCopy = string;
  v4 = specialized static TetraErrorHelpers.shouldMarkForStateReset(string:)(stringCopy);

  return v4 & 1;
}

- (_TtC17MessageProtection17TetraErrorHelpers)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TetraErrorHelpers();
  return [(TetraErrorHelpers *)&v3 init];
}

@end