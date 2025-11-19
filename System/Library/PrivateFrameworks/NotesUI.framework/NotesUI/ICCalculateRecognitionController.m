@interface ICCalculateRecognitionController
- (BOOL)insertsResults;
- (ICCalculateRecognitionController)init;
- (int64_t)previewBehavior;
- (void)addErrorInteraction;
- (void)commitPreviewedResultAtRange:(_NSRange)a3 asLiteral:(BOOL)a4;
- (void)didInsertString:(id)a3 atRange:(_NSRange)a4;
- (void)didUnmarkString:(id)a3 atRange:(_NSRange)a4;
- (void)discardPreviewedResult;
- (void)insertLiteralResultAtRange:(_NSRange)a3;
- (void)insertResultAtRange:(_NSRange)a3;
- (void)previewResultAtRange:(_NSRange)a3;
- (void)setInsertsResults:(BOOL)a3;
- (void)setPreviewBehavior:(int64_t)a3;
- (void)willUpdateMarkedText:(id)a3;
@end

@implementation ICCalculateRecognitionController

- (void)setInsertsResults:(BOOL)a3
{
  v5 = OBJC_IVAR___ICCalculateRecognitionController_insertsResults;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)setPreviewBehavior:(int64_t)a3
{
  v5 = OBJC_IVAR___ICCalculateRecognitionController_previewBehavior;
  swift_beginAccess();
  *(self + v5) = a3;
  [(ICCalculateRecognitionController *)self discardPreviewedResult];
}

- (void)discardPreviewedResult
{
  v2 = self;
  ICCalculateRecognitionController.discardPreviewedResult()();
}

- (void)addErrorInteraction
{
  v3 = self;
  v2 = sub_1D4187D10();
  sub_1D4187F2C();
}

- (void)didInsertString:(id)a3 atRange:(_NSRange)a4
{
  location = a4.location;
  v6 = sub_1D4419C54();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  v11.location = location;
  ICCalculateRecognitionController.didInsert(_:at:)(v10, v11);
}

- (void)didUnmarkString:(id)a3 atRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = sub_1D4419C54();
  v9 = v8;
  v10 = self;
  if (location != sub_1D4416D44() && (location & 0x8000000000000000) == 0)
  {
    sub_1D43454FC(v7, v9, location, length, 1);
  }
}

- (void)willUpdateMarkedText:(id)a3
{
  v4 = sub_1D4416E94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4416E54();
  v8 = self;
  sub_1D4345E94();

  (*(v5 + 8))(v7, v4);
}

- (BOOL)insertsResults
{
  v3 = OBJC_IVAR___ICCalculateRecognitionController_insertsResults;
  swift_beginAccess();
  return *(self + v3);
}

- (void)insertResultAtRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = self;
  v5.location = location;
  v5.length = length;
  ICCalculateRecognitionController.insertResult(at:)(v5);
}

- (void)insertLiteralResultAtRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = self;
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

- (void)previewResultAtRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = self;
  v5.location = location;
  v5.length = length;
  ICCalculateRecognitionController.previewResult(at:)(v5);
}

- (void)commitPreviewedResultAtRange:(_NSRange)a3 asLiteral:(BOOL)a4
{
  length = a3.length;
  location = a3.location;
  v8 = self;
  v7.location = location;
  v7.length = length;
  ICCalculateRecognitionController.commitPreviewedResult(at:asLiteral:)(v7, a4);
}

- (ICCalculateRecognitionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end