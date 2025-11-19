@interface CHClassifiableDrawing
- (CGRect)normalizationContext;
- (CHClassifiableDrawing)initWithDrawing:(id)a3 characterSet:(id)a4 expandCodePoints:(BOOL)a5 normalizationContext:(CGRect)a6 maxCandidateCount:(unint64_t)a7;
@end

@implementation CHClassifiableDrawing

- (CHClassifiableDrawing)initWithDrawing:(id)a3 characterSet:(id)a4 expandCodePoints:(BOOL)a5 normalizationContext:(CGRect)a6 maxCandidateCount:(unint64_t)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v16 = a3;
  v17 = a4;
  v21.receiver = self;
  v21.super_class = CHClassifiableDrawing;
  v18 = [(CHClassifiableDrawing *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_drawing, a3);
    objc_storeStrong(&v19->_characterSet, a4);
    v19->_expandCodePoints = a5;
    v19->_normalizationContext.origin.x = x;
    v19->_normalizationContext.origin.y = y;
    v19->_normalizationContext.size.width = width;
    v19->_normalizationContext.size.height = height;
    v19->_maxCandidateCount = a7;
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