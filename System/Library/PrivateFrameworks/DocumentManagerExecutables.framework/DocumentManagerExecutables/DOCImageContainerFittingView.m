@interface DOCImageContainerFittingView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (double)contentOffsetFromTop;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (void)fittingImageViewDidLayout:(id)a3;
- (void)layoutSubviews;
- (void)setContentOffsetFromTop:(double)a3;
- (void)thumbnailLoaded:(id)a3;
@end

@implementation DOCImageContainerFittingView

- (double)contentOffsetFromTop
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_contentOffsetFromTop;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setContentOffsetFromTop:(double)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCImageContainerFittingView_contentOffsetFromTop;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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
  v3 = self;
  v2();
  [(DOCImageContainerFittingView *)v3 systemLayoutSizeFittingSize:?];
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
  v3 = [(DOCImageContainerFittingView *)&v4 layoutSubviews];
  (*((*MEMORY[0x277D85000] & *v2) + 0x158))(v3);
  [v2 setContentOffsetFromTop_];
}

- (void)thumbnailLoaded:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = a3;
  swift_unknownObjectRetain_n();
  v6 = self;
  DOCRunInMainThread(_:)();

  swift_unknownObjectRelease();
}

- (void)fittingImageViewDidLayout:(id)a3
{
  v3 = self;
  DOCImageContainerFittingView.updateLayers()();
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  specialized DOCImageContainerFittingView.dragInteraction(_:itemsForBeginning:)(v6, a4);

  swift_unknownObjectRelease();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  v10 = specialized DOCImageContainerFittingView.dragInteraction(_:previewForLifting:session:)(v7);

  swift_unknownObjectRelease();

  return v10;
}

@end