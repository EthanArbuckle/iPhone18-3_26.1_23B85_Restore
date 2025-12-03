@interface CallRecordingEducationViewController
- (_TtC15ConversationKit36CallRecordingEducationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC15ConversationKit36CallRecordingEducationViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)handleTappedEducationScreenCancel;
- (void)handleTappedEducationScreenContinue;
@end

@implementation CallRecordingEducationViewController

- (void)handleTappedEducationScreenContinue
{
  selfCopy = self;
  CallRecordingEducationViewController.handleTappedEducationScreenContinue()();
}

- (void)handleTappedEducationScreenCancel
{
  selfCopy = self;
  CallRecordingEducationViewController.handleTappedEducationScreenCancel()();
}

- (_TtC15ConversationKit36CallRecordingEducationViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!text)
  {
    v13 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return CallRecordingEducationViewController.init(title:detailText:symbolName:contentLayout:)(v9, v11, text, v13, v14, v16, layout);
  }

  text = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return CallRecordingEducationViewController.init(title:detailText:symbolName:contentLayout:)(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC15ConversationKit36CallRecordingEducationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (text)
  {
    text = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  iconCopy = icon;
  return CallRecordingEducationViewController.init(title:detailText:icon:contentLayout:)(v9, v11, text, v13, icon, layout);
}

@end