@interface DOCItemCollectionOutlineCell
- (BOOL)expanded;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSArray)accessibilityCustomActions;
- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)a3;
- (NSString)accessibilityValue;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (int64_t)indentationLevel;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setExpanded:(BOOL)a3;
- (void)setIndentationLevel:(int64_t)a3;
@end

@implementation DOCItemCollectionOutlineCell

- (int64_t)indentationLevel
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(DOCItemCollectionOutlineCell *)&v3 indentationLevel];
}

- (void)setIndentationLevel:(int64_t)a3
{
  ObjectType = swift_getObjectType();
  v12.receiver = self;
  v12.super_class = ObjectType;
  v6 = self;
  [(DOCItemCollectionOutlineCell *)&v12 setIndentationLevel:a3];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v8 = *(&v6->super.super.super.super.super.super.super.super.isa + v7);
  v11.receiver = v6;
  v11.super_class = ObjectType;
  v9 = v8;
  v10 = [(DOCItemCollectionOutlineCell *)&v11 indentationLevel];
  (*((*MEMORY[0x277D85000] & *v9) + 0x300))(v10);
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v9 = *(&self->super.super.super.super.super.super.super.super.isa + v8);
  v10 = self;
  [v9 systemLayoutSizeFittingSize_];
  v12 = v11;

  v13 = DOCGridLayout.specIconWidth.modify(width, v12);
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionOutlineCell.apply(_:)(v4);
}

- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)a3
{
  v3 = self;
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
  v2 = self;
  DOCItemCollectionOutlineCell.layoutSubviews()();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  DOCItemCollectionOutlineCell.updateConfiguration(using:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (BOOL)expanded
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(_UICollectionViewListCell *)&v3 expanded];
}

- (void)setExpanded:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v11.receiver = self;
  v11.super_class = ObjectType;
  v6 = self;
  [(_UICollectionViewListCell *)&v11 setExpanded:v3];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  v8 = *(*(&v6->super.super.super.super.super.super.super.super.isa + v7) + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_expansionState);
  v10.receiver = v6;
  v10.super_class = ObjectType;

  v9 = [(_UICollectionViewListCell *)&v10 expanded];
  (*(*v8 + 168))(v9);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  v6 = [(DOCItemCollectionOutlineCell *)&v9 preferredLayoutAttributesFittingAttributes:v4];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
  swift_beginAccess();
  [*&v5[v7] setNeedsLayout];

  return v6;
}

- (NSString)accessibilityValue
{
  v2 = self;
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
  v2 = self;
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