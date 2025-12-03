@interface HKPropertyAnimation
- (BOOL)_isCompleted;
- (HKPropertyAnimation)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_applyWithCurrentDate:(id)date;
- (void)_finishCancelled:(BOOL)cancelled;
- (void)_validate;
@end

@implementation HKPropertyAnimation

- (HKPropertyAnimation)init
{
  v6.receiver = self;
  v6.super_class = HKPropertyAnimation;
  v2 = [(HKPropertyAnimation *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
    timingFunction = v2->_timingFunction;
    v2->_timingFunction = v3;

    v2->_secondaryAnimationCurve = 0;
  }

  return v2;
}

- (void)_applyWithCurrentDate:(id)date
{
  [date timeIntervalSinceDate:self->_appliedDate];
  v5 = v4 / self->_duration;
  *&v5 = v5;
  if (*&v5 > 1.0)
  {
    *&v5 = 1.0;
  }

  [(CAMediaTimingFunction *)self->_timingFunction _solveForInput:v5];
  v7 = v6;
  secondaryAnimationCurve = self->_secondaryAnimationCurve;
  v9 = 1.0 - (v7 + -1.0) * (v7 + -1.0);
  if (secondaryAnimationCurve == 1)
  {
    v7 = v7 * v7;
  }

  if (secondaryAnimationCurve == 2)
  {
    v7 = v9;
  }

  v10 = [self->_fromValue hk_midPointToValue:self->_toValue percentage:v7];
  (*(self->_propertyApplicationFunction + 2))();
}

- (BOOL)_isCompleted
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:self->_appliedDate];
  LOBYTE(self) = v4 >= self->_duration;

  return self;
}

- (void)_validate
{
  OUTLINED_FUNCTION_1_1();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_finishCancelled:(BOOL)cancelled
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, cancelled);
    v5 = self->_completion;
  }

  else
  {
    v5 = 0;
  }

  self->_completion = 0;

  propertyApplicationFunction = self->_propertyApplicationFunction;
  self->_propertyApplicationFunction = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v4 + 8), self->_property);
  *(v4 + 32) = self->_duration;
  objc_storeStrong((v4 + 16), self->_fromValue);
  objc_storeStrong((v4 + 24), self->_toValue);
  objc_storeStrong((v4 + 72), self->_appliedDate);
  objc_storeStrong((v4 + 40), self->_timingFunction);
  v5 = _Block_copy(self->_completion);
  v6 = *(v4 + 56);
  *(v4 + 56) = v5;

  v7 = _Block_copy(self->_propertyApplicationFunction);
  v8 = *(v4 + 64);
  *(v4 + 64) = v7;

  *(v4 + 48) = self->_secondaryAnimationCurve;
  return v4;
}

@end