@interface DOCTagEditorNewTagCell
- (NSString)currentNewTagInputText;
- (_TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell)initWithFrame:(CGRect)frame;
- (_TtP26DocumentManagerExecutables35DOCTagEditorCellTextEditingDelegate_)textEditingDelegate;
- (int64_t)newTagColor;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)buildMenuWithBuilder:(id)builder;
- (void)setCurrentNewTagInputText:(id)text;
- (void)setNewTagColor:(int64_t)color;
- (void)setTextEditingDelegate:(id)delegate;
- (void)updateContentConfiguration;
- (void)updateTagColorWith:(int64_t)with;
- (void)updateTagDotAccessoryViewForCurrentMode;
- (void)updateTextFieldLayoutWithText:(id)text;
@end

@implementation DOCTagEditorNewTagCell

- (_TtP26DocumentManagerExecutables35DOCTagEditorCellTextEditingDelegate_)textEditingDelegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setTextEditingDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_textEditingDelegate;
  swift_beginAccess();
  *(self + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)updateTagDotAccessoryViewForCurrentMode
{
  selfCopy = self;
  DOCTagEditorNewTagCell.updateTagDotAccessoryViewForCurrentMode()();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
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

- (void)setCurrentNewTagInputText:(id)text
{
  if (text)
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
  selfCopy = self;

  DOCTagEditorNewTagCell.currentNewTagInputText.didset();
}

- (int64_t)newTagColor
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_newTagColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNewTagColor:(int64_t)color
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell_newTagColor;
  swift_beginAccess();
  *(self + v5) = color;
}

- (void)updateTagColorWith:(int64_t)with
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *self) + 0x138);
  selfCopy = self;
  v5(with);
  (*((*v4 & *selfCopy) + 0xD8))();
}

- (void)buildMenuWithBuilder:(id)builder
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCTagEditorNewTagCell();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(DOCTagEditorNewTagCell *)&v5 buildMenuWithBuilder:builder];
  [builder removeMenuForIdentifier_];
  swift_unknownObjectRelease();
}

- (void)updateContentConfiguration
{
  selfCopy = self;
  DOCTagEditorNewTagCell.updateContentConfiguration()();
}

- (void)updateTextFieldLayoutWithText:(id)text
{
  if (text)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  DOCTagEditorNewTagCell.updateTextFieldLayout(text:)(v8);
}

- (_TtC26DocumentManagerExecutables22DOCTagEditorNewTagCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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