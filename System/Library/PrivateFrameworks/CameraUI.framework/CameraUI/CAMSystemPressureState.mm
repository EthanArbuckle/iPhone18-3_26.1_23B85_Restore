@interface CAMSystemPressureState
- (BOOL)isCameraTooHot;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSystemPressureState:(id)state;
- (BOOL)shouldDisableOptionalUIEffects;
- (BOOL)shouldDisablePIPMotionBlur;
- (CAMSystemPressureState)initWithCaptureSystemPressureState:(id)state;
- (id)description;
@end

@implementation CAMSystemPressureState

- (CAMSystemPressureState)initWithCaptureSystemPressureState:(id)state
{
  stateCopy = state;
  v10.receiver = self;
  v10.super_class = CAMSystemPressureState;
  v6 = [(CAMSystemPressureState *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__underlyingSystemPressureState, state);
    v8 = v7;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CAMSystemPressureState *)self isEqualToSystemPressureState:equalCopy];

  return v5;
}

- (BOOL)isEqualToSystemPressureState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy == self)
  {
    goto LABEL_6;
  }

  _underlyingSystemPressureState = [(CAMSystemPressureState *)stateCopy _underlyingSystemPressureState];
  if (!_underlyingSystemPressureState)
  {
    _underlyingSystemPressureState2 = [(CAMSystemPressureState *)self _underlyingSystemPressureState];

    if (_underlyingSystemPressureState2)
    {
      goto LABEL_5;
    }

LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

LABEL_5:
  _underlyingSystemPressureState3 = [(CAMSystemPressureState *)v5 _underlyingSystemPressureState];
  _underlyingSystemPressureState4 = [(CAMSystemPressureState *)self _underlyingSystemPressureState];
  v10 = [_underlyingSystemPressureState3 isEqual:_underlyingSystemPressureState4];

LABEL_7:
  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CAMSystemPressureState;
  v4 = [(CAMSystemPressureState *)&v8 description];
  _underlyingSystemPressureState = [(CAMSystemPressureState *)self _underlyingSystemPressureState];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, _underlyingSystemPressureState];

  return v6;
}

- (BOOL)isCameraTooHot
{
  _underlyingSystemPressureState = [(CAMSystemPressureState *)self _underlyingSystemPressureState];
  if (([_underlyingSystemPressureState factors] & 8) != 0)
  {
    level = [_underlyingSystemPressureState level];
    v3 = [level isEqualToString:*MEMORY[0x1E6986B68]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldDisablePIPMotionBlur
{
  _underlyingSystemPressureState = [(CAMSystemPressureState *)self _underlyingSystemPressureState];
  level = [_underlyingSystemPressureState level];

  if ([level isEqualToString:*MEMORY[0x1E6986B60]] & 1) != 0 || (objc_msgSend(level, "isEqualToString:", *MEMORY[0x1E6986B58]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [level isEqualToString:*MEMORY[0x1E6986B68]];
  }

  return v4;
}

- (BOOL)shouldDisableOptionalUIEffects
{
  _underlyingSystemPressureState = [(CAMSystemPressureState *)self _underlyingSystemPressureState];
  level = [_underlyingSystemPressureState level];

  if ([level isEqualToString:*MEMORY[0x1E6986B60]] & 1) != 0 || (objc_msgSend(level, "isEqualToString:", *MEMORY[0x1E6986B58]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [level isEqualToString:*MEMORY[0x1E6986B68]];
  }

  return v4;
}

@end