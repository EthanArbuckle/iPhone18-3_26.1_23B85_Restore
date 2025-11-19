@interface CSComplicationPresentationState
- (BOOL)isEqual:(id)a3;
- (_BYTE)initWithVisibility:(char)a3 isScreenOff:(uint64_t)a4 backlightLuminance:(uint64_t)a5 interfaceOrientation:;
- (id)description;
- (uint64_t)backlightLuminance;
- (uint64_t)interfaceOrientation;
- (uint64_t)isEqualToComplicationPresentationState:(uint64_t)a1;
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

  v6 = [MEMORY[0x277CF0CA8] sharedInstance];
  v7 = [v6 deviceClass];

  self->_suggestedComplicationPresentationMode = v5;
  if (BSInterfaceOrientationIsLandscape())
  {
    v8 = v7 == 2;
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
  v12 = [v3 build];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(CSComplicationPresentationState *)self isEqualToComplicationPresentationState:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_BYTE)initWithVisibility:(char)a3 isScreenOff:(uint64_t)a4 backlightLuminance:(uint64_t)a5 interfaceOrientation:
{
  if (!a1)
  {
    return 0;
  }

  v12.receiver = a1;
  v12.super_class = CSComplicationPresentationState;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  v10 = v9;
  if (v9)
  {
    v9[8] = a2;
    v9[9] = a3;
    *(v9 + 2) = a4;
    *(v9 + 3) = a5;
    [v9 _hydrateSuggestedPresentationMode];
  }

  return v10;
}

- (uint64_t)isEqualToComplicationPresentationState:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (v3)
    {
      if (*(v3 + 8) == *(a1 + 8) && v3[2] == *(a1 + 16) && *(v3 + 9) == *(a1 + 9))
      {
        v4 = v3[3];
LABEL_7:
        a1 = v4 == *(a1 + 24);
        goto LABEL_12;
      }
    }

    else if ((*(a1 + 8) & 1) == 0 && !*(a1 + 16) && (*(a1 + 9) & 1) == 0)
    {
      v4 = 0;
      goto LABEL_7;
    }

    a1 = 0;
  }

LABEL_12:

  return a1;
}

- (uint64_t)isPresenterVisible
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_7(*(a1 + 8));
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
  if (a1)
  {
    return OUTLINED_FUNCTION_0_7(*(a1 + 9));
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
  if (a1)
  {
    return OUTLINED_FUNCTION_0_7(*(a1 + 10));
  }

  else
  {
    return OUTLINED_FUNCTION_0_7(0);
  }
}

@end