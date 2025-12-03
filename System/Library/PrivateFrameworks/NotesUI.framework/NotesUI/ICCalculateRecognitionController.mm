@interface ICCalculateRecognitionController
- (BOOL)insertsResults;
- (ICCalculateRecognitionController)init;
- (int64_t)previewBehavior;
- (void)addErrorInteraction;
- (void)commitPreviewedResultAtRange:(_NSRange)range asLiteral:(BOOL)literal;
- (void)didInsertString:(id)string atRange:(_NSRange)range;
- (void)didUnmarkString:(id)string atRange:(_NSRange)range;
- (void)discardPreviewedResult;
- (void)insertLiteralResultAtRange:(_NSRange)range;
- (void)insertResultAtRange:(_NSRange)range;
- (void)previewResultAtRange:(_NSRange)range;
- (void)setInsertsResults:(BOOL)results;
- (void)setPreviewBehavior:(int64_t)behavior;
- (void)willUpdateMarkedText:(id)text;
@end

@implementation ICCalculateRecognitionController

- (void)setInsertsResults:(BOOL)results
{
  v5 = OBJC_IVAR___ICCalculateRecognitionController_insertsResults;
  swift_beginAccess();
  *(self + v5) = results;
}

- (void)setPreviewBehavior:(int64_t)behavior
{
  v5 = OBJC_IVAR___ICCalculateRecognitionController_previewBehavior;
  swift_beginAccess();
  *(self + v5) = behavior;
  [(ICCalculateRecognitionController *)self discardPreviewedResult];
}

- (void)discardPreviewedResult
{
  selfCopy = self;
  ICCalculateRecognitionController.discardPreviewedResult()();
}

- (void)addErrorInteraction
{
  selfCopy = self;
  v2 = sub_1D4187D10();
  sub_1D4187F2C();
}

- (void)didInsertString:(id)string atRange:(_NSRange)range
{
  location = range.location;
  v6 = sub_1D4419C54();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  v11.location = location;
  ICCalculateRecognitionController.didInsert(_:at:)(v10, v11);
}

- (void)didUnmarkString:(id)string atRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = sub_1D4419C54();
  v9 = v8;
  selfCopy = self;
  if (location != sub_1D4416D44() && (location & 0x8000000000000000) == 0)
  {
    sub_1D43454FC(v7, v9, location, length, 1);
  }
}

- (void)willUpdateMarkedText:(id)text
{
  v4 = sub_1D4416E94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4416E54();
  selfCopy = self;
  sub_1D4345E94();

  (*(v5 + 8))(v7, v4);
}

- (BOOL)insertsResults
{
  v3 = OBJC_IVAR___ICCalculateRecognitionController_insertsResults;
  swift_beginAccess();
  return *(self + v3);
}

- (void)insertResultAtRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v5.location = location;
  v5.length = length;
  ICCalculateRecognitionController.insertResult(at:)(v5);
}

- (void)insertLiteralResultAtRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v5.location = location;
  v5.length = length;
  ICCalculateRecognitionController.insertLiteralResult(at:)(v5);
}

- (int64_t)previewBehavior
{
  v3 = OBJC_IVAR___ICCalculateRecognitionController_previewBehavior;
  swift_beginAccess();
  return *(self + v3);
}

- (void)previewResultAtRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v5.location = location;
  v5.length = length;
  ICCalculateRecognitionController.previewResult(at:)(v5);
}

- (void)commitPreviewedResultAtRange:(_NSRange)range asLiteral:(BOOL)literal
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v7.location = location;
  v7.length = length;
  ICCalculateRecognitionController.commitPreviewedResult(at:asLiteral:)(v7, literal);
}

- (ICCalculateRecognitionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end