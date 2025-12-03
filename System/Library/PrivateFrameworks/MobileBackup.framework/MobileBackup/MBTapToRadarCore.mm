@interface MBTapToRadarCore
+ (BOOL)fileTapToRadarWithTitle:(id)title description:(id)description keywordID:(id)d attachment:(id)attachment error:(id *)error;
- (_TtC7backupd16MBTapToRadarCore)init;
@end

@implementation MBTapToRadarCore

+ (BOOL)fileTapToRadarWithTitle:(id)title description:(id)description keywordID:(id)d attachment:(id)attachment error:(id *)error
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (description)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    description = v14;
    if (d)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (attachment)
    {
      goto LABEL_4;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v13 = 0;
  if (!d)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  d = v16;
  if (!attachment)
  {
    goto LABEL_7;
  }

LABEL_4:
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  attachment = v18;
LABEL_8:
  sub_10002E9D8(v10, v12, v13, description, v15, d, v17, attachment);

  return 1;
}

- (_TtC7backupd16MBTapToRadarCore)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MBTapToRadarCore();
  return [(MBTapToRadarCore *)&v3 init];
}

@end