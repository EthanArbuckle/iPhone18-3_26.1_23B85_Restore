@interface NABridgedArticleViewerPageItemActionHandler
- (NABridgedArticleViewerPageItemActionHandler)init;
- (NABridgedArticleViewerPageItemActionHandler)initWithDelegate:(id)delegate;
@end

@implementation NABridgedArticleViewerPageItemActionHandler

- (NABridgedArticleViewerPageItemActionHandler)initWithDelegate:(id)delegate
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(NABridgedArticleViewerPageItemActionHandler *)&v6 init];
}

- (NABridgedArticleViewerPageItemActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end