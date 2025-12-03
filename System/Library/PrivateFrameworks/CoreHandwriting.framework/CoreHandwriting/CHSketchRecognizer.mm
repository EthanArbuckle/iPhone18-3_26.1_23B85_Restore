@interface CHSketchRecognizer
- (BOOL)enableCachingIfAvailable;
- (CGSize)minimumDrawingSize;
- (CHSketchRecognizer)init;
- (NSCharacterSet)activeCharacterSet;
- (id)sketchRecognitionResultsForDrawing:(id)drawing options:(id)options;
- (id)sketchRecognitionResultsForDrawing:(id)drawing options:(id)options shouldCancel:(id)cancel;
- (unint64_t)maxRecognitionResultCount;
- (void)setActiveCharacterSet:(id)set;
- (void)setMaxRecognitionResultCount:(unint64_t)count;
- (void)setMinimumDrawingSize:(CGSize)size;
@end

@implementation CHSketchRecognizer

- (CHSketchRecognizer)init
{
  v10.receiver = self;
  v10.super_class = CHSketchRecognizer;
  v2 = [(CHSketchRecognizer *)&v10 init];
  if (v2)
  {
    v3 = [CHRecognizer alloc];
    v7 = objc_msgSend_initWithMode_locale_(v3, v4, 3, 0, v5, v6);
    recognizer = v2->_recognizer;
    v2->_recognizer = v7;
  }

  return v2;
}

- (id)sketchRecognitionResultsForDrawing:(id)drawing options:(id)options
{
  drawingCopy = drawing;
  optionsCopy = options;
  if (self)
  {
    objc_msgSend_recognitionResultsForDrawing_options_(self->_recognizer, v7, drawingCopy, optionsCopy, v8, v9);
  }

  else
  {
    objc_msgSend_recognitionResultsForDrawing_options_(0, v7, drawingCopy, optionsCopy, v8, v9);
  }
  v11 = ;

  return v11;
}

- (id)sketchRecognitionResultsForDrawing:(id)drawing options:(id)options shouldCancel:(id)cancel
{
  drawingCopy = drawing;
  optionsCopy = options;
  cancelCopy = cancel;
  if (self)
  {
    objc_msgSend_recognitionResultsForDrawing_options_shouldCancel_(self->_recognizer, v10, drawingCopy, optionsCopy, cancelCopy, v11);
  }

  else
  {
    objc_msgSend_recognitionResultsForDrawing_options_shouldCancel_(0, v10, drawingCopy, optionsCopy, cancelCopy, v11);
  }
  v13 = ;

  return v13;
}

- (unint64_t)maxRecognitionResultCount
{
  if (self)
  {
    self = self->_recognizer;
  }

  return objc_msgSend_maxRecognitionResultCount(self, a2, v2, v3, v4, v5);
}

- (void)setMaxRecognitionResultCount:(unint64_t)count
{
  if (self)
  {
    self = self->_recognizer;
  }

  objc_msgSend_setMaxRecognitionResultCount_(self, a2, count, v3, v4, v5);
}

- (CGSize)minimumDrawingSize
{
  if (self)
  {
    self = self->_recognizer;
  }

  objc_msgSend_minimumDrawingSize(self, a2, v2, v3, v4, v5);
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)setMinimumDrawingSize:(CGSize)size
{
  if (self)
  {
    self = self->_recognizer;
  }

  objc_msgSend_setMinimumDrawingSize_(self, a2, v3, v4, v5, v6, size.width, size.height);
}

- (BOOL)enableCachingIfAvailable
{
  if (self)
  {
    self = self->_recognizer;
  }

  return objc_msgSend_enableCachingIfAvailable(self, a2, v2, v3, v4, v5);
}

- (NSCharacterSet)activeCharacterSet
{
  if (self)
  {
    self = self->_recognizer;
  }

  v6 = objc_msgSend_activeCharacterSet(self, a2, v2, v3, v4, v5);

  return v6;
}

- (void)setActiveCharacterSet:(id)set
{
  setCopy = set;
  if (self)
  {
    recognizer = self->_recognizer;
  }

  else
  {
    recognizer = 0;
  }

  v9 = setCopy;
  objc_msgSend_setActiveCharacterSet_(recognizer, setCopy, setCopy, v5, v6, v7);
}

@end