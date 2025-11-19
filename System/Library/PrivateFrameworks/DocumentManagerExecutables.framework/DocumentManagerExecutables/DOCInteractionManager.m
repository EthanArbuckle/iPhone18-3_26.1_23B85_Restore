@interface DOCInteractionManager
+ (id)sharedManagerFor:(id)a3;
+ (void)clearSharedControllerFor:(id)a3;
+ (void)setSharedManagerWith:(id)a3 to:(id)a4;
- (_TtC26DocumentManagerExecutables21DOCInteractionManager)init;
@end

@implementation DOCInteractionManager

+ (id)sharedManagerFor:(id)a3
{
  v4 = a3;
  v5 = specialized static DOCInteractionManager.sharedManager(for:)(a3);

  return v5;
}

+ (void)clearSharedControllerFor:(id)a3
{
  v4 = a3;
  specialized static DOCInteractionManager.clearSharedController(for:)(a3);
}

+ (void)setSharedManagerWith:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  specialized static DOCInteractionManager.setSharedManager(with:to:)(v5);
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