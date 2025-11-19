@interface CHTransformationParameters
- (CGPoint)insertionPoint;
- (CHTransformationParameters)init;
- (CHTransformationParameters)initWithOrientationBehavior:(unint64_t)a3 orientationTarget:(double)a4 italicsModifier:(double)a5 boldModifier:(double)a6 resizeBehavior:(unint64_t)a7 textSizeTarget:(unint64_t)a8 textSizeModifier:(double)a9 alignmentBehavior:(unint64_t)a10 leftMargin:(unint64_t)a11 rightMargin:(unint64_t)a12 insertionPoint:(CGPoint)a13 lineSpaceBehavior:(unint64_t)a14 lineSpaceTarget:(unint64_t)a15 mergeLines:(BOOL)a16 wrapLines:(BOOL)a17;
@end

@implementation CHTransformationParameters

- (CHTransformationParameters)init
{
  v8.receiver = self;
  v8.super_class = CHTransformationParameters;
  result = [(CHTransformationParameters *)&v8 init];
  if (result)
  {
    *&result->_orientationBehavior = 0u;
    *&result->_italicsModifier = 0u;
    result->_resizeBehavior = 0;
    result->_textSizeTarget = 16;
    result->_textSizeModifier = 1.0;
    result->_alignmentBehavior = 0;
    result->_leftMargin = 0;
    result->_rightMargin = 760;
    __asm { FMOV            V0.2D, #-1.0 }

    result->_insertionPoint = _Q0;
    *&result->_mergeLines = 0;
    result->_lineSpaceBehavior = 0;
    result->_lineSpaceTarget = 0;
  }

  return result;
}

- (CHTransformationParameters)initWithOrientationBehavior:(unint64_t)a3 orientationTarget:(double)a4 italicsModifier:(double)a5 boldModifier:(double)a6 resizeBehavior:(unint64_t)a7 textSizeTarget:(unint64_t)a8 textSizeModifier:(double)a9 alignmentBehavior:(unint64_t)a10 leftMargin:(unint64_t)a11 rightMargin:(unint64_t)a12 insertionPoint:(CGPoint)a13 lineSpaceBehavior:(unint64_t)a14 lineSpaceTarget:(unint64_t)a15 mergeLines:(BOOL)a16 wrapLines:(BOOL)a17
{
  y = a13.y;
  x = a13.x;
  v30.receiver = self;
  v30.super_class = CHTransformationParameters;
  result = [(CHTransformationParameters *)&v30 init];
  if (result)
  {
    result->_orientationBehavior = a3;
    result->_orientationTarget = a4;
    result->_italicsModifier = a5;
    result->_boldModifier = a6;
    result->_resizeBehavior = a7;
    result->_textSizeTarget = a8;
    result->_textSizeModifier = a9;
    result->_alignmentBehavior = a10;
    result->_leftMargin = a11;
    result->_insertionPoint.x = x;
    result->_insertionPoint.y = y;
    result->_rightMargin = a12;
    result->_lineSpaceBehavior = a14;
    result->_lineSpaceTarget = a15;
    result->_mergeLines = a16;
    result->_wrapLines = a17;
  }

  return result;
}

- (CGPoint)insertionPoint
{
  x = self->_insertionPoint.x;
  y = self->_insertionPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end