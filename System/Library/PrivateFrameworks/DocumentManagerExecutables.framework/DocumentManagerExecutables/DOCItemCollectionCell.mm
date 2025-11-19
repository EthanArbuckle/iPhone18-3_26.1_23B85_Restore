@interface DOCItemCollectionCell
- (BOOL)accessibilityIsRenaming;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (NSString)description;
- (_TtC26DocumentManagerExecutables21DOCItemCollectionCell)initWithFrame:(CGRect)a3;
- (_TtC26DocumentManagerExecutables28DOCItemCollectionCellContent)cellContent;
- (id)accessibilityCellManager;
- (id)accessibilityTitleLabel;
- (id)accessibilityTitleString;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)didMoveToSuperview;
- (void)dragStateDidChange:(int64_t)a3;
- (void)prepareForReuse;
- (void)renameGesture:(id)a3;
- (void)setCellContent:(id)a3;
@end

@implementation DOCItemCollectionCell

- (_TtC26DocumentManagerExecutables28DOCItemCollectionCellContent)cellContent
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.super.isa + v3);
}

- (void)setCellContent:(id)a3
{
  v6 = a3;
  v5 = self;
  specialized DOCItemCollectionCell.cellContent.setter(a3);
}

- (NSString)description
{
  v2 = self;
  v3 = DOCItemCollectionCell.description.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (void)prepareForReuse
{
  v2 = self;
  DOCItemCollectionCell.prepareForReuse()();
}

- (_TtC26DocumentManagerExecutables21DOCItemCollectionCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v8 = (*(ObjectType + 616))(0, x, y, width, height);
  swift_deallocPartialClassInstance();
  return v8;
}

- (void)dragStateDidChange:(int64_t)a3
{
  v4 = self;
  DOCItemCollectionCell.dragStateDidChange(_:)(a3);
}

- (void)renameGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionCell.renameGesture(_:)(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.isa) + 0x1E0);
  v9 = a3;
  v10 = a4;
  v11 = self;
  v12 = v8();
  LOBYTE(a4) = static NSObject.== infix(_:_:)();

  if ((a4 & 1) != 0 && (v13 = [v10 locationInView_], v15 = v14, v17 = v16, (*((*v7 & v11->super.super.super.super.super.super.super.isa) + 0x2D0))(&v20, v13), (v21 & 1) == 0))
  {
    v22.x = v15;
    v22.y = v17;
    v18 = CGRectContainsPoint(v20, v22);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = DOCItemCollectionCell.gestureRecognizerShouldBegin(_:)(v4);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  v7 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.isa) + 0x1E0);
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = v7();
  LOBYTE(a3) = static NSObject.== infix(_:_:)();

  if (a3)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPanGestureRecognizer);
    v12 = [v9 isKindOfClass_];

    if (v12)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  v6 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.isa) + 0x1E0);
  v7 = a3;
  v8 = self;
  v9 = v6();
  LOBYTE(self) = static NSObject.== infix(_:_:)();

  return self & 1;
}

- (void)didMoveToSuperview
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for DOCItemCollectionCell();
  [(DOCItemCollectionCell *)&v2 didMoveToSuperview];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  DOCItemCollectionCell.updateConfiguration(using:)();

  (*(v5 + 8))(v8, v4);
}

- (id)accessibilityTitleLabel
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.isa) + 0x108);
  v3 = self;
  v4 = v2();

  return v4;
}

- (id)accessibilityTitleString
{
  v2 = self;
  v3 = DOCItemCollectionCell.accessibilityTitleString()();

  return v3;
}

- (id)accessibilityCellManager
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.isa) + 0x208);
  v3 = self;
  v4 = v2();

  return v4;
}

- (BOOL)accessibilityIsRenaming
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.isa) + 0x3A8);
  v3 = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

@end