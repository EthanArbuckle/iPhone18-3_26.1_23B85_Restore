@interface CAMFocusResult
- (CAMFocusResult)initWithMode:(int64_t)mode pointOfInterest:(CGPoint)interest performingContrastDetection:(BOOL)detection contrastBasedFocusDidStart:(BOOL)start contrastBasedFocusDidEnd:(BOOL)end deviceSupportsFocus:(BOOL)focus;
- (CGPoint)pointOfInterest;
- (id)description;
@end

@implementation CAMFocusResult

- (CGPoint)pointOfInterest
{
  x = self->_pointOfInterest.x;
  y = self->_pointOfInterest.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CAMFocusResult)initWithMode:(int64_t)mode pointOfInterest:(CGPoint)interest performingContrastDetection:(BOOL)detection contrastBasedFocusDidStart:(BOOL)start contrastBasedFocusDidEnd:(BOOL)end deviceSupportsFocus:(BOOL)focus
{
  y = interest.y;
  x = interest.x;
  v19.receiver = self;
  v19.super_class = CAMFocusResult;
  v15 = [(CAMFocusResult *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_focusMode = mode;
    v15->_pointOfInterest.x = x;
    v15->_pointOfInterest.y = y;
    v15->_performingContrastDetection = detection;
    v15->_contrastBasedFocusDidStart = start;
    v15->_contrastBasedFocusDidEnd = end;
    v15->_deviceSupportsFocus = focus;
    v17 = v15;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  focusMode = [(CAMFocusResult *)self focusMode];
  [(CAMFocusResult *)self pointOfInterest];
  v7 = NSStringFromCGPoint(v13);
  v8 = [v3 stringWithFormat:@"<%@: %p mode: %ld pointOfInterest: %@ contrast: %d>", v5, self, focusMode, v7, -[CAMFocusResult isPerformingContrastDetection](self, "isPerformingContrastDetection")];

  if ([(CAMFocusResult *)self contrastBasedFocusDidStart])
  {
    v9 = [v8 stringByAppendingString:@" contrastDidStart"];

    v8 = v9;
  }

  if ([(CAMFocusResult *)self contrastBasedFocusDidEnd])
  {
    v10 = [v8 stringByAppendingString:@" contrastDidEnd"];

    v8 = v10;
  }

  return v8;
}

@end