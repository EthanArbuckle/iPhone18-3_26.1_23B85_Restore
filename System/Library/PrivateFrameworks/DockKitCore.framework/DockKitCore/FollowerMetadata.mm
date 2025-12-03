@interface FollowerMetadata
- (_TtC11DockKitCore16FollowerMetadata)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setIntrinsics:(id)intrinsics;
- (void)setPortType:(id)type;
@end

@implementation FollowerMetadata

- (void)setPortType:(id)type
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType);
  *(self + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType) = type;
  typeCopy = type;
}

- (void)setIntrinsics:(id)intrinsics
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics);
  *(self + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics) = intrinsics;
  intrinsicsCopy = intrinsics;
}

- (_TtC11DockKitCore16FollowerMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_22461F700(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_22461E200(coderCopy);
}

@end