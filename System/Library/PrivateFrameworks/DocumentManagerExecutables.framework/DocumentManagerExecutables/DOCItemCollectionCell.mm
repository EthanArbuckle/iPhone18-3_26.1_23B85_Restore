@interface DOCItemCollectionCell
- (BOOL)accessibilityIsRenaming;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (NSString)description;
- (_TtC26DocumentManagerExecutables21DOCItemCollectionCell)initWithFrame:(CGRect)frame;
- (_TtC26DocumentManagerExecutables28DOCItemCollectionCellContent)cellContent;
- (id)accessibilityCellManager;
- (id)accessibilityTitleLabel;
- (id)accessibilityTitleString;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)didMoveToSuperview;
- (void)dragStateDidChange:(int64_t)change;
- (void)prepareForReuse;
- (void)renameGesture:(id)gesture;
- (void)setCellContent:(id)content;
@end

@implementation DOCItemCollectionCell

- (_TtC26DocumentManagerExecutables28DOCItemCollectionCellContent)cellContent
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.super.isa + v3);
}

- (void)setCellContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  specialized DOCItemCollectionCell.cellContent.setter(content);
}

- (NSString)description
{
  selfCopy = self;
  v3 = DOCItemCollectionCell.description.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (void)prepareForReuse
{
  selfCopy = self;
  DOCItemCollectionCell.prepareForReuse()();
}

- (_TtC26DocumentManagerExecutables21DOCItemCollectionCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v8 = (*(ObjectType + 616))(0, x, y, width, height);
  swift_deallocPartialClassInstance();
  return v8;
}

- (void)dragStateDidChange:(int64_t)change
{
  selfCopy = self;
  DOCItemCollectionCell.dragStateDidChange(_:)(change);
}

- (void)renameGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  DOCItemCollectionCell.renameGesture(_:)(gestureCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.isa) + 0x1E0);
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v12 = v8();
  LOBYTE(touch) = static NSObject.== infix(_:_:)();

  if ((touch & 1) != 0 && (v13 = [touchCopy locationInView_], v15 = v14, v17 = v16, (*((*v7 & selfCopy->super.super.super.super.super.super.super.isa) + 0x2D0))(&v20, v13), (v21 & 1) == 0))
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = DOCItemCollectionCell.gestureRecognizerShouldBegin(_:)(beginCopy);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  v7 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.isa) + 0x1E0);
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v11 = v7();
  LOBYTE(recognizer) = static NSObject.== infix(_:_:)();

  if (recognizer)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIPanGestureRecognizer);
    isKindOfClass_ = [gestureRecognizerCopy isKindOfClass_];

    if (isKindOfClass_)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
  v6 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.isa) + 0x1E0);
  recognizerCopy = recognizer;
  selfCopy = self;
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

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCItemCollectionCell.updateConfiguration(using:)();

  (*(v5 + 8))(v8, v4);
}

- (id)accessibilityTitleLabel
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.isa) + 0x108);
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (id)accessibilityTitleString
{
  selfCopy = self;
  v3 = DOCItemCollectionCell.accessibilityTitleString()();

  return v3;
}

- (id)accessibilityCellManager
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.isa) + 0x208);
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (BOOL)accessibilityIsRenaming
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.isa) + 0x3A8);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

@end