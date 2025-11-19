@interface CRNPagingScrollTestParameters
- (CGRect)scrollingBounds;
- (CRNPagingScrollTestParameters)initWithTestName:(id)a3 iterations:(unint64_t)a4 scrollingBounds:(CGRect)a5 amplitude:(double)a6 direction:(int64_t)a7 iterationDuration:(double)a8 useFlicks:(BOOL)a9 completionHandler:(id)a10;
- (RCPSyntheticEventStream)eventStream;
- (id)composerBlock;
- (void)scrollWithComposer:(id)a3 fromPoint:(CGPoint)a4 toPoint:(CGPoint)a5 duration:(double)a6;
@end

@implementation CRNPagingScrollTestParameters

- (CRNPagingScrollTestParameters)initWithTestName:(id)a3 iterations:(unint64_t)a4 scrollingBounds:(CGRect)a5 amplitude:(double)a6 direction:(int64_t)a7 iterationDuration:(double)a8 useFlicks:(BOOL)a9 completionHandler:(id)a10
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v21 = a3;
  v22 = a10;
  v32.receiver = self;
  v32.super_class = CRNPagingScrollTestParameters;
  v23 = [(CRNPagingScrollTestParameters *)&v32 init];
  if (v23)
  {
    v24 = [v21 copy];
    testName = v23->_testName;
    v23->_testName = v24;

    v23->_iterations = a4;
    v23->_scrollingBounds.origin.x = x;
    v23->_scrollingBounds.origin.y = y;
    v23->_scrollingBounds.size.width = width;
    v23->_scrollingBounds.size.height = height;
    v23->_amplitude = a6;
    v23->_useFlicks = a9;
    v23->_direction = a7;
    v23->_iterationDuration = a8;
    v26 = MEMORY[0x24C1B6890](v22);
    completionHandler = v23->_completionHandler;
    v23->_completionHandler = v26;

    if (a7 == 6 || a7 == 5)
    {
      v28 = [MEMORY[0x277D75128] sharedApplication];
      v29 = [v28 userInterfaceLayoutDirection];
      v30 = 1;
      if (v29)
      {
        v30 = 2;
      }

      v23->_realDirection = v30;
    }

    else
    {
      v23->_realDirection = a7;
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

- (void)scrollWithComposer:(id)a3 fromPoint:(CGPoint)a4 toPoint:(CGPoint)a5 duration:(double)a6
{
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  v12 = a3;
  if ([(CRNPagingScrollTestParameters *)self useFlicks])
  {
    [v12 sendFlickWithStartPoint:v10 endPoint:v9 duration:{x, y, 0.5}];
    [v12 advanceTime:a6 + -0.5];
  }

  else
  {
    [v12 dragWithStartPoint:v10 endPoint:v9 duration:{x, y, a6}];
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
    v5 = [(CRNPagingScrollTestParameters *)self composerBlock];
    v6 = [v3 eventStreamWithEventActions:v5];
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