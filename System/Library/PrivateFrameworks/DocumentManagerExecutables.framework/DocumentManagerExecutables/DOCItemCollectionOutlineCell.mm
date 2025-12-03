@interface DOCItemCollectionOutlineCell
- (BOOL)expanded;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSArray)accessibilityCustomActions;
- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)insets;
- (NSString)accessibilityValue;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (int64_t)indentationLevel;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setExpanded:(BOOL)expanded;
- (void)setIndentationLevel:(int64_t)level;
@end

@implementation DOCItemCollectionOutlineCell

- (int64_t)indentationLevel
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(DOCItemCollectionOutlineCell *)&v3 indentationLevel];
}

- (void)setIndentationLevel:(int64_t)level
{
  ObjectType = swift_getObjectType();
  v12.receiver = self;
  v12.super_class = ObjectType;
  selfCopy = self;
  [(DOCItemCollectionOutlineCell *)&v12 setIndentationLevel:level];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v8 = *(&selfCopy->super.super.super.super.super.super.super.super.isa + v7);
  v11.receiver = selfCopy;
  v11.super_class = ObjectType;
  v9 = v8;
  indentationLevel = [(DOCItemCollectionOutlineCell *)&v11 indentationLevel];
  (*((*MEMORY[0x277D85000] & *v9) + 0x300))(indentationLevel);
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(DOCItemCollectionCell *)&v7 prepareForReuse];
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v4 = *&v2[v3];
  v5 = *((*MEMORY[0x277D85000] & *v4) + 0x1F8);
  v6 = v4;
  v5(0);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v9 = *(&self->super.super.super.super.super.super.super.super.isa + v8);
  selfCopy = self;
  [v9 systemLayoutSizeFittingSize_];
  v12 = v11;

  v13 = DOCGridLayout.specIconWidth.modify(width, v12);
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  DOCItemCollectionOutlineCell.apply(_:)(attributesCopy);
}

- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)insets
{
  selfCopy = self;
  v4 = specialized DOCItemCollectionOutlineCell._preferredSeparatorInsets(forProposedInsets:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.trailing = v14;
  result.bottom = v13;
  result.leading = v12;
  result.top = v11;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  DOCItemCollectionOutlineCell.layoutSubviews()();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCItemCollectionOutlineCell.updateConfiguration(using:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (BOOL)expanded
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(_UICollectionViewListCell *)&v3 expanded];
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  ObjectType = swift_getObjectType();
  v11.receiver = self;
  v11.super_class = ObjectType;
  selfCopy = self;
  [(_UICollectionViewListCell *)&v11 setExpanded:expandedCopy];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v8 = *(*(&selfCopy->super.super.super.super.super.super.super.super.isa + v7) + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
  v10.receiver = selfCopy;
  v10.super_class = ObjectType;

  expanded = [(_UICollectionViewListCell *)&v10 expanded];
  (*(*v8 + 168))(expanded);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  attributesCopy = attributes;
  v5 = v9.receiver;
  v6 = [(DOCItemCollectionOutlineCell *)&v9 preferredLayoutAttributesFittingAttributes:attributesCopy];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  [*&v5[v7] setNeedsLayout];

  return v6;
}

- (NSString)accessibilityValue
{
  selfCopy = self;
  v3 = DOCItemCollectionOutlineCell.accessibilityValue.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x24C1FAD20](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = DOCItemCollectionOutlineCell.accessibilityCustomActions.getter();

  if (v3)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

@end