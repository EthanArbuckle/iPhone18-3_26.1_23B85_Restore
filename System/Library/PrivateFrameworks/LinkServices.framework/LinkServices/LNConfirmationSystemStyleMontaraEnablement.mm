@interface LNConfirmationSystemStyleMontaraEnablement
- (BOOL)isEqual:(id)a3;
- (NSString)bundleIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNConfirmationSystemStyleMontaraEnablement

- (NSString)bundleIdentifier
{
  LNConfirmationSystemStyleMontaraEnablement.bundleIdentifier.getter();
  v2 = sub_19774EF20();

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_19774F460();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = LNConfirmationSystemStyleMontaraEnablement.isEqual(_:)(v8);

  sub_19766A0E8(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  LNConfirmationSystemStyleMontaraEnablement.encode(with:)(v4);
}

@end