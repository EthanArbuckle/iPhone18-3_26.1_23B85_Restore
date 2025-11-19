@interface CKInvisibleInkEffectCoverageTracker
- (CGSize)size;
- (CKInvisibleInkEffectCoverageTracker)initWithSize:(CGSize)a3 touchLifetime:(double)a4;
- (CKInvisibleInkEffectCoverageTrackerDelegate)delegate;
- (void)_checkForCover:(id)a3;
- (void)dealloc;
- (void)recordTouchAtPoint:(CGPoint)a3;
- (void)reset;
- (void)setSize:(CGSize)a3;
@end

@implementation CKInvisibleInkEffectCoverageTracker

- (CKInvisibleInkEffectCoverageTracker)initWithSize:(CGSize)a3 touchLifetime:(double)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = CKInvisibleInkEffectCoverageTracker;
  v7 = [(CKInvisibleInkEffectCoverageTracker *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CKInvisibleInkEffectCoverageTracker *)v7 setSize:width, height];
    v8->_touchLifetime = a4;
  }

  return v8;
}

- (void)dealloc
{
  [(NSTimer *)self->_recoverTimer invalidate];
  free(self->_expiryTimes);
  v3.receiver = self;
  v3.super_class = CKInvisibleInkEffectCoverageTracker;
  [(CKInvisibleInkEffectCoverageTracker *)&v3 dealloc];
}

- (void)setSize:(CGSize)a3
{
  if (a3.width != self->_size.width || a3.height != self->_size.height)
  {
    self->_size = a3;
    height = a3.height;
    __asm { FMOV            V2.2D, #1.0 }

    v11 = vcvtq_u64_f64(vmaxnmq_f64(vrndmq_f64(vdivq_f64(a3, vdupq_n_s64(0x4044000000000000uLL))), _Q2));
    *&self->_width = v11;
    *&self->_cellWidth = vdivq_f64(a3, vcvtq_f64_u64(v11));
    free(self->_expiryTimes);
    self->_expiryTimes = malloc_type_malloc(8 * self->_width * self->_height, 0x100004000313F17uLL);

    [(CKInvisibleInkEffectCoverageTracker *)self reset];
  }
}

- (void)reset
{
  v3 = [MEMORY[0x1E695DF00] distantPast];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  v6 = self->_height * self->_width;
  if (v6)
  {
    v7 = (v6 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v8 = vdupq_n_s64(v6 - 1);
    v9 = xmmword_190DD06F0;
    v10 = self->_expiryTimes + 1;
    v11 = vdupq_n_s64(2uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v8, v9));
      if (v12.i8[0])
      {
        *(v10 - 1) = v5;
      }

      if (v12.i8[4])
      {
        *v10 = v5;
      }

      v9 = vaddq_s64(v9, v11);
      v10 += 2;
      v7 -= 2;
    }

    while (v7);
  }

  [(CKInvisibleInkEffectCoverageTracker *)self setUncovered:0];
  recoverTimer = self->_recoverTimer;

  [(NSTimer *)recoverTimer invalidate];
}

- (void)recordTouchAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  cellWidth = self->_cellWidth;
  cellHeight = self->_cellHeight;
  Current = CFAbsoluteTimeGetCurrent();
  height = self->_height;
  if (height)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v9 = 0.5;
    v10 = cellHeight * 0.5;
    width = self->_width;
    v17 = self->_cellWidth;
    v11 = 2.0;
    do
    {
      if (width)
      {
        v18 = cellWidth * 0.5;
        v19 = v13;
        v20 = width;
        do
        {
          if ((x - v18) * (x - v18) / (v17 * v17) + (y - v10) * (y - v10) / (self->_cellHeight * self->_cellHeight) >= 2.0)
          {
            if (*(self->_expiryTimes + v19) > Current)
            {
              ++v15;
            }
          }

          else
          {
            *(self->_expiryTimes + v19) = Current + self->_touchLifetime;
            ++v15;
            v17 = self->_cellWidth;
          }

          v18 = v18 + v17;
          v19 += 8;
          --v20;
        }

        while (v20);
      }

      v10 = v10 + self->_cellHeight;
      ++v14;
      v13 += 8 * width;
      cellWidth = v17;
    }

    while (v14 != height);
    v21 = v15;
  }

  else
  {
    v21 = 0.0;
  }

  if (![(CKInvisibleInkEffectCoverageTracker *)self isUncovered:Current]&& (self->_height * self->_width) * 0.75 < v21)
  {
    [(CKInvisibleInkEffectCoverageTracker *)self setUncovered:1];
    if ([(NSTimer *)self->_recoverTimer isValid])
    {
      recoverTimer = self->_recoverTimer;
      v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:self->_touchLifetime];
      [(NSTimer *)recoverTimer setFireDate:v23];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__checkForCover_ selector:0 userInfo:0 repeats:self->_touchLifetime];
      v23 = self->_recoverTimer;
      self->_recoverTimer = v24;
    }

    v25 = [(CKInvisibleInkEffectCoverageTracker *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__CKInvisibleInkEffectCoverageTracker_recordTouchAtPoint___block_invoke;
      block[3] = &unk_1E72EBA18;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __58__CKInvisibleInkEffectCoverageTracker_recordTouchAtPoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 invisibleInkEffectCoverageTrackerDidUncover:*(a1 + 32)];
}

- (void)_checkForCover:(id)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = [MEMORY[0x1E695DF00] distantFuture];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = self->_height * self->_width;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = 0;
  expiryTimes = self->_expiryTimes;
  v11 = self->_height * self->_width;
  do
  {
    v12 = *expiryTimes++;
    v13 = v12;
    if (v7 >= v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = v7;
    }

    if (v13 > Current)
    {
      ++v9;
      v7 = v14;
    }

    --v11;
  }

  while (v11);
  if (v8 * 0.75 < v9)
  {
    v15 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__checkForCover_ selector:0 userInfo:0 repeats:v7 - Current];
    recoverTimer = self->_recoverTimer;
    self->_recoverTimer = v15;
  }

  else
  {
LABEL_11:
    [(CKInvisibleInkEffectCoverageTracker *)self setUncovered:0];
    v17 = [(CKInvisibleInkEffectCoverageTracker *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      return;
    }

    v19 = [(CKInvisibleInkEffectCoverageTracker *)self delegate];
    [(NSTimer *)v19 invisibleInkEffectCoverageTrackerDidRecover:self];
    recoverTimer = v19;
  }
}

- (CKInvisibleInkEffectCoverageTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end