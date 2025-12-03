@interface CHSScreenshotPresentationAttributes
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation CHSScreenshotPresentationAttributes

- (unint64_t)hash
{
  v3 = self->_colorScheme + self->_allowsPrivacySensitiveContent + self->_userWantsWidgetDataWhenPasscodeLocked + 19;
  v4 = [(NSString *)self->_additionalSettingsContext hash];
  v5 = v4 ^ [(CHSWidgetTintParameters *)self->_tintParameters hash];
  return v3 ^ v5 ^ [(NSDateComponents *)self->_idealizedDateComponents stableHash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
    colorScheme = self->_colorScheme;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __47__CHSScreenshotPresentationAttributes_isEqual___block_invoke;
    v42[3] = &unk_1E7453368;
    v11 = v8;
    v43 = v11;
    v12 = [v9 appendInteger:colorScheme counterpart:v42];
    allowsPrivacySensitiveContent = self->_allowsPrivacySensitiveContent;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __47__CHSScreenshotPresentationAttributes_isEqual___block_invoke_2;
    v40[3] = &unk_1E7452FB0;
    v14 = v11;
    v41 = v14;
    v15 = [v9 appendBool:allowsPrivacySensitiveContent counterpart:v40];
    userWantsWidgetDataWhenPasscodeLocked = self->_userWantsWidgetDataWhenPasscodeLocked;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __47__CHSScreenshotPresentationAttributes_isEqual___block_invoke_3;
    v38[3] = &unk_1E7452FB0;
    v17 = v14;
    v39 = v17;
    v18 = [v9 appendBool:userWantsWidgetDataWhenPasscodeLocked counterpart:v38];
    additionalSettingsContext = self->_additionalSettingsContext;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __47__CHSScreenshotPresentationAttributes_isEqual___block_invoke_4;
    v36[3] = &unk_1E7452FD8;
    v20 = v17;
    v37 = v20;
    v21 = [v9 appendString:additionalSettingsContext counterpart:v36];
    tintParameters = self->_tintParameters;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __47__CHSScreenshotPresentationAttributes_isEqual___block_invoke_5;
    v34[3] = &unk_1E7453888;
    v23 = v20;
    v35 = v23;
    v24 = [v9 appendObject:tintParameters counterpart:v34];
    idealizedDateComponents = self->_idealizedDateComponents;
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __47__CHSScreenshotPresentationAttributes_isEqual___block_invoke_6;
    v32 = &unk_1E74538B0;
    v33 = v23;
    v26 = [v9 appendObject:idealizedDateComponents counterpart:&v29];
    v27 = [v9 isEqual];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end