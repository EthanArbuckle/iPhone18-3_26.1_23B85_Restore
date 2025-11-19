@interface LinkShareActivityViewController
- (_TtC15ConversationKit31LinkShareActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4;
- (void)_prepareActivity:(id)a3;
@end

@implementation LinkShareActivityViewController

- (_TtC15ConversationKit31LinkShareActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
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

- (void)_prepareActivity:(id)a3
{
  v4 = a3;
  v5 = self;
  LinkShareActivityViewController._prepare(_:)(v4);
}

@end