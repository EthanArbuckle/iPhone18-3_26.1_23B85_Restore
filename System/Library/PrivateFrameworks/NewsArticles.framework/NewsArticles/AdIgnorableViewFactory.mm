@interface AdIgnorableViewFactory
- (_TtC12NewsArticles22AdIgnorableViewFactory)init;
- (id)createView;
@end

@implementation AdIgnorableViewFactory

- (id)createView
{
  type metadata accessor for AdIgnorableView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  return v2;
}

- (_TtC12NewsArticles22AdIgnorableViewFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AdIgnorableViewFactory *)&v3 init];
}

@end