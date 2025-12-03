@interface DOCItemCollectionGridCell
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC26DocumentManagerExecutables28DOCItemCollectionCellContent)cellContent;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)fittingImageViewDidLayout:(id)layout;
- (void)prepareForReuse;
- (void)setCellContent:(id)content;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation DOCItemCollectionGridCell

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = type metadata accessor for DOCItemCollectionGridCell();
  v10.receiver = self;
  v10.super_class = v5;
  selfCopy = self;
  isSelected = [(DOCItemCollectionGridCell *)&v10 isSelected];
  v9.receiver = selfCopy;
  v9.super_class = v5;
  [(DOCItemCollectionGridCell *)&v9 setSelected:selectedCopy];
  if (isSelected != [(DOCItemCollectionGridCell *)selfCopy isSelected])
  {
    v8 = (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.super.super.super.super.super.super.isa) + 0x208))();
    if (v8)
    {

      DOCItemCollectionGridCell.updateSelectionView()();
    }
  }
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCItemCollectionGridCell.updateConfiguration(using:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCItemCollectionGridCell();
  v2 = v5.receiver;
  prepareForReuse = [(DOCItemCollectionCell *)&v5 prepareForReuse];
  v4 = MEMORY[0x24C1FDA70](prepareForReuse);
  closure #1 in DOCItemCollectionGridCell.prepareForReuse()(v2);
  objc_autoreleasePoolPop(v4);
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  eventCopy = event;
  v9 = specialized Collection.first.getter(v6);
  if (!v9 || (v10 = v9, [v9 locationInView_], v12 = v11, v10, (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.super.super.super.super.super.super.isa) + 0x2D0))(&v15), (v16 & 1) != 0) || CGRectGetMaxY(v15) >= v12)
  {
    isa = Set._bridgeToObjectiveC()().super.isa;

    v14.receiver = selfCopy;
    v14.super_class = type metadata accessor for DOCItemCollectionGridCell();
    [(DOCItemCollectionGridCell *)&v14 touchesBegan:isa withEvent:eventCopy];
  }

  else
  {
  }
}

- (_TtC26DocumentManagerExecutables28DOCItemCollectionCellContent)cellContent
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.super.super.super.isa + v3);
}

- (void)setCellContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  specialized DOCItemCollectionGridCell.cellContent.setter(content);
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  DOCItemCollectionGridCell.isHighlighted.setter(highlighted);
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCItemCollectionGridCell();
  return [(DOCItemCollectionGridCell *)&v8 pointInside:event withEvent:x, y];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  IsPad = DOCDeviceIsPad();
  v10 = type metadata accessor for DOCItemCollectionGridCell();
  if (!IsPad)
  {
    v15.receiver = selfCopy;
    v15.super_class = v10;
    v11 = [(DOCItemCollectionGridCell *)&v15 hitTest:eventCopy withEvent:x, y];
    goto LABEL_6;
  }

  v14.receiver = selfCopy;
  v14.super_class = v10;
  v11 = [(DOCItemCollectionGridCell *)&v14 hitTest:eventCopy withEvent:x, y];
  if (!v11)
  {
LABEL_6:

    goto LABEL_7;
  }

  v12 = (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.super.super.super.super.super.super.isa) + 0x300))(x, y);

  if (v12)
  {
    goto LABEL_8;
  }

  selfCopy = v11;
  v11 = 0;
LABEL_7:

LABEL_8:

  return v11;
}

- (void)fittingImageViewDidLayout:(id)layout
{
  selfCopy = self;
  DOCItemCollectionGridCell.layoutBackgroundStateViewIfNeeded()();
}

@end