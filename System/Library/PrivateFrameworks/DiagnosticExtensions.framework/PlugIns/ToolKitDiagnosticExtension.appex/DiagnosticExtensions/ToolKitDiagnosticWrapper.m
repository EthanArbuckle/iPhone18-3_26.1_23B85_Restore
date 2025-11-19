@interface ToolKitDiagnosticWrapper
+ (_TtC26ToolKitDiagnosticExtension24ToolKitDiagnosticWrapper)shared;
- (id)getToolKitDatabaseURL;
@end

@implementation ToolKitDiagnosticWrapper

+ (_TtC26ToolKitDiagnosticExtension24ToolKitDiagnosticWrapper)shared
{
  v2 = static ToolKitDiagnosticWrapper.shared.getter();

  return v2;
}

- (id)getToolKitDatabaseURL
{
  v3 = sub_1000016A4(&qword_100014380, &qword_10000B3B0);
  sub_100009970(v3);
  v5 = *(v4 + 64);
  sub_100009A20();
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = self;
  ToolKitDiagnosticWrapper.getToolKitDatabaseURL()();

  v10 = sub_10000A820();
  v12 = 0;
  if (sub_1000082E8(v8, 1, v10) != 1)
  {
    sub_10000A7F0(v11);
    v12 = v13;
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  return v12;
}

@end