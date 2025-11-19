@interface MRAVDistantOutputDevice
- (MRAVDistantOutputDevice)initWithGroupSession:(id)a3;
- (MRAVDistantOutputDevice)initWithSystemGroupSession:(id)a3;
@end

@implementation MRAVDistantOutputDevice

- (MRAVDistantOutputDevice)initWithGroupSession:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_1001C8DA4(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (MRAVDistantOutputDevice)initWithSystemGroupSession:(id)a3
{
  v3 = a3;
  v4 = sub_1001C9104(v3);

  return v4;
}

@end