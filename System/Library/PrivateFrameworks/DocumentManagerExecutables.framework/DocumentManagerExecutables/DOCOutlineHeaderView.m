@interface DOCOutlineHeaderView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation DOCOutlineHeaderView

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCOutlineHeaderView();
  v2 = v3.receiver;
  [(DOCOutlineHeaderView *)&v3 prepareForReuse];
  (*((*MEMORY[0x277D85000] & *v2) + 0x168))(0);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  DOCOutlineHeaderView.updateConfiguration(using:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCOutlineHeaderView.apply(_:)(v4);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCOutlineHeaderView();
  v4 = a3;
  v5 = v8.receiver;
  v6 = [(DOCOutlineHeaderView *)&v8 preferredLayoutAttributesFittingAttributes:v4];
  [v6 setZIndex_];
  [v6 setAlpha_];

  return v6;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v7 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0xC0);
  v8 = self;
  v9 = v7();
  [v9 systemLayoutSizeFittingSize_];
  v11 = v10;

  v12 = width;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  DOCOutlineHeaderView.layoutSubviews()();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  DOCOutlineHeaderView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

@end