@interface CHTransformationParameters
- (CGPoint)insertionPoint;
- (CHTransformationParameters)init;
- (CHTransformationParameters)initWithOrientationBehavior:(unint64_t)behavior orientationTarget:(double)target italicsModifier:(double)modifier boldModifier:(double)boldModifier resizeBehavior:(unint64_t)resizeBehavior textSizeTarget:(unint64_t)sizeTarget textSizeModifier:(double)sizeModifier alignmentBehavior:(unint64_t)self0 leftMargin:(unint64_t)self1 rightMargin:(unint64_t)self2 insertionPoint:(CGPoint)self3 lineSpaceBehavior:(unint64_t)self4 lineSpaceTarget:(unint64_t)self5 mergeLines:(BOOL)self6 wrapLines:(BOOL)self7;
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

- (CHTransformationParameters)initWithOrientationBehavior:(unint64_t)behavior orientationTarget:(double)target italicsModifier:(double)modifier boldModifier:(double)boldModifier resizeBehavior:(unint64_t)resizeBehavior textSizeTarget:(unint64_t)sizeTarget textSizeModifier:(double)sizeModifier alignmentBehavior:(unint64_t)self0 leftMargin:(unint64_t)self1 rightMargin:(unint64_t)self2 insertionPoint:(CGPoint)self3 lineSpaceBehavior:(unint64_t)self4 lineSpaceTarget:(unint64_t)self5 mergeLines:(BOOL)self6 wrapLines:(BOOL)self7
{
  y = point.y;
  x = point.x;
  v30.receiver = self;
  v30.super_class = CHTransformationParameters;
  result = [(CHTransformationParameters *)&v30 init];
  if (result)
  {
    result->_orientationBehavior = behavior;
    result->_orientationTarget = target;
    result->_italicsModifier = modifier;
    result->_boldModifier = boldModifier;
    result->_resizeBehavior = resizeBehavior;
    result->_textSizeTarget = sizeTarget;
    result->_textSizeModifier = sizeModifier;
    result->_alignmentBehavior = alignmentBehavior;
    result->_leftMargin = margin;
    result->_insertionPoint.x = x;
    result->_insertionPoint.y = y;
    result->_rightMargin = rightMargin;
    result->_lineSpaceBehavior = spaceBehavior;
    result->_lineSpaceTarget = spaceTarget;
    result->_mergeLines = lines;
    result->_wrapLines = wrapLines;
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