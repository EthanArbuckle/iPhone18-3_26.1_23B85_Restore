@interface CAMSmartStyleCategoryInstructionLabel
- (CAMSmartStyleCategoryInstructionLabel)initWithFrame:(CGRect)a3;
- (void)_updateText;
- (void)setPresetType:(int64_t)a3;
@end

@implementation CAMSmartStyleCategoryInstructionLabel

- (CAMSmartStyleCategoryInstructionLabel)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CAMSmartStyleCategoryInstructionLabel;
  v3 = [(CAMInstructionLabel *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    v5 = CEKSmartStyleSystemStylePresetTypes();
    v6 = [v4 initWithArray:v5];
    systemStylePresetTypes = v3->__systemStylePresetTypes;
    v3->__systemStylePresetTypes = v6;

    v3->_presetType = 1;
    [(CAMSmartStyleCategoryInstructionLabel *)v3 _updateText];
    v8 = v3;
  }

  return v3;
}

- (void)_updateText
{
  v3 = [(CAMSmartStyleCategoryInstructionLabel *)self _systemStylePresetTypes];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMSmartStyleCategoryInstructionLabel presetType](self, "presetType")}];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    v6 = @"SMART_STYLES_CATEGORY_LABEL_SYSTEM";
  }

  else
  {
    v6 = @"SMART_STYLES_CATEGORY_LABEL_CREATIVE";
  }

  v7 = CAMLocalizedFrameworkString(v6, 0);
  [(CAMInstructionLabel *)self setText:v7];
}

- (void)setPresetType:(int64_t)a3
{
  if (self->_presetType != a3)
  {
    self->_presetType = a3;
    [(CAMSmartStyleCategoryInstructionLabel *)self _updateText];
  }
}

@end