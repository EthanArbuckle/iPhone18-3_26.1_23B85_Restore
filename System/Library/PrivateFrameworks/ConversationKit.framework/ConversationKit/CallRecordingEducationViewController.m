@interface CallRecordingEducationViewController
- (_TtC15ConversationKit36CallRecordingEducationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC15ConversationKit36CallRecordingEducationViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)handleTappedEducationScreenCancel;
- (void)handleTappedEducationScreenContinue;
@end

@implementation CallRecordingEducationViewController

- (void)handleTappedEducationScreenContinue
{
  v2 = self;
  CallRecordingEducationViewController.handleTappedEducationScreenContinue()();
}

- (void)handleTappedEducationScreenCancel
{
  v2 = self;
  CallRecordingEducationViewController.handleTappedEducationScreenCancel()();
}

- (_TtC15ConversationKit36CallRecordingEducationViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return CallRecordingEducationViewController.init(title:detailText:symbolName:contentLayout:)(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return CallRecordingEducationViewController.init(title:detailText:symbolName:contentLayout:)(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC15ConversationKit36CallRecordingEducationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = a5;
  return CallRecordingEducationViewController.init(title:detailText:icon:contentLayout:)(v9, v11, a4, v13, a5, a6);
}

@end