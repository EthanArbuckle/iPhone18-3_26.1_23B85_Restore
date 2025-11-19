@interface DOCDSFileServiceConnection
- (_TtC26DocumentManagerExecutables26DOCDSFileServiceConnection)init;
@end

@implementation DOCDSFileServiceConnection

- (_TtC26DocumentManagerExecutables26DOCDSFileServiceConnection)init
{
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCDSFileServiceConnection_didUpdateInProgressFileOperationsHandler);
  v4 = type metadata accessor for DOCDSFileServiceConnection();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(DSFileServiceConnection *)&v6 init];
}

@end