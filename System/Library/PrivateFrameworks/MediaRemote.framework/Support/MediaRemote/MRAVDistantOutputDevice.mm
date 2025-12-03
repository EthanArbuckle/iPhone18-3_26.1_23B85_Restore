@interface MRAVDistantOutputDevice
- (MRAVDistantOutputDevice)initWithGroupSession:(id)session;
- (MRAVDistantOutputDevice)initWithSystemGroupSession:(id)session;
@end

@implementation MRAVDistantOutputDevice

- (MRAVDistantOutputDevice)initWithGroupSession:(id)session
{
  swift_unknownObjectRetain();
  v4 = sub_1001C8DA4(session);
  swift_unknownObjectRelease();
  return v4;
}

- (MRAVDistantOutputDevice)initWithSystemGroupSession:(id)session
{
  sessionCopy = session;
  v4 = sub_1001C9104(sessionCopy);

  return v4;
}

@end