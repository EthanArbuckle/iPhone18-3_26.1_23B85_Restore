@interface CRXCPrescriptionState
- (BOOL)isEqual:(id)equal;
- (CRXCPrescriptionState)init;
- (NSString)description;
- (NSString)rxUUID;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXCPrescriptionState

- (NSString)rxUUID
{
  if (*(self + OBJC_IVAR___CRXCPrescriptionState_rxUUID + 8))
  {
    v2 = *(self + OBJC_IVAR___CRXCPrescriptionState_rxUUID);
    v3 = *(self + OBJC_IVAR___CRXCPrescriptionState_rxUUID + 8);

    v4 = sub_247365C44();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  CRXCPrescriptionState.description.getter();

  v3 = sub_247365C44();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_247365DC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CRXCPrescriptionState.isEqual(_:)(v8);

  sub_247347038(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRXCPrescriptionState.encode(with:)(coderCopy);
}

- (CRXCPrescriptionState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end