@interface BlastDoorEncodedAttachments_EncodedAstc
- (BlastDoorEncodedAttachments_EncodedAstc)init;
- (BlastDoorImage)image;
- (NSString)description;
- (NSString)originalUTIType;
@end

@implementation BlastDoorEncodedAttachments_EncodedAstc

- (NSString)description
{
  sub_2145935C8(self + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc, &v4);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorImage)image
{
  selfCopy = self;
  v3 = sub_2145865B8();

  return v3;
}

- (NSString)originalUTIType
{
  sub_2145935C8(self + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc, v4);
  if (v5)
  {

    sub_214309B44(v4);
    v2 = sub_2146D9588();

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

- (BlastDoorEncodedAttachments_EncodedAstc)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end