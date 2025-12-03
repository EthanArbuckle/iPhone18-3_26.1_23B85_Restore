@interface CHClassifiableDrawing
- (CGRect)normalizationContext;
- (CHClassifiableDrawing)initWithDrawing:(id)drawing characterSet:(id)set expandCodePoints:(BOOL)points normalizationContext:(CGRect)context maxCandidateCount:(unint64_t)count;
@end

@implementation CHClassifiableDrawing

- (CHClassifiableDrawing)initWithDrawing:(id)drawing characterSet:(id)set expandCodePoints:(BOOL)points normalizationContext:(CGRect)context maxCandidateCount:(unint64_t)count
{
  height = context.size.height;
  width = context.size.width;
  y = context.origin.y;
  x = context.origin.x;
  drawingCopy = drawing;
  setCopy = set;
  v21.receiver = self;
  v21.super_class = CHClassifiableDrawing;
  v18 = [(CHClassifiableDrawing *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_drawing, drawing);
    objc_storeStrong(&v19->_characterSet, set);
    v19->_expandCodePoints = points;
    v19->_normalizationContext.origin.x = x;
    v19->_normalizationContext.origin.y = y;
    v19->_normalizationContext.size.width = width;
    v19->_normalizationContext.size.height = height;
    v19->_maxCandidateCount = count;
  }

  return v19;
}

- (CGRect)normalizationContext
{
  x = self->_normalizationContext.origin.x;
  y = self->_normalizationContext.origin.y;
  width = self->_normalizationContext.size.width;
  height = self->_normalizationContext.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end