@interface CUIKCreateFamilyCalendarFlowControllerManagerImpl
- (UIViewController)viewController;
- (_TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl)init;
- (_TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl)initWithDelegate:(id)a3;
- (void)setViewController:(id)a3;
@end

@implementation CUIKCreateFamilyCalendarFlowControllerManagerImpl

- (_TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl)initWithDelegate:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl____lazy_storage___viewController) = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for CUIKCreateFamilyCalendarFlowControllerManagerImpl();
  return [(CUIKCreateFamilyCalendarFlowControllerManagerImpl *)&v5 init];
}

- (UIViewController)viewController
{
  v2 = self;
  v3 = sub_1CACB3E54();

  return v3;
}

- (void)setViewController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl____lazy_storage___viewController);
  *(&self->super.isa + OBJC_IVAR____TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl____lazy_storage___viewController) = a3;
  v3 = a3;
}

- (_TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end