@interface MUWebPlacecardSchemeHandler
- (_TtC6MapsUI27MUWebPlacecardSchemeHandler)init;
- (void)webView:(id)view startURLSchemeTask:(id)task;
@end

@implementation MUWebPlacecardSchemeHandler

- (void)webView:(id)view startURLSchemeTask:(id)task
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C566F02C(task);

  swift_unknownObjectRelease();
}

- (_TtC6MapsUI27MUWebPlacecardSchemeHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MUWebPlacecardSchemeHandler();
  return [(MUWebPlacecardSchemeHandler *)&v3 init];
}

@end