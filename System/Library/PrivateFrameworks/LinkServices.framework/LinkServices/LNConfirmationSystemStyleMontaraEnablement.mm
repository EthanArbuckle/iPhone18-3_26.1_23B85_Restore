@interface LNConfirmationSystemStyleMontaraEnablement
- (BOOL)isEqual:(id)equal;
- (NSString)bundleIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNConfirmationSystemStyleMontaraEnablement

- (NSString)bundleIdentifier
{
  LNConfirmationSystemStyleMontaraEnablement.bundleIdentifier.getter();
  v2 = sub_19774EF20();

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_19774F460();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = LNConfirmationSystemStyleMontaraEnablement.isEqual(_:)(v8);

  sub_19766A0E8(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  LNConfirmationSystemStyleMontaraEnablement.encode(with:)(coderCopy);
}

@end