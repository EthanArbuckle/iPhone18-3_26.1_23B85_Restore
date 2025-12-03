@interface BlastDoorOrderPreview_OrderImage
- (BlastDoorImage)image;
- (BlastDoorOrderPreview_OrderImage)init;
- (NSString)description;
@end

@implementation BlastDoorOrderPreview_OrderImage

- (NSString)description
{
  sub_214391180(self + OBJC_IVAR___BlastDoorOrderPreview_OrderImage_orderPreview_OrderImage, &v4);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorImage)image
{
  selfCopy = self;
  v3 = sub_2145882B8();

  return v3;
}

- (BlastDoorOrderPreview_OrderImage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end