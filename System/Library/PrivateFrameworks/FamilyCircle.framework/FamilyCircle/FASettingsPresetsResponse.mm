@interface FASettingsPresetsResponse
- (FASettingsPresetsResponse)initWithAvailablePresets:(id)presets expectedPreset:(id)preset currentPreset:(id)currentPreset;
- (FASettingsPresetsResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FASettingsPresetsResponse

- (FASettingsPresetsResponse)initWithAvailablePresets:(id)presets expectedPreset:(id)preset currentPreset:(id)currentPreset
{
  presetsCopy = presets;
  presetCopy = preset;
  currentPresetCopy = currentPreset;
  v15.receiver = self;
  v15.super_class = FASettingsPresetsResponse;
  v11 = [(FASettingsPresetsResponse *)&v15 init];
  v12 = v11;
  if (v11)
  {
    if (presetsCopy)
    {
      v13 = presetsCopy;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v11->_availablePresets, v13);
    objc_storeStrong(&v12->_expectedPreset, preset);
    objc_storeStrong(&v12->_currentPreset, currentPreset);
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  availablePresets = self->_availablePresets;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_availablePresets);
  [coderCopy encodeObject:availablePresets forKey:v6];

  expectedPreset = self->_expectedPreset;
  v8 = NSStringFromSelector(sel_expectedPreset);
  [coderCopy encodeObject:expectedPreset forKey:v8];

  currentPreset = self->_currentPreset;
  v10 = NSStringFromSelector(sel_currentPreset);
  [coderCopy encodeObject:currentPreset forKey:v10];
}

- (FASettingsPresetsResponse)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_availablePresets);
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:v8];

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_expectedPreset);
  v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_currentPreset);
  v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];

  v16 = [(FASettingsPresetsResponse *)self initWithAvailablePresets:v9 expectedPreset:v12 currentPreset:v15];
  return v16;
}

@end