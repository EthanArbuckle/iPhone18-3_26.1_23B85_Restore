@interface DOCOutlineHeaderView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)applyLayoutAttributes:(id)attributes;
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

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCOutlineHeaderView.updateConfiguration(using:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  DOCOutlineHeaderView.apply(_:)(attributesCopy);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCOutlineHeaderView();
  attributesCopy = attributes;
  v5 = v8.receiver;
  v6 = [(DOCOutlineHeaderView *)&v8 preferredLayoutAttributesFittingAttributes:attributesCopy];
  [v6 setZIndex_];
  [v6 setAlpha_];

  return v6;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  v7 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0xC0);
  selfCopy = self;
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
  selfCopy = self;
  DOCOutlineHeaderView.layoutSubviews()();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  DOCOutlineHeaderView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

@end