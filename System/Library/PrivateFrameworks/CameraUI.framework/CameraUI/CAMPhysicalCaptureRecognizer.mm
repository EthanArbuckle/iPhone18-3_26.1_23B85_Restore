@interface CAMPhysicalCaptureRecognizer
- (CAMPhysicalCaptureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (int64_t)_captureButtonForPressType:(int64_t)type;
- (void)_updateApplicationButtonStatus;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)reset;
- (void)setDesiredButtons:(id)buttons;
- (void)setEnabled:(BOOL)enabled;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation CAMPhysicalCaptureRecognizer

- (void)_updateApplicationButtonStatus
{
  isEnabled = [(CAMPhysicalCaptureRecognizer *)self isEnabled];
  desiredButtons = [(CAMPhysicalCaptureRecognizer *)self desiredButtons];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [desiredButtons containsObject:&unk_1F16C8180];
  v6 = [desiredButtons containsObject:&unk_1F16C8198];
  v7 = v6;
  v8 = v5 | v6;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] setWantsVolumeButtonEvents:isEnabled & v8];

  if (!v5)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    [v4 addObject:&unk_1F16C81C8];
    if (isEnabled)
    {
      goto LABEL_4;
    }

LABEL_10:
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668]2 setWantsLockEvents:0];

    goto LABEL_11;
  }

  [v4 addObject:&unk_1F16C81B0];
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!isEnabled)
  {
    goto LABEL_10;
  }

LABEL_4:
  v10 = [desiredButtons containsObject:&unk_1F16C81E0];
  mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668]3 setWantsLockEvents:v10];

  if (v10)
  {
    [v4 addObject:&unk_1F16C81F8];
  }

  if ([desiredButtons containsObject:&unk_1F16C8210])
  {
    [v4 addObject:&unk_1F16C8228];
  }

LABEL_11:
  [(CAMPhysicalCaptureRecognizer *)self setAllowedPressTypes:v4];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = CAMPhysicalCaptureRecognizer;
  [(CAMPhysicalCaptureRecognizer *)&v3 reset];
  [(CAMPhysicalCaptureRecognizer *)self setPressType:-1];
}

- (CAMPhysicalCaptureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v10.receiver = self;
  v10.super_class = CAMPhysicalCaptureRecognizer;
  v4 = [(CAMPhysicalCaptureRecognizer *)&v10 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    v4->_suspended = 0;
    v4->_lastActiveButton = 0;
    activeButtons = v4->_activeButtons;
    v4->_activeButtons = 0;

    desiredButtons = v5->_desiredButtons;
    v5->_desiredButtons = 0;

    v5->_pressType = -1;
    [(CAMPhysicalCaptureRecognizer *)v5 _updateApplicationButtonStatus];
    v8 = v5;
  }

  return v5;
}

- (void)setDesiredButtons:(id)buttons
{
  if (self->_desiredButtons != buttons)
  {
    v4 = [buttons copy];
    desiredButtons = self->_desiredButtons;
    self->_desiredButtons = v4;

    [(CAMPhysicalCaptureRecognizer *)self _updateApplicationButtonStatus];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = CAMPhysicalCaptureRecognizer;
  [(CAMPhysicalCaptureRecognizer *)&v4 setEnabled:enabled];
  [(CAMPhysicalCaptureRecognizer *)self _updateApplicationButtonStatus];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if (![(CAMPhysicalCaptureRecognizer *)self state:began])
  {

    [(CAMPhysicalCaptureRecognizer *)self setState:5];
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v29 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  eventCopy = event;
  if (![(CAMPhysicalCaptureRecognizer *)self isSuspended])
  {
    activeButtons = [(CAMPhysicalCaptureRecognizer *)self activeButtons];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = beganCopy;
    obj = beganCopy;
    v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = v8;
    v10 = *v25;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        type = [v12 type];
        v14 = [(CAMPhysicalCaptureRecognizer *)self _captureButtonForPressType:type];
        if (!v14)
        {
          goto LABEL_14;
        }

        v15 = v14;
        v16 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
        if (([activeButtons containsObject:v16] & 1) == 0)
        {

LABEL_14:
          [(CAMPhysicalCaptureRecognizer *)self ignorePress:v12 forEvent:eventCopy];
          goto LABEL_15;
        }

        state = [(CAMPhysicalCaptureRecognizer *)self state];

        if (state)
        {
          goto LABEL_14;
        }

        v18 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
        if ([activeButtons containsObject:v18])
        {
          state2 = [(CAMPhysicalCaptureRecognizer *)self state];

          if (!state2)
          {
            [(CAMPhysicalCaptureRecognizer *)self setLastActiveButton:v15];
            [(CAMPhysicalCaptureRecognizer *)self setState:1];
            [(CAMPhysicalCaptureRecognizer *)self setPressType:type];
          }
        }

        else
        {
        }

LABEL_15:
        ++v11;
      }

      while (v9 != v11);
      v20 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      v9 = v20;
      if (!v20)
      {
LABEL_19:

        beganCopy = v21;
        break;
      }
    }
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  if ([(CAMPhysicalCaptureRecognizer *)self state:ended])
  {

    [(CAMPhysicalCaptureRecognizer *)self setState:3];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(CAMPhysicalCaptureRecognizer *)self state:cancelled])
  {

    [(CAMPhysicalCaptureRecognizer *)self setState:4];
  }
}

- (int64_t)_captureButtonForPressType:(int64_t)type
{
  if (type > 103)
  {
    if (type != 104)
    {
      if (type == 601)
      {
        return 4;
      }

      return 0;
    }

    return 3;
  }

  else
  {
    if (type != 102)
    {
      if (type == 103)
      {
        return 2;
      }

      return 0;
    }

    return 1;
  }
}

@end