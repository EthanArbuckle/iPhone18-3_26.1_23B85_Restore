@interface DOCTagEditorTagCell
- (BOOL)mixedSelection;
- (DOCTag)tagValue;
- (DOCTagDotView)tagDotView;
- (UIButton)tagDotButton;
- (_TtC26DocumentManagerExecutables19DOCTagEditorTagCell)initWithCoder:(id)a3;
- (void)setMixedSelection:(BOOL)a3;
- (void)setTagValue:(id)a3;
- (void)updateContentConfiguration;
- (void)updateTagDotAccessoryViewForCurrentMode;
- (void)updateTagDotImageForCurrentSelectionState;
@end

@implementation DOCTagEditorTagCell

- (DOCTag)tagValue
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagValue;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setTagValue:(id)a3
{
  v6 = a3;
  v5 = self;
  specialized DOCTagEditorTagCell.tagValue.setter(a3);
}

- (UIButton)tagDotButton
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagDotButton;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (DOCTagDotView)tagDotView
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagDotView;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (BOOL)mixedSelection
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_mixedSelection;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setMixedSelection:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_mixedSelection;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
  v6 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0xD0);
  v7 = self;
  v6();
}

- (_TtC26DocumentManagerExecutables19DOCTagEditorTagCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagValue) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagDotButton) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_tagDotView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCTagEditorTagCell_mixedSelection) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)updateTagDotImageForCurrentSelectionState
{
  v2 = self;
  DOCTagEditorTagCell.updateTagDotImageForCurrentSelectionState()();
}

- (void)updateTagDotAccessoryViewForCurrentMode
{
  v2 = self;
  DOCTagEditorTagCell.updateTagDotAccessoryViewForCurrentMode()();
}

- (void)updateContentConfiguration
{
  v2 = self;
  DOCTagEditorTagCell.updateContentConfiguration()();
}

@end