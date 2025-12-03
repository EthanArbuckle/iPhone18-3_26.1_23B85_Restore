@interface DOCImageContainerFittingView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (double)contentOffsetFromTop;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (void)fittingImageViewDidLayout:(id)layout;
- (void)layoutSubviews;
- (void)setContentOffsetFromTop:(double)top;
- (void)thumbnailLoaded:(id)loaded;
@end

@implementation DOCImageContainerFittingView

- (double)contentOffsetFromTop
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_contentOffsetFromTop;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setContentOffsetFromTop:(double)top
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_contentOffsetFromTop;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = top;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v6 = DOCImageContainerFittingView.systemLayoutSizeFitting(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x120);
  selfCopy = self;
  v2();
  [(DOCImageContainerFittingView *)selfCopy systemLayoutSizeFittingSize:?];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCImageContainerFittingView();
  v2 = v4.receiver;
  layoutSubviews = [(DOCImageContainerFittingView *)&v4 layoutSubviews];
  (*((*MEMORY[0x277D85000] & *v2) + 0x158))(layoutSubviews);
  [v2 setContentOffsetFromTop_];
}

- (void)thumbnailLoaded:(id)loaded
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = loaded;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  DOCRunInMainThread(_:)();

  swift_unknownObjectRelease();
}

- (void)fittingImageViewDidLayout:(id)layout
{
  selfCopy = self;
  DOCImageContainerFittingView.updateLayers()();
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCImageContainerFittingView.dragInteraction(_:itemsForBeginning:)(interactionCopy, session);

  swift_unknownObjectRelease();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  interactionCopy = interaction;
  itemCopy = item;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = specialized DOCImageContainerFittingView.dragInteraction(_:previewForLifting:session:)(interactionCopy);

  swift_unknownObjectRelease();

  return v10;
}

@end