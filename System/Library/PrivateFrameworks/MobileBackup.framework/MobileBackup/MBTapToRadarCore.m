@interface MBTapToRadarCore
+ (BOOL)fileTapToRadarWithTitle:(id)a3 description:(id)a4 keywordID:(id)a5 attachment:(id)a6 error:(id *)a7;
- (_TtC7backupd16MBTapToRadarCore)init;
@end

@implementation MBTapToRadarCore

+ (BOOL)fileTapToRadarWithTitle:(id)a3 description:(id)a4 keywordID:(id)a5 attachment:(id)a6 error:(id *)a7
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v14;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v13 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a5 = v16;
  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a6 = v18;
LABEL_8:
  sub_10002E9D8(v10, v12, v13, a4, v15, a5, v17, a6);

  return 1;
}

- (_TtC7backupd16MBTapToRadarCore)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MBTapToRadarCore();
  return [(MBTapToRadarCore *)&v3 init];
}

@end