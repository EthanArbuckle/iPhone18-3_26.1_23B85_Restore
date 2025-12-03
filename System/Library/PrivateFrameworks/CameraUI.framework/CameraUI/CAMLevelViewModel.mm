@interface CAMLevelViewModel
- (UIOffset)currentIndicatorOffset;
- (double)_hysteresisAlphaForDesiredAlpha:(double)result fromCurrentAlpha:(double)alpha;
- (int64_t)_hysteresisModeForDesiredMode:(int64_t)mode;
- (void)_deviceAngleForGravity:(id)gravity captureOrientation:(int64_t)orientation relativeRoll:(double *)roll relativePitch:(double *)pitch;
- (void)_setCurrentIndicatorAlpha:(double)alpha;
- (void)_setCurrentIndicatorMode:(int64_t)mode;
- (void)_setCurrentIndicatorOffset:(UIOffset)offset;
- (void)_setCurrentIndicatorRotationAngle:(double)angle;
- (void)_setDesiredUpdateInterval:(double)interval;
- (void)_updateFlatModeWithRoll:(float)roll pitch:(float)pitch magnitude:(float)magnitude;
- (void)_updateStraightModeWithMode:(int64_t)mode roll:(double)roll pitch:(double)pitch;
- (void)applyDeviceMotion:(id)motion captureOrientation:(int64_t)orientation;
@end

@implementation CAMLevelViewModel

- (void)_deviceAngleForGravity:(id)gravity captureOrientation:(int64_t)orientation relativeRoll:(double *)roll relativePitch:(double *)pitch
{
  var2 = gravity.var2;
  var1 = gravity.var1;
  if ((orientation - 1) > 1)
  {
    if ((orientation - 3) > 1)
    {
      return;
    }

    v9 = gravity.var1 / gravity.var0;
    var1 = gravity.var0;
  }

  else
  {
    v9 = gravity.var0 / gravity.var1;
  }

  *roll = atan(v9);
  v10 = var2 / var1;
  *pitch = atanf(v10);
}

- (void)applyDeviceMotion:(id)motion captureOrientation:(int64_t)orientation
{
  motionCopy = motion;
  attitude = [motionCopy attitude];
  [motionCopy gravity];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [attitude pitch];
  v15 = v14;
  v24 = 0.0;
  v25 = 0;
  v23 = 0.0;
  [attitude cam_getDistanceFromFlat:&v25 relativeRoll:&v25 + 4];
  [(CAMLevelViewModel *)self _deviceAngleForGravity:orientation captureOrientation:&v24 relativeRoll:&v23 relativePitch:v9, v11, v13];
  LODWORD(v16) = v25;
  if (*&v25 >= 0.25)
  {
    v18 = fabs(v24) >= 0.200000003;
    v16 = fabs(v23);
    if (v16 >= 0.600000024)
    {
      v18 = 1;
    }

    if ((orientation - 3) < 0xFFFFFFFFFFFFFFFELL || v18)
    {
      if ((orientation - 5) < 0xFFFFFFFFFFFFFFFELL)
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

- (void)_updateFlatModeWithRoll:(float)roll pitch:(float)pitch magnitude:(float)magnitude
{
  currentIndicatorMode = [(CAMLevelViewModel *)self currentIndicatorMode];
  [(CAMLevelViewModel *)self currentIndicatorOffset];
  v10 = *MEMORY[0x1E69DE258];
  v11 = *(MEMORY[0x1E69DE258] + 8);
  v15 = currentIndicatorMode == 1 && v9 == v11 && v8 == v10 && magnitude < 0.025;
  v16 = 1.0;
  if (magnitude >= 0.0175 && !v15)
  {
    v17 = (magnitude + -0.125) * -8.0 + 1.0;
    if (v17 > 1.0)
    {
      v17 = 1.0;
    }

    v16 = fmax(v17, 0.0);
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
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

- (void)_updateStraightModeWithMode:(int64_t)mode roll:(double)roll pitch:(double)pitch
{
  v8 = fabs(roll);
  currentIndicatorMode = [(CAMLevelViewModel *)self currentIndicatorMode];
  [(CAMLevelViewModel *)self currentIndicatorRotationAngle];
  v10 = v8 < 0.0150000006;
  if (v11 != 0.0 || (currentIndicatorMode & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v10 = 0;
  }

  rollCopy = 0.0;
  v14 = 1.0;
  if (v8 >= 0.0125000002 && !v10)
  {
    CEKProgressClamped();
    CEKInterpolateClamped();
    v14 = v15;
    rollCopy = roll;
  }

  CEKProgressClamped();
  CEKInterpolateClamped();
  v17 = v16;
  if (rollCopy != 0.0)
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
  v25[4] = mode;
  *&v25[5] = rollCopy;
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

- (double)_hysteresisAlphaForDesiredAlpha:(double)result fromCurrentAlpha:(double)alpha
{
  v4 = fmax(alpha + -0.0833333333, 0.0);
  v5 = alpha + 0.0833333333;
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

- (int64_t)_hysteresisModeForDesiredMode:(int64_t)mode
{
  modeCopy = mode;
  if ([(CAMLevelViewModel *)self _desiredIndicatorMode]!= mode)
  {
    [(CAMLevelViewModel *)self _setDesiredIndicatorMode:modeCopy];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(CAMLevelViewModel *)self _setDesiredModeBeganTime:?];
  }

  currentIndicatorMode = [(CAMLevelViewModel *)self currentIndicatorMode];
  v6 = currentIndicatorMode;
  if (modeCopy || !currentIndicatorMode)
  {
    if (modeCopy)
    {
      if (!currentIndicatorMode)
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

  return modeCopy;
}

- (void)_setCurrentIndicatorMode:(int64_t)mode
{
  if (self->_currentIndicatorMode != mode)
  {
    self->_currentIndicatorMode = mode;
    [(CAMObservable *)self signalChange:1];
  }
}

- (void)_setCurrentIndicatorOffset:(UIOffset)offset
{
  if (offset.horizontal != self->_currentIndicatorOffset.horizontal || offset.vertical != self->_currentIndicatorOffset.vertical)
  {
    self->_currentIndicatorOffset = offset;
    [(CAMObservable *)self signalChange:2];
  }
}

- (void)_setCurrentIndicatorRotationAngle:(double)angle
{
  if (self->_currentIndicatorRotationAngle != angle)
  {
    self->_currentIndicatorRotationAngle = angle;
    [(CAMObservable *)self signalChange:16];
  }
}

- (void)_setCurrentIndicatorAlpha:(double)alpha
{
  if (self->_currentIndicatorAlpha != alpha)
  {
    self->_currentIndicatorAlpha = alpha;
    [(CAMObservable *)self signalChange:4];
  }
}

- (void)_setDesiredUpdateInterval:(double)interval
{
  if (self->_desiredUpdateInterval != interval)
  {
    self->_desiredUpdateInterval = interval;
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