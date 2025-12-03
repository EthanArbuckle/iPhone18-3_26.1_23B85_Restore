@interface CRNOscillationScrollTestParameters
- (CGPoint)finalFingerPosition;
- (CGPoint)initialFingerPosition;
- (CGRect)scrollingBounds;
- (CRNOscillationScrollTestParameters)initWithTestName:(id)name iterations:(unint64_t)iterations scrollingBounds:(CGRect)bounds useFlicks:(BOOL)flicks preventDismissalGestures:(BOOL)gestures initialAmplitude:(double)amplitude amplitudeVariationPerIteration:(double)iteration initialDirection:(int64_t)self0 iterationDuration:(double)self1 finishWithHalfIteration:(BOOL)self2 completionHandler:(id)self3;
- (RCPSyntheticEventStream)eventStream;
- (id)composerBlock;
- (void)scrollWithComposer:(id)composer fromPoint:(CGPoint)point toPoint:(CGPoint)toPoint duration:(double)duration;
@end

@implementation CRNOscillationScrollTestParameters

- (CRNOscillationScrollTestParameters)initWithTestName:(id)name iterations:(unint64_t)iterations scrollingBounds:(CGRect)bounds useFlicks:(BOOL)flicks preventDismissalGestures:(BOOL)gestures initialAmplitude:(double)amplitude amplitudeVariationPerIteration:(double)iteration initialDirection:(int64_t)self0 iterationDuration:(double)self1 finishWithHalfIteration:(BOOL)self2 completionHandler:(id)self3
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  nameCopy = name;
  handlerCopy = handler;
  v37.receiver = self;
  v37.super_class = CRNOscillationScrollTestParameters;
  v28 = [(CRNOscillationScrollTestParameters *)&v37 init];
  if (v28)
  {
    v29 = [nameCopy copy];
    testName = v28->_testName;
    v28->_testName = v29;

    v28->_iterations = iterations;
    v28->_scrollingBounds.origin.x = x;
    v28->_scrollingBounds.origin.y = y;
    v28->_scrollingBounds.size.width = width;
    v28->_scrollingBounds.size.height = height;
    v28->_shouldFlick = flicks;
    v28->_preventDismissalGestures = gestures;
    v28->_amplitudeVariationPerIteration = iteration;
    v28->_initialAmplitude = amplitude;
    v28->_initialDirection = direction;
    v28->_iterationDuration = duration;
    v28->_finishWithHalfIteration = halfIteration;
    v31 = MEMORY[0x24C1B6890](handlerCopy);
    completionHandler = v28->_completionHandler;
    v28->_completionHandler = v31;

    if (direction == 6 || direction == 5)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];
      v35 = 1;
      if (userInterfaceLayoutDirection)
      {
        v35 = 2;
      }

      v28->_realInitialDirection = v35;
    }

    else
    {
      v28->_realInitialDirection = direction;
    }
  }

  return v28;
}

- (id)composerBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__CRNOscillationScrollTestParameters_composerBlock__block_invoke;
  v4[3] = &unk_278EDC560;
  v4[4] = self;
  v2 = MEMORY[0x24C1B6890](v4, a2);

  return v2;
}

void __51__CRNOscillationScrollTestParameters_composerBlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) iterationDuration];
  v5 = v4;
  v6 = CRNAxisFromScrollDirection([*(a1 + 32) realInitialDirection]);
  [*(a1 + 32) initialFingerPosition];
  v8 = v7;
  v10 = v9;
  v21 = v7;
  v22 = v9;
  [*(a1 + 32) finalFingerPosition];
  v19 = v11;
  v20 = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__CRNOscillationScrollTestParameters_composerBlock__block_invoke_2;
  v18[3] = &unk_278EDC620;
  v18[4] = *(a1 + 32);
  v18[5] = v6;
  v13 = MEMORY[0x24C1B6890](v18);
  if ([*(a1 + 32) preventDismissalGestures])
  {
    v14 = CRNCGPointAdvanceInDirectionByAmount([*(a1 + 32) realInitialDirection], v8, v10, 75.0);
    [v3 dragWithStartPoint:v8 endPoint:v10 duration:{v14, v15, 0.3}];
  }

  if (([*(a1 + 32) shouldFlick] & 1) == 0)
  {
    [v3 touchDown:{v8, v10}];
  }

  v16 = v5 * 0.5;
  if ([*(a1 + 32) iterations])
  {
    v17 = 1;
    do
    {
      [*(a1 + 32) scrollWithComposer:v3 fromPoint:v21 toPoint:v22 duration:{v19, v20, v16}];
      (v13)[2](v13, &v21, 0);
      [*(a1 + 32) scrollWithComposer:v3 fromPoint:v19 toPoint:v20 duration:{v21, v22, v16}];
      (v13)[2](v13, &v19, 1);
      ++v17;
    }

    while (v17 <= [*(a1 + 32) iterations]);
  }

  if ([*(a1 + 32) finishWithHalfIteration])
  {
    [*(a1 + 32) scrollWithComposer:v3 fromPoint:v21 toPoint:v22 duration:{v19, v20, v16}];
  }

  if (([*(a1 + 32) shouldFlick] & 1) == 0)
  {
    [v3 liftUp:{v21, v22}];
  }
}

uint64_t __51__CRNOscillationScrollTestParameters_composerBlock__block_invoke_2(uint64_t a1, double *a2, int a3)
{
  result = [*(a1 + 32) amplitudeVariationPerIteration];
  if (!a3)
  {
    v7 = -v7;
  }

  v8 = v7 * 0.5;
  v9 = a2[1] + v8;
  v10 = *a2 + v8;
  if (*(a1 + 40) == 2)
  {
    v10 = *a2;
    v11 = v9;
  }

  else
  {
    v11 = a2[1];
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

- (RCPSyntheticEventStream)eventStream
{
  if (RecapLibraryCore_4())
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v3 = getRCPSyntheticEventStreamClass_softClass_4;
    v12 = getRCPSyntheticEventStreamClass_softClass_4;
    if (!getRCPSyntheticEventStreamClass_softClass_4)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __getRCPSyntheticEventStreamClass_block_invoke_4;
      v8[3] = &unk_278EDC538;
      v8[4] = &v9;
      __getRCPSyntheticEventStreamClass_block_invoke_4(v8);
      v3 = v10[3];
    }

    v4 = v3;
    _Block_object_dispose(&v9, 8);
    composerBlock = [(CRNOscillationScrollTestParameters *)self composerBlock];
    v6 = [v3 eventStreamWithEventActions:composerBlock];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)scrollWithComposer:(id)composer fromPoint:(CGPoint)point toPoint:(CGPoint)toPoint duration:(double)duration
{
  y = toPoint.y;
  x = toPoint.x;
  v9 = point.y;
  v10 = point.x;
  composerCopy = composer;
  if ([(CRNOscillationScrollTestParameters *)self shouldFlick])
  {
    v12 = duration + -0.5;
    [composerCopy sendFlickWithStartPoint:v10 endPoint:v9 duration:{x, y, 0.5}];
    if (v12 >= 0.0)
    {
      v14 = composerCopy;
      v13 = v12;
    }

    else
    {
      v13 = 0.3;
      v14 = composerCopy;
    }

    [v14 advanceTime:v13];
  }

  else
  {
    [composerCopy moveToPoint:x duration:{y, duration}];
  }
}

- (CGPoint)initialFingerPosition
{
  [(CRNOscillationScrollTestParameters *)self scrollingBounds];
  Midpoint = CRNCGRectGetMidpoint(v3, v4, v5, v6);
  v9 = v8;
  [(CRNOscillationScrollTestParameters *)self initialAmplitude];
  v11 = v10 * 0.5;
  v12 = CRNOppositeDirectionFrom([(CRNOscillationScrollTestParameters *)self realInitialDirection]);

  v13 = CRNCGPointAdvanceInDirectionByAmount(v12, Midpoint, v9, v11);
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)finalFingerPosition
{
  [(CRNOscillationScrollTestParameters *)self scrollingBounds];
  Midpoint = CRNCGRectGetMidpoint(v3, v4, v5, v6);
  v9 = v8;
  [(CRNOscillationScrollTestParameters *)self initialAmplitude];
  v11 = v10 * 0.5;
  realInitialDirection = [(CRNOscillationScrollTestParameters *)self realInitialDirection];

  v13 = CRNCGPointAdvanceInDirectionByAmount(realInitialDirection, Midpoint, v9, v11);
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGRect)scrollingBounds
{
  x = self->_scrollingBounds.origin.x;
  y = self->_scrollingBounds.origin.y;
  width = self->_scrollingBounds.size.width;
  height = self->_scrollingBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end