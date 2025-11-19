@interface FollowerMetadata
- (_TtC11DockKitCore16FollowerMetadata)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setIntrinsics:(id)a3;
- (void)setPortType:(id)a3;
@end

@implementation FollowerMetadata

- (void)setPortType:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType);
  *(self + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType) = a3;
  v3 = a3;
}

- (void)setIntrinsics:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics);
  *(self + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics) = a3;
  v3 = a3;
}

- (_TtC11DockKitCore16FollowerMetadata)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_22461F700(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22461E200(v4);
}

@end