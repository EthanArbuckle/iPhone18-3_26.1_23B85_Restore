@interface DOCInteractionManager
+ (id)sharedManagerFor:(id)for;
+ (void)clearSharedControllerFor:(id)for;
+ (void)setSharedManagerWith:(id)with to:(id)to;
- (_TtC26DocumentManagerExecutables21DOCInteractionManager)init;
@end

@implementation DOCInteractionManager

+ (id)sharedManagerFor:(id)for
{
  forCopy = for;
  v5 = specialized static DOCInteractionManager.sharedManager(for:)(for);

  return v5;
}

+ (void)clearSharedControllerFor:(id)for
{
  forCopy = for;
  specialized static DOCInteractionManager.clearSharedController(for:)(for);
}

+ (void)setSharedManagerWith:(id)with to:(id)to
{
  withCopy = with;
  toCopy = to;
  specialized static DOCInteractionManager.setSharedManager(with:to:)(withCopy);
}

- (_TtC26DocumentManagerExecutables21DOCInteractionManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCInteractionManager_lastOpenedNode) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCInteractionManager_lastSelectedNode) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCInteractionManager();
  return [(DOCInteractionManager *)&v3 init];
}

@end