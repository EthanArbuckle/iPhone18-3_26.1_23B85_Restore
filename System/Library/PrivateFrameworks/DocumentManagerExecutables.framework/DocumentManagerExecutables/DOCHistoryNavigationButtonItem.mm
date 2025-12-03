@interface DOCHistoryNavigationButtonItem
- (BOOL)isEnabled;
- (_TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem)init;
- (_TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem)initWithCoder:(id)coder;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation DOCHistoryNavigationButtonItem

- (_TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_direction) = 2;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_canEnable) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_canPerformShiftAction) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_direction) = 2;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_canEnable) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHistoryNavigationButtonItem_canPerformShiftAction) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCHistoryNavigationButtonItem();
  return [(DOCHistoryNavigationButtonItem *)&v3 init];
}

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCHistoryNavigationButtonItem();
  return [(DOCHistoryNavigationButtonItem *)&v3 isEnabled];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCHistoryNavigationButtonItem();
  [(DOCHistoryNavigationButtonItem *)&v4 setEnabled:enabledCopy];
}

@end