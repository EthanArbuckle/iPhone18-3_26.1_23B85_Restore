@interface DOCFilenameTransitionCoordinator
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator)init;
- (void)animateTransition:(id)a3;
@end

@implementation DOCFilenameTransitionCoordinator

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnail) = 0;
  v4 = self + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_thumbnailStyle;
  *v4 = 0;
  v4[8] = 1;
  v5 = self + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_sourceRect;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitionCoordinator_group;
  *(&self->super.isa + v6) = dispatch_group_create();
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(DOCFilenameTransitionCoordinator *)&v8 init];
}

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  DOCFilenameTransitionCoordinator.animateTransition(using:)(a3);
  swift_unknownObjectRelease();
}

@end