@interface CBPreset
+ (id)newActive:(unint64_t)active;
- (CBPreset)initWithCAPreset:(id)preset;
@end

@implementation CBPreset

+ (id)newActive:(unint64_t)active
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v17 = a2;
  activeCopy = active;
  currentPreset = 0;
  memset(__b, 0, sizeof(__b));
  obj = [MEMORY[0x1E6979328] displays];
  v12 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v14 = 0;
      v14 = *(__b[1] + 8 * v9);
      displayId = [v14 displayId];
      if (displayId == activeCopy)
      {
        currentPreset = [v14 currentPreset];
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  if (currentPreset)
  {
    v4 = [selfCopy alloc];
    v6 = [v4 initWithCAPreset:currentPreset];
  }

  else
  {
    v6 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

- (CBPreset)initWithCAPreset:(id)preset
{
  selfCopy = self;
  v13 = a2;
  presetCopy = preset;
  v11.receiver = self;
  v11.super_class = CBPreset;
  selfCopy = [(CBPreset *)&v11 init];
  if (selfCopy)
  {
    allowAutoBrightness = [presetCopy allowAutoBrightness];
    selfCopy->_autoBrighnessDisabled = (allowAutoBrightness ^ 1) & 1;
    allowTrueTone = [presetCopy allowTrueTone];
    selfCopy->_trueToneDisabled = (allowTrueTone ^ 1) & 1;
    allowNightShift = [presetCopy allowNightShift];
    selfCopy->_nightShiftDisabled = (allowNightShift ^ 1) & 1;
    [presetCopy minSliderBrightness];
    v10 = v6;
    [presetCopy maxSliderBrightness];
    selfCopy->_brightnessDisabled = vabdd_f64(v10, v7) < 0.5;
    isReference = [presetCopy isReference];
    selfCopy->_referenceMode = isReference;
  }

  return selfCopy;
}

@end