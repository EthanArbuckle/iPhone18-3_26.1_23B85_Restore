@interface DOCTokenChainView
- (BOOL)becomeFirstResponder;
- (BOOL)hasText;
- (BOOL)resignFirstResponder;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)firstRectForRange:(id)range;
- (id)endOfDocument;
- (id)selectionRectsForRange:(id)range;
- (void)deleteBackward;
- (void)directionKeyCommand:(id)command;
- (void)insertText:(id)text;
@end

@implementation DOCTokenChainView

- (id)endOfDocument
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75C20]) init];

  return v0;
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  DOCTokenChainView.becomeFirstResponder()();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)resignFirstResponder
{
  selfCopy = self;
  DOCTokenChainView.resignFirstResponder()();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)hasText
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_tokens;
  swift_beginAccess();
  return (*(&self->super.super.super.super.isa + v3))[2] != 0;
}

- (void)insertText:(id)text
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  DOCTokenChainView.insertText(_:)(v4, v6);
}

- (void)deleteBackward
{
  selfCopy = self;
  DOCTokenChainView.deleteSelectedTokens()();
}

- (void)directionKeyCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  specialized DOCTokenChainView.directionKeyCommand(_:)();
}

- (CGRect)firstRectForRange:(id)range
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)caretRectForPosition:(id)position
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)selectionRectsForRange:(id)range
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITextSelectionRect);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end