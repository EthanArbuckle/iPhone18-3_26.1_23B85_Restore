@interface WidgetIntentHandler
- (_TtC16IntentsExtension19WidgetIntentHandler)init;
@end

@implementation WidgetIntentHandler

- (_TtC16IntentsExtension19WidgetIntentHandler)init
{
  v3 = [objc_allocWithZone(EKEventStore) initWithEKOptions:0x2000];
  if (!v3)
  {
    v3 = [objc_allocWithZone(EKEventStore) init];
  }

  *(&self->super.isa + OBJC_IVAR____TtC16IntentsExtension19WidgetIntentHandler_eventStore) = v3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for WidgetIntentHandler();
  return [(WidgetIntentHandler *)&v5 init];
}

@end