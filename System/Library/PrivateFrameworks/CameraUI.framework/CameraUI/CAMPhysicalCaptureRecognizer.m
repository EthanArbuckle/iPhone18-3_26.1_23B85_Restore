@interface CAMPhysicalCaptureRecognizer
- (CAMPhysicalCaptureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (int64_t)_captureButtonForPressType:(int64_t)a3;
- (void)_updateApplicationButtonStatus;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)reset;
- (void)setDesiredButtons:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation CAMPhysicalCaptureRecognizer

- (void)_updateApplicationButtonStatus
{
  v3 = [(CAMPhysicalCaptureRecognizer *)self isEnabled];
  v13 = [(CAMPhysicalCaptureRecognizer *)self desiredButtons];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v13 containsObject:&unk_1F16C8180];
  v6 = [v13 containsObject:&unk_1F16C8198];
  v7 = v6;
  v8 = v5 | v6;
  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  [v9 setWantsVolumeButtonEvents:v3 & v8];

  if (!v5)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    [v4 addObject:&unk_1F16C81C8];
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_10:
    v12 = [MEMORY[0x1E69DC668] sharedApplication];
    [v12 setWantsLockEvents:0];

    goto LABEL_11;
  }

  [v4 addObject:&unk_1F16C81B0];
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_4:
  v10 = [v13 containsObject:&unk_1F16C81E0];
  v11 = [MEMORY[0x1E69DC668] sharedApplication];
  [v11 setWantsLockEvents:v10];

  if (v10)
  {
    [v4 addObject:&unk_1F16C81F8];
  }

  if ([v13 containsObject:&unk_1F16C8210])
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

- (CAMPhysicalCaptureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v10.receiver = self;
  v10.super_class = CAMPhysicalCaptureRecognizer;
  v4 = [(CAMPhysicalCaptureRecognizer *)&v10 initWithTarget:a3 action:a4];
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

- (void)setDesiredButtons:(id)a3
{
  if (self->_desiredButtons != a3)
  {
    v4 = [a3 copy];
    desiredButtons = self->_desiredButtons;
    self->_desiredButtons = v4;

    [(CAMPhysicalCaptureRecognizer *)self _updateApplicationButtonStatus];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CAMPhysicalCaptureRecognizer;
  [(CAMPhysicalCaptureRecognizer *)&v4 setEnabled:a3];
  [(CAMPhysicalCaptureRecognizer *)self _updateApplicationButtonStatus];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if (![(CAMPhysicalCaptureRecognizer *)self state:a3])
  {

    [(CAMPhysicalCaptureRecognizer *)self setState:5];
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(CAMPhysicalCaptureRecognizer *)self isSuspended])
  {
    v23 = [(CAMPhysicalCaptureRecognizer *)self activeButtons];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = v6;
    obj = v6;
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
        v13 = [v12 type];
        v14 = [(CAMPhysicalCaptureRecognizer *)self _captureButtonForPressType:v13];
        if (!v14)
        {
          goto LABEL_14;
        }

        v15 = v14;
        v16 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
        if (([v23 containsObject:v16] & 1) == 0)
        {

LABEL_14:
          [(CAMPhysicalCaptureRecognizer *)self ignorePress:v12 forEvent:v7];
          goto LABEL_15;
        }

        v17 = [(CAMPhysicalCaptureRecognizer *)self state];

        if (v17)
        {
          goto LABEL_14;
        }

        v18 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
        if ([v23 containsObject:v18])
        {
          v19 = [(CAMPhysicalCaptureRecognizer *)self state];

          if (!v19)
          {
            [(CAMPhysicalCaptureRecognizer *)self setLastActiveButton:v15];
            [(CAMPhysicalCaptureRecognizer *)self setState:1];
            [(CAMPhysicalCaptureRecognizer *)self setPressType:v13];
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

        v6 = v21;
        break;
      }
    }
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  if ([(CAMPhysicalCaptureRecognizer *)self state:a3])
  {

    [(CAMPhysicalCaptureRecognizer *)self setState:3];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  if ([(CAMPhysicalCaptureRecognizer *)self state:a3])
  {

    [(CAMPhysicalCaptureRecognizer *)self setState:4];
  }
}

- (int64_t)_captureButtonForPressType:(int64_t)a3
{
  if (a3 > 103)
  {
    if (a3 != 104)
    {
      if (a3 == 601)
      {
        return 4;
      }

      return 0;
    }

    return 3;
  }

  else
  {
    if (a3 != 102)
    {
      if (a3 == 103)
      {
        return 2;
      }

      return 0;
    }

    return 1;
  }
}

@end