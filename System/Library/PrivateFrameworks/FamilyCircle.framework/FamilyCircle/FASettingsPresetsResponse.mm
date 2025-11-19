@interface FASettingsPresetsResponse
- (FASettingsPresetsResponse)initWithAvailablePresets:(id)a3 expectedPreset:(id)a4 currentPreset:(id)a5;
- (FASettingsPresetsResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FASettingsPresetsResponse

- (FASettingsPresetsResponse)initWithAvailablePresets:(id)a3 expectedPreset:(id)a4 currentPreset:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = FASettingsPresetsResponse;
  v11 = [(FASettingsPresetsResponse *)&v15 init];
  v12 = v11;
  if (v11)
  {
    if (v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v11->_availablePresets, v13);
    objc_storeStrong(&v12->_expectedPreset, a4);
    objc_storeStrong(&v12->_currentPreset, a5);
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  availablePresets = self->_availablePresets;
  v5 = a3;
  v6 = NSStringFromSelector(sel_availablePresets);
  [v5 encodeObject:availablePresets forKey:v6];

  expectedPreset = self->_expectedPreset;
  v8 = NSStringFromSelector(sel_expectedPreset);
  [v5 encodeObject:expectedPreset forKey:v8];

  currentPreset = self->_currentPreset;
  v10 = NSStringFromSelector(sel_currentPreset);
  [v5 encodeObject:currentPreset forKey:v10];
}

- (FASettingsPresetsResponse)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_availablePresets);
  v9 = [v5 decodeObjectOfClasses:v7 forKey:v8];

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_expectedPreset);
  v12 = [v5 decodeObjectOfClass:v10 forKey:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_currentPreset);
  v15 = [v5 decodeObjectOfClass:v13 forKey:v14];

  v16 = [(FASettingsPresetsResponse *)self initWithAvailablePresets:v9 expectedPreset:v12 currentPreset:v15];
  return v16;
}

@end