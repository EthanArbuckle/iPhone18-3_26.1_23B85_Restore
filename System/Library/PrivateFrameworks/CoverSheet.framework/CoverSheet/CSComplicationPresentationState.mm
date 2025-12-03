@interface CSComplicationPresentationState
- (BOOL)isEqual:(id)equal;
- (_BYTE)initWithVisibility:(char)visibility isScreenOff:(uint64_t)off backlightLuminance:(uint64_t)luminance interfaceOrientation:;
- (id)description;
- (uint64_t)backlightLuminance;
- (uint64_t)interfaceOrientation;
- (uint64_t)isEqualToComplicationPresentationState:(uint64_t)state;
- (uint64_t)isPresenterVisible;
- (uint64_t)isScreenOff;
- (uint64_t)shouldPresentLandscapeComplications;
- (uint64_t)suggestedComplicationPresentationMode;
- (void)_hydrateSuggestedPresentationMode;
@end

@implementation CSComplicationPresentationState

- (void)_hydrateSuggestedPresentationMode
{
  if (self)
  {
    screenOff = self->_screenOff;
    v4 = 1;
    if (self->_backlightLuminance >= 1)
    {
      v4 = 2;
    }

    if (self->_presenterVisible)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    screenOff = 0;
    v5 = 1;
  }

  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  deviceClass = [mEMORY[0x277CF0CA8] deviceClass];

  self->_suggestedComplicationPresentationMode = v5;
  if (BSInterfaceOrientationIsLandscape())
  {
    v8 = deviceClass == 2;
  }

  else
  {
    v8 = 0;
  }

  self->_shouldPresentLandscapeComplications = v8 && !screenOff && self->_suggestedComplicationPresentationMode == 2;
}

- (uint64_t)suggestedComplicationPresentationMode
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_presenterVisible withName:@"isPresenterVisible"];
  v5 = [v3 appendBool:self->_screenOff withName:@"isScreenOff"];
  v6 = self->_backlightLuminance + 1;
  if (v6 > 3)
  {
    v7 = @"Invalid Backlight Luminance specified";
  }

  else
  {
    v7 = off_27838DA78[v6];
  }

  [v3 appendString:v7 withName:@"_backlightLuminance"];
  v8 = SBFStringForBSInterfaceOrientation();
  [v3 appendString:v8 withName:@"_interfaceOrientation"];

  suggestedComplicationPresentationMode = self->_suggestedComplicationPresentationMode;
  if (suggestedComplicationPresentationMode > 3)
  {
    v10 = @"Invalid Mode Defined";
  }

  else
  {
    v10 = off_27838DA98[suggestedComplicationPresentationMode];
  }

  [v3 appendString:v10 withName:@"suggestedPortraitPresentationMode"];
  v11 = [v3 appendBool:self->_shouldPresentLandscapeComplications withName:@"shouldPresentLandscapeComplications"];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(CSComplicationPresentationState *)self isEqualToComplicationPresentationState:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_BYTE)initWithVisibility:(char)visibility isScreenOff:(uint64_t)off backlightLuminance:(uint64_t)luminance interfaceOrientation:
{
  if (!self)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = CSComplicationPresentationState;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  v10 = v9;
  if (v9)
  {
    v9[8] = a2;
    v9[9] = visibility;
    *(v9 + 2) = off;
    *(v9 + 3) = luminance;
    [v9 _hydrateSuggestedPresentationMode];
  }

  return v10;
}

- (uint64_t)isEqualToComplicationPresentationState:(uint64_t)state
{
  v3 = a2;
  if (state)
  {
    if (v3)
    {
      if (*(v3 + 8) == *(state + 8) && v3[2] == *(state + 16) && *(v3 + 9) == *(state + 9))
      {
        v4 = v3[3];
LABEL_7:
        state = v4 == *(state + 24);
        goto LABEL_12;
      }
    }

    else if ((*(state + 8) & 1) == 0 && !*(state + 16) && (*(state + 9) & 1) == 0)
    {
      v4 = 0;
      goto LABEL_7;
    }

    state = 0;
  }

LABEL_12:

  return state;
}

- (uint64_t)isPresenterVisible
{
  if (self)
  {
    return OUTLINED_FUNCTION_0_7(*(self + 8));
  }

  else
  {
    return OUTLINED_FUNCTION_0_7(0);
  }
}

- (uint64_t)backlightLuminance
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)isScreenOff
{
  if (self)
  {
    return OUTLINED_FUNCTION_0_7(*(self + 9));
  }

  else
  {
    return OUTLINED_FUNCTION_0_7(0);
  }
}

- (uint64_t)interfaceOrientation
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)shouldPresentLandscapeComplications
{
  if (self)
  {
    return OUTLINED_FUNCTION_0_7(*(self + 10));
  }

  else
  {
    return OUTLINED_FUNCTION_0_7(0);
  }
}

@end