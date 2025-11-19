@interface DOCItemCollectionGridCell
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC26DocumentManagerExecutables28DOCItemCollectionCellContent)cellContent;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)fittingImageViewDidLayout:(id)a3;
- (void)prepareForReuse;
- (void)setCellContent:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation DOCItemCollectionGridCell

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for DOCItemCollectionGridCell();
  v10.receiver = self;
  v10.super_class = v5;
  v6 = self;
  v7 = [(DOCItemCollectionGridCell *)&v10 isSelected];
  v9.receiver = v6;
  v9.super_class = v5;
  [(DOCItemCollectionGridCell *)&v9 setSelected:v3];
  if (v7 != [(DOCItemCollectionGridCell *)v6 isSelected])
  {
    v8 = (*((*MEMORY[0x277D85000] & v6->super.super.super.super.super.super.super.super.super.isa) + 0x208))();
    if (v8)
    {

      DOCItemCollectionGridCell.updateSelectionView()();
    }
  }
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  DOCItemCollectionGridCell.updateConfiguration(using:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCItemCollectionGridCell();
  v2 = v5.receiver;
  v3 = [(DOCItemCollectionCell *)&v5 prepareForReuse];
  v4 = MEMORY[0x24C1FDA70](v3);
  closure #1 in DOCItemCollectionGridCell.prepareForReuse()(v2);
  objc_autoreleasePoolPop(v4);
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  v8 = a4;
  v9 = specialized Collection.first.getter(v6);
  if (!v9 || (v10 = v9, [v9 locationInView_], v12 = v11, v10, (*((*MEMORY[0x277D85000] & v7->super.super.super.super.super.super.super.super.super.isa) + 0x2D0))(&v15), (v16 & 1) != 0) || CGRectGetMaxY(v15) >= v12)
  {
    isa = Set._bridgeToObjectiveC()().super.isa;

    v14.receiver = v7;
    v14.super_class = type metadata accessor for DOCItemCollectionGridCell();
    [(DOCItemCollectionGridCell *)&v14 touchesBegan:isa withEvent:v8];
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

- (void)setCellContent:(id)a3
{
  v6 = a3;
  v5 = self;
  specialized DOCItemCollectionGridCell.cellContent.setter(a3);
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  DOCItemCollectionGridCell.isHighlighted.setter(a3);
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCItemCollectionGridCell();
  return [(DOCItemCollectionGridCell *)&v8 pointInside:a4 withEvent:x, y];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  IsPad = DOCDeviceIsPad();
  v10 = type metadata accessor for DOCItemCollectionGridCell();
  if (!IsPad)
  {
    v15.receiver = v8;
    v15.super_class = v10;
    v11 = [(DOCItemCollectionGridCell *)&v15 hitTest:v7 withEvent:x, y];
    goto LABEL_6;
  }

  v14.receiver = v8;
  v14.super_class = v10;
  v11 = [(DOCItemCollectionGridCell *)&v14 hitTest:v7 withEvent:x, y];
  if (!v11)
  {
LABEL_6:

    goto LABEL_7;
  }

  v12 = (*((*MEMORY[0x277D85000] & v8->super.super.super.super.super.super.super.super.super.isa) + 0x300))(x, y);

  if (v12)
  {
    goto LABEL_8;
  }

  v8 = v11;
  v11 = 0;
LABEL_7:

LABEL_8:

  return v11;
}

- (void)fittingImageViewDidLayout:(id)a3
{
  v3 = self;
  DOCItemCollectionGridCell.layoutBackgroundStateViewIfNeeded()();
}

@end