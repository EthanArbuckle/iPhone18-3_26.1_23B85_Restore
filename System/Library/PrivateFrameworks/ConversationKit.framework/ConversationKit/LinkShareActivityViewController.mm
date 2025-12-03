@interface LinkShareActivityViewController
- (_TtC15ConversationKit31LinkShareActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities;
- (void)_prepareActivity:(id)activity;
@end

@implementation LinkShareActivityViewController

- (_TtC15ConversationKit31LinkShareActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (activities)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIActivity);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  return LinkShareActivityViewController.init(activityItems:applicationActivities:)(v5, v6);
}

- (void)_prepareActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  LinkShareActivityViewController._prepare(_:)(activityCopy);
}

@end