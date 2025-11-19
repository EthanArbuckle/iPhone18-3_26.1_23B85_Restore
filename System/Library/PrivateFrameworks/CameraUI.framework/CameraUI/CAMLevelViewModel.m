@interface CAMLevelViewModel
- (UIOffset)currentIndicatorOffset;
- (double)_hysteresisAlphaForDesiredAlpha:(double)result fromCurrentAlpha:(double)a4;
- (int64_t)_hysteresisModeForDesiredMode:(int64_t)a3;
- (void)_deviceAngleForGravity:(id)a3 captureOrientation:(int64_t)a4 relativeRoll:(double *)a5 relativePitch:(double *)a6;
- (void)_setCurrentIndicatorAlpha:(double)a3;
- (void)_setCurrentIndicatorMode:(int64_t)a3;
- (void)_setCurrentIndicatorOffset:(UIOffset)a3;
- (void)_setCurrentIndicatorRotationAngle:(double)a3;
- (void)_setDesiredUpdateInterval:(double)a3;
- (void)_updateFlatModeWithRoll:(float)a3 pitch:(float)a4 magnitude:(float)a5;
- (void)_updateStraightModeWithMode:(int64_t)a3 roll:(double)a4 pitch:(double)a5;
- (void)applyDeviceMotion:(id)a3 captureOrientation:(int64_t)a4;
@end

@implementation CAMLevelViewModel

- (void)_deviceAngleForGravity:(id)a3 captureOrientation:(int64_t)a4 relativeRoll:(double *)a5 relativePitch:(double *)a6
{
  var2 = a3.var2;
  var1 = a3.var1;
  if ((a4 - 1) > 1)
  {
    if ((a4 - 3) > 1)
    {
      return;
    }

    v9 = a3.var1 / a3.var0;
    var1 = a3.var0;
  }

  else
  {
    v9 = a3.var0 / a3.var1;
  }

  *a5 = atan(v9);
  v10 = var2 / var1;
  *a6 = atanf(v10);
}

- (void)applyDeviceMotion:(id)a3 captureOrientation:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 attitude];
  [v6 gravity];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v7 pitch];
  v15 = v14;
  v24 = 0.0;
  v25 = 0;
  v23 = 0.0;
  [v7 cam_getDistanceFromFlat:&v25 relativeRoll:&v25 + 4];
  [(CAMLevelViewModel *)self _deviceAngleForGravity:a4 captureOrientation:&v24 relativeRoll:&v23 relativePitch:v9, v11, v13];
  LODWORD(v16) = v25;
  if (*&v25 >= 0.25)
  {
    v18 = fabs(v24) >= 0.200000003;
    v16 = fabs(v23);
    if (v16 >= 0.600000024)
    {
      v18 = 1;
    }

    if ((a4 - 3) < 0xFFFFFFFFFFFFFFFELL || v18)
    {
      if ((a4 - 5) < 0xFFFFFFFFFFFFFFFELL)
      {
        v18 = 1;
      }

      if (v18)
      {
        v17 = 0;
      }

      else
      {
        v17 = 3;
      }
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    v17 = 1;
  }

  v19 = [(CAMLevelViewModel *)self _hysteresisModeForDesiredMode:v17, v16];
  if ((v19 - 2) < 2)
  {
    [(CAMLevelViewModel *)self _updateStraightModeWithMode:v19 roll:v24 pitch:v23];
  }

  else if (v19)
  {
    if (v19 == 1)
    {
      *&v21 = v15;
      LODWORD(v20) = HIDWORD(v25);
      LODWORD(v22) = v25;
      [(CAMLevelViewModel *)self _updateFlatModeWithRoll:v20 pitch:v21 magnitude:v22];
    }
  }

  else
  {
    [(CAMLevelViewModel *)self _updateModeNone];
  }
}

void __36__CAMLevelViewModel__updateModeNone__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _setDesiredUpdateInterval:0.1];
  [v2 _setCurrentIndicatorMode:0];
  [v2 _setCurrentIndicatorAlpha:0.0];
}

- (void)_updateFlatModeWithRoll:(float)a3 pitch:(float)a4 magnitude:(float)a5
{
  v7 = [(CAMLevelViewModel *)self currentIndicatorMode];
  [(CAMLevelViewModel *)self currentIndicatorOffset];
  v10 = *MEMORY[0x1E69DE258];
  v11 = *(MEMORY[0x1E69DE258] + 8);
  v15 = v7 == 1 && v9 == v11 && v8 == v10 && a5 < 0.025;
  v16 = 1.0;
  if (a5 >= 0.0175 && !v15)
  {
    v17 = (a5 + -0.125) * -8.0 + 1.0;
    if (v17 > 1.0)
    {
      v17 = 1.0;
    }

    v16 = fmax(v17, 0.0);
    v18 = [MEMORY[0x1E69DCEB0] mainScreen];
    UIRoundToScreenScale();
    v10 = v19;
    UIRoundToScreenScale();
    v11 = v20;
  }

  [(CAMLevelViewModel *)self currentIndicatorAlpha];
  [(CAMLevelViewModel *)self _hysteresisAlphaForDesiredAlpha:v16 fromCurrentAlpha:v21];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __61__CAMLevelViewModel__updateFlatModeWithRoll_pitch_magnitude___block_invoke;
  v23[3] = &__block_descriptor_56_e27_v16__0__CAMLevelViewModel_8l;
  *&v23[4] = v10;
  *&v23[5] = v11;
  v23[6] = v22;
  [(CAMObservable *)self performChanges:v23];
}

void __61__CAMLevelViewModel__updateFlatModeWithRoll_pitch_magnitude___block_invoke(double *a1, void *a2)
{
  v3 = a2;
  [v3 _setDesiredUpdateInterval:0.0166666667];
  [v3 _setCurrentIndicatorMode:1];
  [v3 _setCurrentIndicatorOffset:{a1[4], a1[5]}];
  [v3 _setCurrentIndicatorAlpha:a1[6]];
}

- (void)_updateStraightModeWithMode:(int64_t)a3 roll:(double)a4 pitch:(double)a5
{
  v8 = fabs(a4);
  v9 = [(CAMLevelViewModel *)self currentIndicatorMode];
  [(CAMLevelViewModel *)self currentIndicatorRotationAngle];
  v10 = v8 < 0.0150000006;
  if (v11 != 0.0 || (v9 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v10 = 0;
  }

  v13 = 0.0;
  v14 = 1.0;
  if (v8 >= 0.0125000002 && !v10)
  {
    CEKProgressClamped();
    CEKInterpolateClamped();
    v14 = v15;
    v13 = a4;
  }

  CEKProgressClamped();
  CEKInterpolateClamped();
  v17 = v16;
  if (v13 != 0.0)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(CAMLevelViewModel *)self _setLastNonZeroAngleTime:?];
  }

  if (v14 >= v17)
  {
    v14 = v17;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v19 = v18;
  [(CAMLevelViewModel *)self _lastNonZeroAngleTime];
  v21 = fmin(v14, 0.0);
  if (v19 - v20 <= 0.8)
  {
    v22 = v14;
  }

  else
  {
    v22 = v21;
  }

  [(CAMLevelViewModel *)self currentIndicatorAlpha];
  [(CAMLevelViewModel *)self _hysteresisAlphaForDesiredAlpha:v22 fromCurrentAlpha:v23];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __60__CAMLevelViewModel__updateStraightModeWithMode_roll_pitch___block_invoke;
  v25[3] = &__block_descriptor_56_e27_v16__0__CAMLevelViewModel_8l;
  v25[4] = a3;
  *&v25[5] = v13;
  v25[6] = v24;
  [(CAMObservable *)self performChanges:v25];
}

void __60__CAMLevelViewModel__updateStraightModeWithMode_roll_pitch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 _setDesiredUpdateInterval:0.0166666667];
  [v3 _setCurrentIndicatorMode:*(a1 + 32)];
  [v3 _setCurrentIndicatorRotationAngle:*(a1 + 40)];
  [v3 _setCurrentIndicatorAlpha:*(a1 + 48)];
}

- (double)_hysteresisAlphaForDesiredAlpha:(double)result fromCurrentAlpha:(double)a4
{
  v4 = fmax(a4 + -0.0833333333, 0.0);
  v5 = a4 + 0.0833333333;
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  if (v5 < result)
  {
    result = v5;
  }

  if (v4 >= result)
  {
    return v4;
  }

  return result;
}

- (int64_t)_hysteresisModeForDesiredMode:(int64_t)a3
{
  v3 = a3;
  if ([(CAMLevelViewModel *)self _desiredIndicatorMode]!= a3)
  {
    [(CAMLevelViewModel *)self _setDesiredIndicatorMode:v3];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(CAMLevelViewModel *)self _setDesiredModeBeganTime:?];
  }

  v5 = [(CAMLevelViewModel *)self currentIndicatorMode];
  v6 = v5;
  if (v3 || !v5)
  {
    if (v3)
    {
      if (!v5)
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v10 = v9;
        [(CAMLevelViewModel *)self _desiredModeBeganTime];
        if (v10 - v11 < 0.5)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    [(CAMLevelViewModel *)self currentIndicatorAlpha];
    [(CAMLevelViewModel *)self _hysteresisAlphaForDesiredAlpha:0.0 fromCurrentAlpha:v7];
    if (v8 <= 0.0)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return v3;
}

- (void)_setCurrentIndicatorMode:(int64_t)a3
{
  if (self->_currentIndicatorMode != a3)
  {
    self->_currentIndicatorMode = a3;
    [(CAMObservable *)self signalChange:1];
  }
}

- (void)_setCurrentIndicatorOffset:(UIOffset)a3
{
  if (a3.horizontal != self->_currentIndicatorOffset.horizontal || a3.vertical != self->_currentIndicatorOffset.vertical)
  {
    self->_currentIndicatorOffset = a3;
    [(CAMObservable *)self signalChange:2];
  }
}

- (void)_setCurrentIndicatorRotationAngle:(double)a3
{
  if (self->_currentIndicatorRotationAngle != a3)
  {
    self->_currentIndicatorRotationAngle = a3;
    [(CAMObservable *)self signalChange:16];
  }
}

- (void)_setCurrentIndicatorAlpha:(double)a3
{
  if (self->_currentIndicatorAlpha != a3)
  {
    self->_currentIndicatorAlpha = a3;
    [(CAMObservable *)self signalChange:4];
  }
}

- (void)_setDesiredUpdateInterval:(double)a3
{
  if (self->_desiredUpdateInterval != a3)
  {
    self->_desiredUpdateInterval = a3;
    [(CAMObservable *)self signalChange:8];
  }
}

- (UIOffset)currentIndicatorOffset
{
  horizontal = self->_currentIndicatorOffset.horizontal;
  vertical = self->_currentIndicatorOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end