@interface CRNPagingScrollTestParameters
- (CGRect)scrollingBounds;
- (CRNPagingScrollTestParameters)initWithTestName:(id)name iterations:(unint64_t)iterations scrollingBounds:(CGRect)bounds amplitude:(double)amplitude direction:(int64_t)direction iterationDuration:(double)duration useFlicks:(BOOL)flicks completionHandler:(id)self0;
- (RCPSyntheticEventStream)eventStream;
- (id)composerBlock;
- (void)scrollWithComposer:(id)composer fromPoint:(CGPoint)point toPoint:(CGPoint)toPoint duration:(double)duration;
@end

@implementation CRNPagingScrollTestParameters

- (CRNPagingScrollTestParameters)initWithTestName:(id)name iterations:(unint64_t)iterations scrollingBounds:(CGRect)bounds amplitude:(double)amplitude direction:(int64_t)direction iterationDuration:(double)duration useFlicks:(BOOL)flicks completionHandler:(id)self0
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  nameCopy = name;
  handlerCopy = handler;
  v32.receiver = self;
  v32.super_class = CRNPagingScrollTestParameters;
  v23 = [(CRNPagingScrollTestParameters *)&v32 init];
  if (v23)
  {
    v24 = [nameCopy copy];
    testName = v23->_testName;
    v23->_testName = v24;

    v23->_iterations = iterations;
    v23->_scrollingBounds.origin.x = x;
    v23->_scrollingBounds.origin.y = y;
    v23->_scrollingBounds.size.width = width;
    v23->_scrollingBounds.size.height = height;
    v23->_amplitude = amplitude;
    v23->_useFlicks = flicks;
    v23->_direction = direction;
    v23->_iterationDuration = duration;
    v26 = MEMORY[0x24C1B6890](handlerCopy);
    completionHandler = v23->_completionHandler;
    v23->_completionHandler = v26;

    if (direction == 6 || direction == 5)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];
      v30 = 1;
      if (userInterfaceLayoutDirection)
      {
        v30 = 2;
      }

      v23->_realDirection = v30;
    }

    else
    {
      v23->_realDirection = direction;
    }
  }

  return v23;
}

- (id)composerBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__CRNPagingScrollTestParameters_composerBlock__block_invoke;
  v4[3] = &unk_278EDC560;
  v4[4] = self;
  v2 = MEMORY[0x24C1B6890](v4, a2);

  return v2;
}

void __46__CRNPagingScrollTestParameters_composerBlock__block_invoke(uint64_t a1, void *a2)
{
  v24 = a2;
  [*(a1 + 32) scrollingBounds];
  Midpoint = CRNCGRectGetMidpoint(v3, v4, v5, v6);
  v9 = v8;
  v10 = [*(a1 + 32) realDirection];
  [*(a1 + 32) scrollingBounds];
  if (v10 <= 2)
  {
    if (v10 == 2)
    {
      v15 = CGRectGetMinX(*&v11) + 1.5;
      [*(a1 + 32) amplitude];
      Midpoint = v15 + v16;
LABEL_8:
      v17 = v9;
      goto LABEL_11;
    }

LABEL_7:
    v15 = CGRectGetMaxX(*&v11) + -1.5;
    [*(a1 + 32) amplitude];
    Midpoint = v15 - v19;
    goto LABEL_8;
  }

  if (v10 == 4)
  {
    v17 = CGRectGetMinY(*&v11) + 1.5;
    [*(a1 + 32) amplitude];
    v9 = v17 + v20;
  }

  else
  {
    if (v10 != 3)
    {
      goto LABEL_7;
    }

    v17 = CGRectGetMaxY(*&v11) + -1.5;
    [*(a1 + 32) amplitude];
    v9 = v17 - v18;
  }

  v15 = Midpoint;
LABEL_11:
  if ([*(a1 + 32) iterations])
  {
    v21 = 1;
    do
    {
      v22 = *(a1 + 32);
      [v22 iterationDuration];
      [v22 scrollWithComposer:v24 fromPoint:v15 toPoint:v17 duration:{Midpoint, v9, v23}];
      ++v21;
    }

    while (v21 <= [*(a1 + 32) iterations]);
  }
}

- (void)scrollWithComposer:(id)composer fromPoint:(CGPoint)point toPoint:(CGPoint)toPoint duration:(double)duration
{
  y = toPoint.y;
  x = toPoint.x;
  v9 = point.y;
  v10 = point.x;
  composerCopy = composer;
  if ([(CRNPagingScrollTestParameters *)self useFlicks])
  {
    [composerCopy sendFlickWithStartPoint:v10 endPoint:v9 duration:{x, y, 0.5}];
    [composerCopy advanceTime:duration + -0.5];
  }

  else
  {
    [composerCopy dragWithStartPoint:v10 endPoint:v9 duration:{x, y, duration}];
  }
}

- (RCPSyntheticEventStream)eventStream
{
  if (RecapLibraryCore_2())
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v3 = getRCPSyntheticEventStreamClass_softClass_2;
    v12 = getRCPSyntheticEventStreamClass_softClass_2;
    if (!getRCPSyntheticEventStreamClass_softClass_2)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __getRCPSyntheticEventStreamClass_block_invoke_2;
      v8[3] = &unk_278EDC538;
      v8[4] = &v9;
      __getRCPSyntheticEventStreamClass_block_invoke_2(v8);
      v3 = v10[3];
    }

    v4 = v3;
    _Block_object_dispose(&v9, 8);
    composerBlock = [(CRNPagingScrollTestParameters *)self composerBlock];
    v6 = [v3 eventStreamWithEventActions:composerBlock];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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