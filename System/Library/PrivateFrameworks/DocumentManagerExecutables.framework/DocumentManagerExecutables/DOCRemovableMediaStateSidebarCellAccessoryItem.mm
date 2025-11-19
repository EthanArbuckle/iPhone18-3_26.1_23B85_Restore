@interface DOCRemovableMediaStateSidebarCellAccessoryItem
- (_TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
@end

@implementation DOCRemovableMediaStateSidebarCellAccessoryItem

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCRemovableMediaStateSidebarCellAccessoryItem();
  v2 = v3.receiver;
  [(DOCRemovableMediaStateSidebarCellAccessoryItem *)&v3 didMoveToSuperview];
  DOCRemovableMediaStateSidebarCellAccessoryItem.updateViews(state:)([*&v2[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingOperation] operationState]);
}

- (_TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end