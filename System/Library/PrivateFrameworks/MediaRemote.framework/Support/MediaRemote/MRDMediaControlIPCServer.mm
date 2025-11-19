@interface MRDMediaControlIPCServer
- (MRDMediaControlIPCServer)init;
- (void)collectDiagnostic:(id)a3;
- (void)start;
@end

@implementation MRDMediaControlIPCServer

- (void)start
{
  v2 = type metadata accessor for Features.MediaRemote();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for Features.MediaRemote.cayenne(_:), v2);
  v7 = Features.MediaRemote.isEnabled.getter();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_100534C70 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = *(*qword_1005385A0 + 256);

    v8(v9);
  }
}

- (void)collectDiagnostic:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10034A328(a3);
}

- (MRDMediaControlIPCServer)init
{
  v3.receiver = self;
  v3.super_class = MRDMediaControlIPCServer;
  return [(MRDMediaControlIPCServer *)&v3 init];
}

@end