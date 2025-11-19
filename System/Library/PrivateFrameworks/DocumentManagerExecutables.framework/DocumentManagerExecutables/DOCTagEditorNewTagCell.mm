@interface DOCTagEditorNewTagCell
- (NSString)currentNewTagInputText;
- (_TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell)initWithFrame:(CGRect)a3;
- (_TtP26DocumentManagerExecutables35DOCTagEditorCellTextEditingDelegate_)textEditingDelegate;
- (int64_t)newTagColor;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)setCurrentNewTagInputText:(id)a3;
- (void)setNewTagColor:(int64_t)a3;
- (void)setTextEditingDelegate:(id)a3;
- (void)updateContentConfiguration;
- (void)updateTagColorWith:(int64_t)a3;
- (void)updateTagDotAccessoryViewForCurrentMode;
- (void)updateTextFieldLayoutWithText:(id)a3;
@end

@implementation DOCTagEditorNewTagCell

- (_TtP26DocumentManagerExecutables35DOCTagEditorCellTextEditingDelegate_)textEditingDelegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setTextEditingDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_textEditingDelegate;
  swift_beginAccess();
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)updateTagDotAccessoryViewForCurrentMode
{
  v2 = self;
  DOCTagEditorNewTagCell.updateTagDotAccessoryViewForCurrentMode()();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  DOCTagEditorNewTagCell.updateConfiguration(using:)();

  (*(v5 + 8))(v8, v4);
}

- (NSString)currentNewTagInputText
{
  v2 = (self + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_currentNewTagInputText);
  swift_beginAccess();
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;

    v5 = MEMORY[0x24C1FAD20](v4, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCurrentNewTagInputText:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_currentNewTagInputText);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
  v8 = self;

  DOCTagEditorNewTagCell.currentNewTagInputText.didset();
}

- (int64_t)newTagColor
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_newTagColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNewTagColor:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_newTagColor;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)updateTagColorWith:(int64_t)a3
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *self) + 0x138);
  v6 = self;
  v5(a3);
  (*((*v4 & *v6) + 0xD8))();
}

- (void)buildMenuWithBuilder:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCTagEditorNewTagCell();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(DOCTagEditorNewTagCell *)&v5 buildMenuWithBuilder:a3];
  [a3 removeMenuForIdentifier_];
  swift_unknownObjectRelease();
}

- (void)updateContentConfiguration
{
  v2 = self;
  DOCTagEditorNewTagCell.updateContentConfiguration()();
}

- (void)updateTextFieldLayoutWithText:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  DOCTagEditorNewTagCell.updateTextFieldLayout(text:)(v8);
}

- (_TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_textEditingDelegate) = 0;
  v7 = (self + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_currentNewTagInputText);
  *v7 = 0;
  v7[1] = 0;
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_newTagColor) = 6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCTagEditorNewTagCell();
  return [(DOCTagEditorTagCell *)&v9 initWithFrame:x, y, width, height];
}

@end