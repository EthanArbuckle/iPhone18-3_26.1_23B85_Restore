@interface DOCItemRenameTextView
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (NSArray)keyCommands;
- (NSString)text;
- (UIButton)accessibilityClearButton;
- (_TtC26DocumentManagerExecutables21DOCItemRenameTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)clearText;
- (void)didMoveToSuperview;
- (void)editExtension:(id)a3;
- (void)endEdtingCell;
- (void)installClearButton;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setText:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)undoClearTextWithPreviousText:(id)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation DOCItemRenameTextView

- (void)setBackgroundColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(DOCItemRenameTextView *)&v4 setBackgroundColor:a3];
}

- (void)layoutSubviews
{
  v2 = self;
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
  v5 = self;
  LOBYTE(ObjectType) = [(DOCItemRenameTextView *)&v7 becomeFirstResponder];
  *(&self->super.super.super.super.super.isa + v4) = 0;

  return ObjectType;
}

- (void)willMoveToSuperview:(id)a3
{
  v5 = a3;
  v6 = self;
  DOCItemRenameTextView.willMove(toSuperview:)(a3);
}

- (void)editExtension:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = DOCItemRenameTextView.canPerformAction(_:withSender:)(a3, v10);

  outlined destroy of Any?(v10);
  return v8 & 1;
}

- (void)installClearButton
{
  v2 = self;
  DOCItemRenameTextView.installClearButton()();
}

- (void)endEdtingCell
{
  v2 = self;
  DOCItemRenameTextView.sendEndEditingToCell(saveChanges:)(1);
}

- (NSArray)keyCommands
{
  v2 = self;
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

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = a3;
  v11 = self;
  v12 = [v10 markedTextRange];
  if (v12)
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

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemRenameTextView.textViewDidChange(_:)(v4);
}

- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = self;
  specialized DOCItemRenameTextView.textView(_:editMenuForTextIn:suggestedActions:)(v7);
  v11 = v10;

  return v11;
}

- (void)clearText
{
  v2 = self;
  DOCItemRenameTextView.clearText()();
}

- (void)undoClearTextWithPreviousText:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = a3;
  v7 = self;
  v8 = [(DOCItemRenameTextView *)v7 undoManager];
  if (v8)
  {
    v9 = v8;
    [v8 registerUndoWithTarget:v7 selector:sel_clearText object:0];
  }

  v10.receiver = v7;
  v10.super_class = ObjectType;
  [(DOCItemRenameTextView *)&v10 setText:v6];
}

- (UIButton)accessibilityClearButton
{
  v2 = self;
  v3 = DOCItemRenameTextView.clearButton.getter();

  return v3;
}

- (_TtC26DocumentManagerExecutables21DOCItemRenameTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
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
  v3 = [(DOCItemRenameTextView *)&v10 text];
  if (v3)
  {
    v4 = v3;
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

- (void)setText:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v9 = self;
    a3 = MEMORY[0x24C1FAD20](v6, v8);
  }

  else
  {
    v10 = self;
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  [(DOCItemRenameTextView *)&v11 setText:a3];
}

@end