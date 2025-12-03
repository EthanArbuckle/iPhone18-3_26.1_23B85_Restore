@interface FIUIValueAdjustmentButtonController
- (UIButton)decrementButton;
- (UIButton)incrementButton;
- (void)_incrementRepeatCount;
- (void)_notifyValueChanged;
- (void)_performPlusMinusActionWithButton:(id)button;
- (void)_performPlusMinusActionWithIndexTranslationForButton:(id)button;
- (void)_plusMinusActionTimerDidFire:(id)fire;
- (void)_plusMinusButtonTouchCancel:(id)cancel;
- (void)_plusMinusButtonTouchDown:(id)down;
- (void)_plusMinusButtonTouchUpInside:(id)inside;
- (void)_updateButton:(id)button forPressedState:(BOOL)state;
- (void)_updatePlusMinusButtonStates;
- (void)setIncrementButton:(id)button decrementButton:(id)decrementButton;
- (void)setValue:(double)value;
@end

@implementation FIUIValueAdjustmentButtonController

- (void)setIncrementButton:(id)button decrementButton:(id)decrementButton
{
  decrementButtonCopy = decrementButton;
  objc_storeWeak(&self->_incrementButton, button);
  objc_storeWeak(&self->_decrementButton, decrementButtonCopy);

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

- (void)_plusMinusButtonTouchDown:(id)down
{
  downCopy = down;
  [FIUIValueAdjustmentButtonController _updateButton:"_updateButton:forPressedState:" forPressedState:?];
  plusMinusActionTimer = self->_plusMinusActionTimer;
  if (plusMinusActionTimer)
  {
    [(NSTimer *)plusMinusActionTimer invalidate];
    v5 = self->_plusMinusActionTimer;
    self->_plusMinusActionTimer = 0;
  }

  self->_plusMinusActionRepeatCount = 0;
  v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__plusMinusActionTimerDidFire_ selector:downCopy userInfo:1 repeats:0.25];
  v7 = self->_plusMinusActionTimer;
  self->_plusMinusActionTimer = v6;
}

- (void)_plusMinusButtonTouchUpInside:(id)inside
{
  if (!self->_plusMinusActionRepeatCount)
  {
    insideCopy = inside;
    [(FIUIValueAdjustmentButtonController *)self _performPlusMinusActionWithButton:insideCopy];
    [(FIUIValueAdjustmentButtonController *)self _updateButton:insideCopy forPressedState:0];
  }
}

- (void)_plusMinusButtonTouchCancel:(id)cancel
{
  [(FIUIValueAdjustmentButtonController *)self _updateButton:cancel forPressedState:0];
  [(NSTimer *)self->_plusMinusActionTimer invalidate];
  plusMinusActionTimer = self->_plusMinusActionTimer;
  self->_plusMinusActionTimer = 0;
}

- (void)_plusMinusActionTimerDidFire:(id)fire
{
  userInfo = [fire userInfo];
  [(FIUIValueAdjustmentButtonController *)self _performPlusMinusActionWithButton:userInfo];
}

- (void)_performPlusMinusActionWithButton:(id)button
{
  buttonCopy = button;
  lapLengthIndexTranslator = [(FIUIValueAdjustmentButtonController *)self lapLengthIndexTranslator];

  if (lapLengthIndexTranslator)
  {
    [(FIUIValueAdjustmentButtonController *)self _performPlusMinusActionWithIndexTranslationForButton:buttonCopy];
    goto LABEL_12;
  }

  [(FIUIValueAdjustmentButtonController *)self value];
  v6 = v5;
  [(FIUIValueAdjustmentButtonController *)self valueStepIncremement];
  v8 = v7;
  v9 = round(v6 / v7 * 1000.0) / 1000.0;
  WeakRetained = objc_loadWeakRetained(&self->_decrementButton);

  if (WeakRetained == buttonCopy)
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
  if ([buttonCopy isEnabled])
  {
    [(FIUIValueAdjustmentButtonController *)self _incrementRepeatCount];
  }

  else
  {
    [(FIUIValueAdjustmentButtonController *)self _plusMinusButtonTouchCancel:buttonCopy];
  }

LABEL_12:
}

- (void)_performPlusMinusActionWithIndexTranslationForButton:(id)button
{
  buttonCopy = button;
  [(FIUIValueAdjustmentButtonController *)self value];
  v5 = v4;
  lapLengthIndexTranslator = [(FIUIValueAdjustmentButtonController *)self lapLengthIndexTranslator];
  v7 = [lapLengthIndexTranslator indexForValue:v5];

  WeakRetained = objc_loadWeakRetained(&self->_decrementButton);
  if (WeakRetained == buttonCopy)
  {
    v9 = v7 - 1;
  }

  else
  {
    v9 = v7 + 1;
  }

  lapLengthIndexTranslator2 = [(FIUIValueAdjustmentButtonController *)self lapLengthIndexTranslator];
  [lapLengthIndexTranslator2 valueForIndex:v9];
  [(FIUIValueAdjustmentButtonController *)self setValue:?];

  self->_didUserUpdatevalue = 1;
  if ([buttonCopy isEnabled])
  {
    [(FIUIValueAdjustmentButtonController *)self _incrementRepeatCount];
  }

  else
  {
    [(FIUIValueAdjustmentButtonController *)self _plusMinusButtonTouchCancel:buttonCopy];
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

- (void)setValue:(double)value
{
  [(FIUIValueAdjustmentButtonController *)self minValue];
  if (v6 > value)
  {
    [(FIUIValueAdjustmentButtonController *)self minValue];
    value = v7;
  }

  [(FIUIValueAdjustmentButtonController *)self maxValue];
  if (value > v8)
  {
    [(FIUIValueAdjustmentButtonController *)self maxValue];
    value = v9;
  }

  [(FIUIValueAdjustmentButtonController *)self minumumStepValueIncrement];
  if (v10 > 0.0)
  {
    value = v10 * round(value / v10);
  }

  self->_value = value;
  [(FIUIValueAdjustmentButtonController *)self _notifyValueChanged];

  [(FIUIValueAdjustmentButtonController *)self _updatePlusMinusButtonStates];
}

- (void)_notifyValueChanged
{
  valueUpdateHandler = [(FIUIValueAdjustmentButtonController *)self valueUpdateHandler];

  if (valueUpdateHandler)
  {
    valueUpdateHandler2 = [(FIUIValueAdjustmentButtonController *)self valueUpdateHandler];
    valueUpdateHandler2[2]();
  }
}

- (void)_updatePlusMinusButtonStates
{
  [(FIUIValueAdjustmentButtonController *)self value];
  v4 = v3;
  [(FIUIValueAdjustmentButtonController *)self minValue];
  v6 = v4 - v5 > 2.22044605e-16;
  decrementButton = [(FIUIValueAdjustmentButtonController *)self decrementButton];
  [decrementButton setEnabled:v6];

  [(FIUIValueAdjustmentButtonController *)self valueStepIncremement];
  v9 = v4 + v8;
  [(FIUIValueAdjustmentButtonController *)self maxValue];
  v11 = v9 <= v10;
  incrementButton = [(FIUIValueAdjustmentButtonController *)self incrementButton];
  [incrementButton setEnabled:v11];
}

- (void)_updateButton:(id)button forPressedState:(BOOL)state
{
  stateCopy = state;
  buttonCopy = button;
  self->_didUserUpdatevalue = 1;
  buttonStateUpdateHandler = [(FIUIValueAdjustmentButtonController *)self buttonStateUpdateHandler];

  if (buttonStateUpdateHandler)
  {
    buttonStateUpdateHandler2 = [(FIUIValueAdjustmentButtonController *)self buttonStateUpdateHandler];
    (buttonStateUpdateHandler2)[2](buttonStateUpdateHandler2, buttonCopy, stateCopy);
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