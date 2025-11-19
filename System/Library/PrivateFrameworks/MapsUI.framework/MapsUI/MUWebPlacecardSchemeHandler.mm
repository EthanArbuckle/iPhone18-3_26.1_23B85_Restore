@interface MUWebPlacecardSchemeHandler
- (_TtC6MapsUI27MUWebPlacecardSchemeHandler)init;
- (void)webView:(id)a3 startURLSchemeTask:(id)a4;
@end

@implementation MUWebPlacecardSchemeHandler

- (void)webView:(id)a3 startURLSchemeTask:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1C566F02C(a4);

  swift_unknownObjectRelease();
}

- (_TtC6MapsUI27MUWebPlacecardSchemeHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MUWebPlacecardSchemeHandler();
  return [(MUWebPlacecardSchemeHandler *)&v3 init];
}

@end