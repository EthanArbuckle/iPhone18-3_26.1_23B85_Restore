@interface DOCDragMonitor
- (BOOL)isItemCollectionDragActive;
- (_TtC26DocumentManagerExecutables14DOCDragMonitor)init;
- (void)setIsItemCollectionDragActive:(BOOL)a3;
@end

@implementation DOCDragMonitor

- (BOOL)isItemCollectionDragActive
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCDragMonitor_isItemCollectionDragActive;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsItemCollectionDragActive:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCDragMonitor_isItemCollectionDragActive;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (_TtC26DocumentManagerExecutables14DOCDragMonitor)init
{
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCDragMonitor_isItemCollectionDragActive) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCDragMonitor();
  return [(DOCDragMonitor *)&v3 init];
}

@end