@interface ControlIconDragPreview
- (SBIcon)icon;
- (_TtC15ControlCenterUI22ControlIconDragPreview)initWithFrame:(CGRect)frame;
- (id)cleanUpHandler;
- (id)delayCleanUpForReason:(id)reason;
- (void)draggingSourceDroppedWithOperation:(unint64_t)operation;
- (void)dropDestinationAnimationCompleted;
- (void)layoutSubviews;
- (void)setCleanUpHandler:(id)handler;
- (void)setDragState:(unint64_t)state;
- (void)setIconViewCustomIconImageViewController:(id)controller;
- (void)setIconViewDelegate:(id)delegate;
- (void)setIconViewListLayoutProvider:(id)provider;
@end

@implementation ControlIconDragPreview

- (id)cleanUpHandler
{
  if (*(self + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_cleanUpHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_cleanUpHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_cleanUpHandler);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_21EA4AF68;
    v5[3] = &block_descriptor_89;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCleanUpHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_21EA4C65C;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_cleanUpHandler);
  v8 = *(self + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_cleanUpHandler);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_21E9FFAF0(v8);
}

- (void)setDragState:(unint64_t)state
{
  selfCopy = self;
  sub_21EA4B0D8(state);
}

- (SBIcon)icon
{
  icon = [*(self + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView) icon];

  return icon;
}

- (void)setIconViewListLayoutProvider:(id)provider
{
  v3 = *(self + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView);
  if (v3)
  {
    [v3 setListLayoutProvider_];
  }
}

- (void)setIconViewCustomIconImageViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21EA4B434(controller);
}

- (void)setIconViewDelegate:(id)delegate
{
  swift_unknownObjectWeakAssign();
  v5 = *(self + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView);

  [v5 setDelegate_];
}

- (void)draggingSourceDroppedWithOperation:(unint64_t)operation
{
  selfCopy = self;
  v3 = sub_21EA4B98C();
  v4 = [v3 count];

  if (v4)
  {
    v5 = selfCopy;
    *(selfCopy + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_isDelayingCleanup) = 1;
  }

  else
  {
    sub_21EA4BCE4();
    v5 = selfCopy;
  }
}

- (void)dropDestinationAnimationCompleted
{
  selfCopy = self;
  sub_21EA4B674();
}

- (id)delayCleanUpForReason:(id)reason
{
  v4 = sub_21EAA8E00();
  v6 = v5;
  v7 = type metadata accessor for ControlIconDragPreviewDelayCleanupAssertion();
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR____TtC15ControlCenterUI43ControlIconDragPreviewDelayCleanupAssertion_isInvalidated] = 0;
  *&v8[OBJC_IVAR____TtC15ControlCenterUI43ControlIconDragPreviewDelayCleanupAssertion_dragPreview] = self;
  v9 = &v8[OBJC_IVAR____TtC15ControlCenterUI43ControlIconDragPreviewDelayCleanupAssertion_reason];
  *v9 = v4;
  v9[1] = v6;
  v14.receiver = v8;
  v14.super_class = v7;
  selfCopy = self;

  v11 = [(ControlIconDragPreview *)&v14 init];
  v12 = sub_21EA4B98C();
  [v12 addObject_];

  return v11;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21EA4B808();
}

- (_TtC15ControlCenterUI22ControlIconDragPreview)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end