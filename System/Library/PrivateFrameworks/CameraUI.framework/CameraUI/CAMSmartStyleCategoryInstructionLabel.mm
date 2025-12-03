@interface CAMSmartStyleCategoryInstructionLabel
- (CAMSmartStyleCategoryInstructionLabel)initWithFrame:(CGRect)frame;
- (void)_updateText;
- (void)setPresetType:(int64_t)type;
@end

@implementation CAMSmartStyleCategoryInstructionLabel

- (CAMSmartStyleCategoryInstructionLabel)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CAMSmartStyleCategoryInstructionLabel;
  v3 = [(CAMInstructionLabel *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  _systemStylePresetTypes = [(CAMSmartStyleCategoryInstructionLabel *)self _systemStylePresetTypes];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAMSmartStyleCategoryInstructionLabel presetType](self, "presetType")}];
  v5 = [_systemStylePresetTypes containsObject:v4];

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

- (void)setPresetType:(int64_t)type
{
  if (self->_presetType != type)
  {
    self->_presetType = type;
    [(CAMSmartStyleCategoryInstructionLabel *)self _updateText];
  }
}

@end