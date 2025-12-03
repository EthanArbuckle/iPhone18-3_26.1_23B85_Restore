@interface DOCItemRenameTextView
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (NSArray)keyCommands;
- (NSString)text;
- (UIButton)accessibilityClearButton;
- (_TtC26DocumentManagerExecutables21DOCItemRenameTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)clearText;
- (void)didMoveToSuperview;
- (void)editExtension:(id)extension;
- (void)endEdtingCell;
- (void)installClearButton;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setText:(id)text;
- (void)textViewDidChange:(id)change;
- (void)undoClearTextWithPreviousText:(id)text;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation DOCItemRenameTextView

- (void)setBackgroundColor:(id)color
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(DOCItemRenameTextView *)&v4 setBackgroundColor:color];
}

- (void)layoutSubviews
{
  selfCopy = self;
  DOCItemRenameTextView.layoutSubviews()();
}

- (BOOL)becomeFirstResponder
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isBecomingFirstResponder;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v4) = 1;
  v7.receiver = self;
  v7.super_class = ObjectType;
  selfCopy = self;
  LOBYTE(ObjectType) = [(DOCItemRenameTextView *)&v7 becomeFirstResponder];
  *(&self->super.super.super.super.super.isa + v4) = 0;

  return ObjectType;
}

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  selfCopy = self;
  DOCItemRenameTextView.willMove(toSuperview:)(superview);
}

- (void)editExtension:(id)extension
{
  if (extension)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  DOCItemRenameTextView.editExtension(_:)();

  outlined destroy of Any?(v6);
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(DOCItemRenameTextView *)&v5 didMoveToSuperview];
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_backgroundStyle;
  swift_beginAccess();
  if (v2[v3] == 1)
  {
    DOCItemRenameTextView.installBackgroundView()();
  }

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_showsClearButton;
  swift_beginAccess();
  if (v2[v4] == 1)
  {
    DOCItemRenameTextView.installClearButton()();
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = DOCItemRenameTextView.canPerformAction(_:withSender:)(action, v10);

  outlined destroy of Any?(v10);
  return v8 & 1;
}

- (void)installClearButton
{
  selfCopy = self;
  DOCItemRenameTextView.installClearButton()();
}

- (void)endEdtingCell
{
  selfCopy = self;
  DOCItemRenameTextView.sendEndEditingToCell(saveChanges:)(1);
}

- (NSArray)keyCommands
{
  selfCopy = self;
  v3 = DOCItemRenameTextView.keyCommands.getter();

  if (v3)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  viewCopy = view;
  selfCopy = self;
  markedTextRange = [viewCopy markedTextRange];
  if (markedTextRange)
  {

    return 1;
  }

  if (v7 == 10 && v9 == 0xE100000000000000)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {

      return 1;
    }
  }

  DOCItemRenameTextView.sendEndEditingToCell(saveChanges:)(1);

  return 0;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  DOCItemRenameTextView.textViewDidChange(_:)(changeCopy);
}

- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  specialized DOCItemRenameTextView.textView(_:editMenuForTextIn:suggestedActions:)(v7);
  v11 = v10;

  return v11;
}

- (void)clearText
{
  selfCopy = self;
  DOCItemRenameTextView.clearText()();
}

- (void)undoClearTextWithPreviousText:(id)text
{
  ObjectType = swift_getObjectType();
  textCopy = text;
  selfCopy = self;
  undoManager = [(DOCItemRenameTextView *)selfCopy undoManager];
  if (undoManager)
  {
    v9 = undoManager;
    [undoManager registerUndoWithTarget:selfCopy selector:sel_clearText object:0];
  }

  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  [(DOCItemRenameTextView *)&v10 setText:textCopy];
}

- (UIButton)accessibilityClearButton
{
  selfCopy = self;
  v3 = DOCItemRenameTextView.clearButton.getter();

  return v3;
}

- (_TtC26DocumentManagerExecutables21DOCItemRenameTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)text
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  text = [(DOCItemRenameTextView *)&v10 text];
  if (text)
  {
    v4 = text;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = MEMORY[0x24C1FAD20](v5, v7);
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (void)setText:(id)text
{
  ObjectType = swift_getObjectType();
  if (text)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    selfCopy = self;
    text = MEMORY[0x24C1FAD20](v6, v8);
  }

  else
  {
    selfCopy2 = self;
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  [(DOCItemRenameTextView *)&v11 setText:text];
}

@end