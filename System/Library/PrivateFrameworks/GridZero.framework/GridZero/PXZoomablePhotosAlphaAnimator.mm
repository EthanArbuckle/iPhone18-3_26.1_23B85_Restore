@interface PXZoomablePhotosAlphaAnimator
- (PXAlphaTransitionInfo)_transitionInfoForValue:(double)value;
- (PXZoomablePhotosAlphaAnimator)init;
- (double)_targetColumnIndex;
- (id)description;
- (void)_invalidatePresentationValue;
- (void)_resetAnimatedValues;
- (void)_tick:(id)_tick;
- (void)_updatePresentationValue;
- (void)_updateTransitionInfo;
- (void)dealloc;
- (void)didPerformChanges;
- (void)performChanges:(id)changes;
- (void)performChangesWithAnimation:(BOOL)animation changeBlock:(id)block;
- (void)setAllowedColumns:(id)columns;
- (void)setAutoFadeAmount:(double)amount;
- (void)setAutoFadeColumnIndex:(double)index;
- (void)setColumnIndex:(double)index;
- (void)setIsAnimating:(BOOL)animating;
- (void)setMaxColumnsForAspectFit:(int64_t)fit;
- (void)setPresentationAutoFadeAmount:(double)amount;
- (void)setPresentationColumnIndex:(double)index;
- (void)setTargetColumnIndex:(double)index;
@end

@implementation PXZoomablePhotosAlphaAnimator

- (PXZoomablePhotosAlphaAnimator)init
{
  v6.receiver = self;
  v6.super_class = PXZoomablePhotosAlphaAnimator;
  v2 = [(PXZoomablePhotosAlphaAnimator *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D3CD20]) initWithWeakTarget:v2 selector:sel__tick_ deferredStart:1];
    displayLink = v2->_displayLink;
    v2->_displayLink = v3;

    [(PXDisplayLink *)v2->_displayLink setFrameRateRangeType:2];
    [(PXDisplayLink *)v2->_displayLink setHighFrameRateReason:2228226];
    [(PXDisplayLink *)v2->_displayLink setPaused:1];
  }

  return v2;
}

- (void)_resetAnimatedValues
{
  [(PXZoomablePhotosAlphaAnimator *)self columnIndex];
  [(PXZoomablePhotosAlphaAnimator *)self setAutoFadeColumnIndex:?];
  [(PXZoomablePhotosAlphaAnimator *)self autoFadeAmount];

  [(PXZoomablePhotosAlphaAnimator *)self setPresentationAutoFadeAmount:?];
}

- (void)didPerformChanges
{
  v12.receiver = self;
  v12.super_class = PXZoomablePhotosAlphaAnimator;
  [(PXZoomablePhotosAlphaAnimator *)&v12 didPerformChanges];
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosAlphaAnimator didPerformChanges]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXZoomablePhotosAlphaAnimator.m" lineNumber:360 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    self->_updateFlags.isPerformingUpdate = 1;
    self->_updateFlags.updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXZoomablePhotosAlphaAnimator *)self _updateTransitionInfo];
      if (!self->_updateFlags.isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosAlphaAnimator didPerformChanges]"];
        [currentHandler2 handleFailureInFunction:v9 file:@"PXZoomablePhotosAlphaAnimator.m" lineNumber:364 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    self->_updateFlags.updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXZoomablePhotosAlphaAnimator *)self _updatePresentationValue];
      v5 = p_updateFlags->needsUpdate;
    }

    self->_updateFlags.isPerformingUpdate = 0;
    if (v5)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosAlphaAnimator didPerformChanges]"];
      [currentHandler3 handleFailureInFunction:v11 file:@"PXZoomablePhotosAlphaAnimator.m" lineNumber:367 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }
}

- (void)_updateTransitionInfo
{
  allowedColumns = [(PXZoomablePhotosAlphaAnimator *)self allowedColumns];
  v3 = [allowedColumns count];
  self->_layerCount = v3;
  v4 = 176;
  v5 = 576;
  v31 = v3;
  v6 = v3 - 1;
  if (v3 >= 1)
  {
    v7 = 0;
    v8 = 176;
    v9 = 576;
    v10 = v3;
    do
    {
      v11 = [allowedColumns objectAtIndexedSubscript:{v7, v31}];
      integerValue = [v11 integerValue];

      v13 = self + v8;
      v14 = self + v9;
      v15 = self + v9 - 48;
      if (!v7)
      {
        v15 = 0;
      }

      --v10;
      *v13 = v7;
      *(v13 + 1) = integerValue;
      *(v13 + 2) = 1.0 / integerValue;
      if (!v10)
      {
        v14 = 0;
      }

      *(v13 + 3) = v15;
      *(v13 + 4) = v14;
      ++v7;
      v9 += 48;
      v8 += 40;
    }

    while (v10);
  }

  v16 = +[PXZoomablePhotosSettings sharedInstance];
  [v16 minAcceptableCoverage];
  v18 = v17;
  maxColumnsForAspectFit = [(PXZoomablePhotosAlphaAnimator *)self maxColumnsForAspectFit];
  if (v32 >= 2)
  {
    v20 = maxColumnsForAspectFit;
    v21 = 0;
    do
    {
      v22 = self + v4;
      if (*(&self->super._nestedChanges + v4) > v20 != *(&self->super._observersQueue + v4) <= v20)
      {
        [v16 alphaMaxAcceptableScale];
        [v16 alphaMinAcceptableCoverage];
      }

      PXFloatSaturate();
      v24 = fmax(1.0 - v23, 0.1);
      if (v18 + v24 <= 1.0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 1.0 - v18;
      }

      v26 = 0.7;
      if (*(v22 + 1) != 1)
      {
        PXFloatProgressBetween();
        PXFloatSaturate();
        v26 = 1.0 - v27;
      }

      if (v26 > 0.9)
      {
        v26 = 0.9;
      }

      if (v26 < v18 + v25)
      {
        v26 = v18 + v25;
      }

      v28 = (self + v5);
      v29 = v25 + v21;
      v30 = v26 + v21;
      *v28 = v29;
      v28[1] = v30;
      v28[2] = v30;
      v28[3] = v29;
      *(v28 + 4) = v22;
      *(v28 + 5) = v22 + 40;
      v5 += 48;
      v4 += 40;
      ++v21;
    }

    while (v6 != v21);
  }

  [(PXZoomablePhotosAlphaAnimator *)self columnIndex];
  [(PXZoomablePhotosAlphaAnimator *)self setAutoFadeColumnIndex:?];
  [(PXZoomablePhotosAlphaAnimator *)self _invalidatePresentationValue];
}

- (void)_invalidatePresentationValue
{
  [(PXZoomablePhotosAlphaAnimator *)self signalChange:0];
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 2) != 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosAlphaAnimator _invalidatePresentationValue]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXZoomablePhotosAlphaAnimator.m" lineNumber:441 description:{@"invalidating %lu after it already has been updated", 2}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 2uLL;
}

- (void)_updatePresentationValue
{
  [(PXZoomablePhotosAlphaAnimator *)self columnIndex];
  [(PXZoomablePhotosAlphaAnimator *)self autoFadeColumnIndex];
  v4 = v3;
  [(PXZoomablePhotosAlphaAnimator *)self presentationAutoFadeAmount];
  v6 = v5;
  [(PXZoomablePhotosAlphaAnimator *)self _targetColumnIndex];
  if (v4 == v7)
  {
    [(PXZoomablePhotosAlphaAnimator *)self autoFadeAmount];
    v8 = v9 != v6;
  }

  else
  {
    v8 = 1;
  }

  if ([(PXZoomablePhotosAlphaAnimator *)self _transitionInfoForValue:v4])
  {
    PXFloatProgressBetween();
    PXFloatSaturate();
  }

  PXFloatByLinearlyInterpolatingFloats();
  [(PXZoomablePhotosAlphaAnimator *)self setPresentationColumnIndex:?];

  [(PXZoomablePhotosAlphaAnimator *)self setIsAnimating:v8];
}

- (double)_targetColumnIndex
{
  [(PXZoomablePhotosAlphaAnimator *)self columnIndex];
  v4 = v3;
  [(PXZoomablePhotosAlphaAnimator *)self columnIndex];
  v5 = [(PXZoomablePhotosAlphaAnimator *)self _transitionInfoForValue:?];
  if (v5)
  {
    if (self->_currentDirection <= 0.0)
    {
      if (v4 < v5->autoFadeLeftValue && v5->fadeRangeMin < v4)
      {
        return v5->fadeRangeMin;
      }
    }

    else if (v4 > v5->autoFadeRightValue && v5->fadeRangeMax >= v4)
    {
      return v5->fadeRangeMax;
    }
  }

  return v4;
}

- (void)_tick:(id)_tick
{
  _tickCopy = _tick;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__PXZoomablePhotosAlphaAnimator__tick___block_invoke;
  v7[3] = &unk_278297FE8;
  v7[4] = self;
  v8 = _tickCopy;
  v6.receiver = self;
  v6.super_class = PXZoomablePhotosAlphaAnimator;
  v5 = _tickCopy;
  [(PXZoomablePhotosAlphaAnimator *)&v6 performChanges:v7];
}

void __39__PXZoomablePhotosAlphaAnimator__tick___block_invoke(uint64_t a1)
{
  v25 = +[PXZoomablePhotosSettings sharedInstance];
  v2 = *(a1 + 40);
  if (*(*(a1 + 32) + 128) == 0.0)
  {
    [v2 duration];
    v5 = v6;
    v3 = *(a1 + 32);
  }

  else
  {
    [v2 currentMediaTime];
    v3 = *(a1 + 32);
    v5 = v4 - *(v3 + 128);
  }

  v7 = *(v3 + 152);
  *(v3 + 152) = 0;
  *(*(a1 + 32) + 160) = *(*(a1 + 32) + 160) * 0.8 + v7 / v5 * 0.2;
  [*(a1 + 32) _targetColumnIndex];
  v9 = v8;
  [v25 alphaCrossfadeMaxDuration];
  v11 = v10;
  [v25 alphaCrossfadeMinDuration];
  v12 = *(a1 + 32);
  v14 = 1.0 / v13;
  v15 = fabs(v12[20]);
  if (v15 < 1.0 / v11)
  {
    v15 = 1.0 / v11;
  }

  if (v14 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  [v12 autoFadeColumnIndex];
  v18 = v17;
  v19 = v9 - v17;
  PXFloatSign();
  v21 = v5 * (v20 * v16);
  if (v21 <= 0.0 || v7 <= 0.0)
  {
    if (v21 >= v7)
    {
      v23 = v7;
    }

    else
    {
      v23 = v21;
    }

    if (v7 >= 0.0)
    {
      v23 = v21;
    }

    if (v21 < 0.0)
    {
      v22 = v23;
    }

    else
    {
      v22 = v21;
    }
  }

  else if (v21 >= v7)
  {
    v22 = v21;
  }

  else
  {
    v22 = v7;
  }

  if ((PXFloatEqualToFloatWithTolerance() & 1) != 0 || fabs(v22) > fabs(v19))
  {
    PXFloatEqualToFloatWithTolerance();
  }

  else
  {
    v9 = v18 + v22;
  }

  if ((PXFloatEqualToFloatWithTolerance() & 1) == 0)
  {
    [*(a1 + 32) autoFadeColumnIndex];
  }

  [*(a1 + 32) setAutoFadeColumnIndex:v9];
  [*(a1 + 32) autoFadeAmount];
  [v25 alphaModeTransitionDuration];
  [*(a1 + 32) presentationAutoFadeAmount];
  PXFloatSign();
  [*(a1 + 32) autoFadeColumnIndex];
  [*(a1 + 32) targetColumnIndex];
  PXFloatEqualToFloatWithTolerance();
  PXFloatSaturate();
  [*(a1 + 32) setPresentationAutoFadeAmount:?];
  [*(a1 + 32) _invalidatePresentationValue];
  [*(a1 + 40) currentMediaTime];
  *(*(a1 + 32) + 128) = v24;
}

- (PXAlphaTransitionInfo)_transitionInfoForValue:(double)value
{
  layerCount = self->_layerCount;
  v4 = layerCount < 2;
  v5 = layerCount - 2;
  if (v4)
  {
    return 0;
  }

  v7 = vcvtmd_s64_f64(value);
  if (v5 >= v7)
  {
    v5 = v7;
  }

  return &self->_transitionInfos[v5 & ~(v5 >> 63)];
}

- (void)setPresentationAutoFadeAmount:(double)amount
{
  if (self->_presentationAutoFadeAmount != amount)
  {
    self->_presentationAutoFadeAmount = amount;
    [(PXZoomablePhotosAlphaAnimator *)self _invalidatePresentationValue];
  }
}

- (void)setAutoFadeColumnIndex:(double)index
{
  if (self->_autoFadeColumnIndex != index)
  {
    self->_autoFadeColumnIndex = index;
    [(PXZoomablePhotosAlphaAnimator *)self _invalidatePresentationValue];
  }
}

- (void)setIsAnimating:(BOOL)animating
{
  if (self->_isAnimating != animating)
  {
    self->_isAnimating = animating;
    [(PXDisplayLink *)self->_displayLink setPaused:!animating];
    if (!animating)
    {
      self->_lastTickTime = 0.0;
    }

    [(PXZoomablePhotosAlphaAnimator *)self signalChange:4];
  }
}

- (void)setPresentationColumnIndex:(double)index
{
  if (self->_presentationColumnIndex != index)
  {
    self->_presentationColumnIndex = index;
    [(PXZoomablePhotosAlphaAnimator *)self signalChange:2];
  }
}

- (void)setAutoFadeAmount:(double)amount
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_autoFadeAmount = amount;

    [(PXZoomablePhotosAlphaAnimator *)self _invalidatePresentationValue];
  }
}

- (void)setTargetColumnIndex:(double)index
{
  if (self->_targetColumnIndex != index)
  {
    self->_targetColumnIndex = index;
    [(PXZoomablePhotosAlphaAnimator *)self _invalidatePresentationValue];
  }
}

- (void)setColumnIndex:(double)index
{
  columnIndex = self->_columnIndex;
  if (columnIndex != index)
  {
    v6 = index - columnIndex;
    PXFloatSign();
    v8 = v7;
    if (!self->_isPerformingChangesWithoutAnimation)
    {
      self->_columnIndexDelta = v6 + self->_columnIndexDelta;
    }

    if (v7 == self->_currentDirection)
    {
      self->_directionAnchorColumnIndex = index;
    }

    else
    {
      v9 = vabdd_f64(self->_directionAnchorColumnIndex, index);
      v10 = +[PXZoomablePhotosSettings sharedInstance];
      [v10 alphaDistanceForDirectionChange];
      v12 = v11;

      if (v9 >= v12)
      {
        self->_directionAnchorColumnIndex = index;
        self->_currentDirection = v8;
      }
    }

    self->_columnIndex = index;
    [(PXZoomablePhotosAlphaAnimator *)self signalChange:1];

    [(PXZoomablePhotosAlphaAnimator *)self _invalidatePresentationValue];
  }
}

- (void)setMaxColumnsForAspectFit:(int64_t)fit
{
  if (self->_maxColumnsForAspectFit != fit)
  {
    self->_maxColumnsForAspectFit = fit;
    if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 1) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosAlphaAnimator setMaxColumnsForAspectFit:]"];
      [currentHandler handleFailureInFunction:v4 file:@"PXZoomablePhotosAlphaAnimator.m" lineNumber:155 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    self->_updateFlags.needsUpdate |= 1uLL;
  }
}

- (void)setAllowedColumns:(id)columns
{
  columnsCopy = columns;
  allowedColumns = self->_allowedColumns;
  if (allowedColumns != columnsCopy)
  {
    v12 = columnsCopy;
    if (([(NSArray *)allowedColumns isEqual:columnsCopy]& 1) == 0)
    {
      if ([(NSArray *)v12 count]>= 0xB)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosAlphaAnimator.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"allowedColumns.count <= PXZoomablePhotosMaxLayers"}];
      }

      v7 = [(NSArray *)v12 copy];
      v8 = self->_allowedColumns;
      self->_allowedColumns = v7;

      if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 1) != 0)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosAlphaAnimator setAllowedColumns:]"];
        [currentHandler2 handleFailureInFunction:v11 file:@"PXZoomablePhotosAlphaAnimator.m" lineNumber:147 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      self->_updateFlags.needsUpdate |= 1uLL;
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)performChangesWithAnimation:(BOOL)animation changeBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__PXZoomablePhotosAlphaAnimator_performChangesWithAnimation_changeBlock___block_invoke;
  v8[3] = &unk_278297FC0;
  animationCopy = animation;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(PXZoomablePhotosAlphaAnimator *)self performChanges:v8];
}

uint64_t __73__PXZoomablePhotosAlphaAnimator_performChangesWithAnimation_changeBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1008);
  *(v2 + 1008) = *(a1 + 48) ^ 1;
  result = (*(*(a1 + 40) + 16))();
  if ((*(a1 + 48) & 1) == 0)
  {
    result = [*(a1 + 32) _resetAnimatedValues];
  }

  *(*(a1 + 32) + 1008) = v3;
  return result;
}

- (void)performChanges:(id)changes
{
  isBeingMutated = self->_isBeingMutated;
  self->_isBeingMutated = 1;
  v5.receiver = self;
  v5.super_class = PXZoomablePhotosAlphaAnimator;
  [(PXZoomablePhotosAlphaAnimator *)&v5 performChanges:changes];
  self->_isBeingMutated = isBeingMutated;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(PXZoomablePhotosAlphaAnimator *)self columnIndex];
  v7 = v6;
  [(PXZoomablePhotosAlphaAnimator *)self presentationColumnIndex];
  v9 = v8;
  layerCount = self->_layerCount;
  isAnimating = [(PXZoomablePhotosAlphaAnimator *)self isAnimating];
  v12 = @"NO";
  if (isAnimating)
  {
    v12 = @"YES";
  }

  v13 = v12;
  [v3 appendFormat:@"<%@:%p; columnIndex:%.2f presentationColumnIndex:%.2f layers:%ld isAnimating:%@\n", v5, self, v7, v9, layerCount, v13];

  if (self->_layerCount >= 1)
  {
    [v3 appendFormat:@"\nlayers:\n"];
    if (self->_layerCount >= 1)
    {
      v14 = 0;
      layers = self->_layers;
      do
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%p: columnIndex:%ld, columns:%ld, itemWidth:%.3f, leftTransition:%p, rightTransition:%p}", layers, layers->columnIndex, layers->columns, *&layers->itemWidth, layers->leftTransition, layers->rightTransition];
        [v3 appendFormat:@" %ld: %@\n", v14, v16];

        ++v14;
        ++layers;
      }

      while (v14 < self->_layerCount);
    }

    [v3 appendFormat:@"transitionInfos:\n"];
    if (self->_layerCount > 1)
    {
      v17 = 0;
      transitionInfos = self->_transitionInfos;
      do
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%p: fadeRange:[%.2f, %.2f] autoFadeLeft:%.2f autoFadeRight:%.2f leftLayer:%p rightLayer:%p}", transitionInfos, *&transitionInfos->fadeRangeMin, *&transitionInfos->fadeRangeMax, *&transitionInfos->autoFadeLeftValue, *&transitionInfos->autoFadeRightValue, transitionInfos->leftLayer, transitionInfos->rightLayer];
        [v3 appendFormat:@" %ld: %@\n", v17, v19];

        ++v17;
        ++transitionInfos;
      }

      while (v17 < self->_layerCount - 1);
    }
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (void)dealloc
{
  [(PXDisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = PXZoomablePhotosAlphaAnimator;
  [(PXZoomablePhotosAlphaAnimator *)&v3 dealloc];
}

@end