@interface FIUIValueAdjustmentButtonController
- (UIButton)decrementButton;
- (UIButton)incrementButton;
- (void)_incrementRepeatCount;
- (void)_notifyValueChanged;
- (void)_performPlusMinusActionWithButton:(id)a3;
- (void)_performPlusMinusActionWithIndexTranslationForButton:(id)a3;
- (void)_plusMinusActionTimerDidFire:(id)a3;
- (void)_plusMinusButtonTouchCancel:(id)a3;
- (void)_plusMinusButtonTouchDown:(id)a3;
- (void)_plusMinusButtonTouchUpInside:(id)a3;
- (void)_updateButton:(id)a3 forPressedState:(BOOL)a4;
- (void)_updatePlusMinusButtonStates;
- (void)setIncrementButton:(id)a3 decrementButton:(id)a4;
- (void)setValue:(double)a3;
@end

@implementation FIUIValueAdjustmentButtonController

- (void)setIncrementButton:(id)a3 decrementButton:(id)a4
{
  v6 = a4;
  objc_storeWeak(&self->_incrementButton, a3);
  objc_storeWeak(&self->_decrementButton, v6);

  WeakRetained = objc_loadWeakRetained(&self->_incrementButton);
  [WeakRetained addTarget:self action:sel__plusMinusButtonTouchDown_ forControlEvents:1];

  v8 = objc_loadWeakRetained(&self->_decrementButton);
  [v8 addTarget:self action:sel__plusMinusButtonTouchDown_ forControlEvents:1];

  v9 = objc_loadWeakRetained(&self->_incrementButton);
  [v9 addTarget:self action:sel__plusMinusButtonTouchUpInside_ forControlEvents:64];

  v10 = objc_loadWeakRetained(&self->_decrementButton);
  [v10 addTarget:self action:sel__plusMinusButtonTouchUpInside_ forControlEvents:64];

  v11 = objc_loadWeakRetained(&self->_incrementButton);
  [v11 addTarget:self action:sel__plusMinusButtonTouchCancel_ forControlEvents:448];

  v12 = objc_loadWeakRetained(&self->_decrementButton);
  [v12 addTarget:self action:sel__plusMinusButtonTouchCancel_ forControlEvents:448];
}

- (void)_plusMinusButtonTouchDown:(id)a3
{
  v8 = a3;
  [FIUIValueAdjustmentButtonController _updateButton:"_updateButton:forPressedState:" forPressedState:?];
  plusMinusActionTimer = self->_plusMinusActionTimer;
  if (plusMinusActionTimer)
  {
    [(NSTimer *)plusMinusActionTimer invalidate];
    v5 = self->_plusMinusActionTimer;
    self->_plusMinusActionTimer = 0;
  }

  self->_plusMinusActionRepeatCount = 0;
  v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__plusMinusActionTimerDidFire_ selector:v8 userInfo:1 repeats:0.25];
  v7 = self->_plusMinusActionTimer;
  self->_plusMinusActionTimer = v6;
}

- (void)_plusMinusButtonTouchUpInside:(id)a3
{
  if (!self->_plusMinusActionRepeatCount)
  {
    v5 = a3;
    [(FIUIValueAdjustmentButtonController *)self _performPlusMinusActionWithButton:v5];
    [(FIUIValueAdjustmentButtonController *)self _updateButton:v5 forPressedState:0];
  }
}

- (void)_plusMinusButtonTouchCancel:(id)a3
{
  [(FIUIValueAdjustmentButtonController *)self _updateButton:a3 forPressedState:0];
  [(NSTimer *)self->_plusMinusActionTimer invalidate];
  plusMinusActionTimer = self->_plusMinusActionTimer;
  self->_plusMinusActionTimer = 0;
}

- (void)_plusMinusActionTimerDidFire:(id)a3
{
  v4 = [a3 userInfo];
  [(FIUIValueAdjustmentButtonController *)self _performPlusMinusActionWithButton:v4];
}

- (void)_performPlusMinusActionWithButton:(id)a3
{
  v14 = a3;
  v4 = [(FIUIValueAdjustmentButtonController *)self lapLengthIndexTranslator];

  if (v4)
  {
    [(FIUIValueAdjustmentButtonController *)self _performPlusMinusActionWithIndexTranslationForButton:v14];
    goto LABEL_12;
  }

  [(FIUIValueAdjustmentButtonController *)self value];
  v6 = v5;
  [(FIUIValueAdjustmentButtonController *)self valueStepIncremement];
  v8 = v7;
  v9 = round(v6 / v7 * 1000.0) / 1000.0;
  WeakRetained = objc_loadWeakRetained(&self->_decrementButton);

  if (WeakRetained == v14)
  {
    v11 = floor(v9);
    v12 = v9 - v11;
    if (v9 - v11 >= 2.22044605e-16)
    {
      goto LABEL_9;
    }

    v13 = -1.0;
  }

  else
  {
    v11 = ceil(v9);
    v12 = v11 - v9;
    if (v11 - v9 >= 2.22044605e-16)
    {
      goto LABEL_9;
    }

    v13 = 1.0;
  }

  v11 = v9 + v13;
LABEL_9:
  [(FIUIValueAdjustmentButtonController *)self setValue:v8 * v11, v12];
  self->_didUserUpdatevalue = 1;
  if ([v14 isEnabled])
  {
    [(FIUIValueAdjustmentButtonController *)self _incrementRepeatCount];
  }

  else
  {
    [(FIUIValueAdjustmentButtonController *)self _plusMinusButtonTouchCancel:v14];
  }

LABEL_12:
}

- (void)_performPlusMinusActionWithIndexTranslationForButton:(id)a3
{
  v11 = a3;
  [(FIUIValueAdjustmentButtonController *)self value];
  v5 = v4;
  v6 = [(FIUIValueAdjustmentButtonController *)self lapLengthIndexTranslator];
  v7 = [v6 indexForValue:v5];

  WeakRetained = objc_loadWeakRetained(&self->_decrementButton);
  if (WeakRetained == v11)
  {
    v9 = v7 - 1;
  }

  else
  {
    v9 = v7 + 1;
  }

  v10 = [(FIUIValueAdjustmentButtonController *)self lapLengthIndexTranslator];
  [v10 valueForIndex:v9];
  [(FIUIValueAdjustmentButtonController *)self setValue:?];

  self->_didUserUpdatevalue = 1;
  if ([v11 isEnabled])
  {
    [(FIUIValueAdjustmentButtonController *)self _incrementRepeatCount];
  }

  else
  {
    [(FIUIValueAdjustmentButtonController *)self _plusMinusButtonTouchCancel:v11];
  }
}

- (void)_incrementRepeatCount
{
  plusMinusActionTimer = self->_plusMinusActionTimer;
  plusMinusActionRepeatCount = self->_plusMinusActionRepeatCount;
  v4 = dbl_1E5DB1A80[plusMinusActionRepeatCount > 18];
  self->_plusMinusActionRepeatCount = plusMinusActionRepeatCount + 1;
  if (plusMinusActionRepeatCount <= 3)
  {
    v4 = 0.25;
  }

  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v4];
  [(NSTimer *)plusMinusActionTimer setFireDate:v5];
}

- (void)setValue:(double)a3
{
  [(FIUIValueAdjustmentButtonController *)self minValue];
  if (v6 > a3)
  {
    [(FIUIValueAdjustmentButtonController *)self minValue];
    a3 = v7;
  }

  [(FIUIValueAdjustmentButtonController *)self maxValue];
  if (a3 > v8)
  {
    [(FIUIValueAdjustmentButtonController *)self maxValue];
    a3 = v9;
  }

  [(FIUIValueAdjustmentButtonController *)self minumumStepValueIncrement];
  if (v10 > 0.0)
  {
    a3 = v10 * round(a3 / v10);
  }

  self->_value = a3;
  [(FIUIValueAdjustmentButtonController *)self _notifyValueChanged];

  [(FIUIValueAdjustmentButtonController *)self _updatePlusMinusButtonStates];
}

- (void)_notifyValueChanged
{
  v3 = [(FIUIValueAdjustmentButtonController *)self valueUpdateHandler];

  if (v3)
  {
    v4 = [(FIUIValueAdjustmentButtonController *)self valueUpdateHandler];
    v4[2]();
  }
}

- (void)_updatePlusMinusButtonStates
{
  [(FIUIValueAdjustmentButtonController *)self value];
  v4 = v3;
  [(FIUIValueAdjustmentButtonController *)self minValue];
  v6 = v4 - v5 > 2.22044605e-16;
  v7 = [(FIUIValueAdjustmentButtonController *)self decrementButton];
  [v7 setEnabled:v6];

  [(FIUIValueAdjustmentButtonController *)self valueStepIncremement];
  v9 = v4 + v8;
  [(FIUIValueAdjustmentButtonController *)self maxValue];
  v11 = v9 <= v10;
  v12 = [(FIUIValueAdjustmentButtonController *)self incrementButton];
  [v12 setEnabled:v11];
}

- (void)_updateButton:(id)a3 forPressedState:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  self->_didUserUpdatevalue = 1;
  v6 = [(FIUIValueAdjustmentButtonController *)self buttonStateUpdateHandler];

  if (v6)
  {
    v7 = [(FIUIValueAdjustmentButtonController *)self buttonStateUpdateHandler];
    (v7)[2](v7, v8, v4);
  }
}

- (UIButton)incrementButton
{
  WeakRetained = objc_loadWeakRetained(&self->_incrementButton);

  return WeakRetained;
}

- (UIButton)decrementButton
{
  WeakRetained = objc_loadWeakRetained(&self->_decrementButton);

  return WeakRetained;
}

@end