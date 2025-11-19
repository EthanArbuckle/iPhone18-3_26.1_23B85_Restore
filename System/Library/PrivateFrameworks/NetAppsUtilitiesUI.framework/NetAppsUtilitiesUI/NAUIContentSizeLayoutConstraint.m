@interface NAUIContentSizeLayoutConstraint
+ (double)_maximumWidthOfStrings:(id)a3 withFont:(id)a4;
+ (id)_constraintForAutoitem:(id)a3 constrainedItem:(id)a4 attribute:(int64_t)a5 relatedBy:(int64_t)a6 toItem:(id)a7 attribute:(int64_t)a8 multiplier:(double)a9 defaultConstant:(double)a10 additionalConstant:(double)a11 initialize:(BOOL)a12;
+ (id)constraintForAutoitem:(id)a3 additionalConstant:(double)a4 constantLoadingBlock:(id)a5;
+ (id)constraintForAutoitem:(id)a3 additionalConstant:(double)a4 constantWidthSizingStringsLoadingBlock:(id)a5;
- (double)_defaultConstantByFixingUpDefaultConstant:(double)a3;
- (void)_reloadPreferredContentSize:(BOOL)a3;
- (void)dealloc;
- (void)setAutoUpdatingConstantShrinks:(BOOL)a3;
- (void)setDefaultConstant:(double)a3;
- (void)setTextStyle:(id)a3;
@end

@implementation NAUIContentSizeLayoutConstraint

+ (id)_constraintForAutoitem:(id)a3 constrainedItem:(id)a4 attribute:(int64_t)a5 relatedBy:(int64_t)a6 toItem:(id)a7 attribute:(int64_t)a8 multiplier:(double)a9 defaultConstant:(double)a10 additionalConstant:(double)a11 initialize:(BOOL)a12
{
  v21 = a3;
  v22 = [a1 constraintWithItem:a4 attribute:a5 relatedBy:a6 toItem:a7 attribute:a8 multiplier:a9 constant:0.0];
  [v22 _defaultConstantByFixingUpDefaultConstant:a10];
  [v22 setConstant:v23 + a11];
  v24 = [v21 naui_dynamicFontTextStyleDescriptor];
  v25 = [v24 textStyle];
  [v22 setTextStyle:v25];

  v26 = [v21 naui_dynamicFontTextStyleDescriptor];
  v27 = *(v22 + 104);
  *(v22 + 104) = v26;

  v28 = *(v22 + 80);
  *(v22 + 80) = v21;

  *(v22 + 96) = 1;
  *(v22 + 144) = a11;
  *(v22 + 136) = a10;
  *(v22 + 128) = 0;
  if (a12)
  {
    [v22 _forceUpdatePreferredContentSize];
  }

  return v22;
}

+ (id)constraintForAutoitem:(id)a3 additionalConstant:(double)a4 constantLoadingBlock:(id)a5
{
  v8 = a5;
  LOBYTE(v11) = 0;
  v9 = [a1 _constraintForAutoitem:a3 constrainedItem:a3 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 defaultConstant:0.0 additionalConstant:a4 initialize:v11];
  [v9 setConstantLoadingBlock:v8];

  [v9 _updatePreferredContentSize];

  return v9;
}

+ (id)constraintForAutoitem:(id)a3 additionalConstant:(double)a4 constantWidthSizingStringsLoadingBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __115__NAUIContentSizeLayoutConstraint_constraintForAutoitem_additionalConstant_constantWidthSizingStringsLoadingBlock___block_invoke;
  v14[3] = &unk_279966630;
  v16 = v9;
  v17 = a1;
  v15 = v8;
  v10 = v9;
  v11 = v8;
  v12 = [a1 constraintForAutoitem:v11 additionalConstant:v14 constantLoadingBlock:a4];

  return v12;
}

double __115__NAUIContentSizeLayoutConstraint_constraintForAutoitem_additionalConstant_constantWidthSizingStringsLoadingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) font];
  v3 = objc_opt_class();
  v4 = (*(*(a1 + 40) + 16))();
  [v3 _maximumWidthOfStrings:v4 withFont:v2];
  v6 = v5;

  return v6;
}

- (void)dealloc
{
  if (self->_preferredContentSizeDidChangeObserver)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_preferredContentSizeDidChangeObserver];
  }

  v4.receiver = self;
  v4.super_class = NAUIContentSizeLayoutConstraint;
  [(NAUIContentSizeLayoutConstraint *)&v4 dealloc];
}

- (void)setTextStyle:(id)a3
{
  v4 = a3;
  if (![(NSString *)self->_textStyle isEqualToString:v4])
  {
    v5 = [v4 copy];
    textStyle = self->_textStyle;
    self->_textStyle = v5;

    v7 = [MEMORY[0x277D74300] defaultFontForTextStyle:v4];
    [v7 _bodyLeading];
    self->_textStyleDefaultBodyLeading = v8;

    if (self->_autoitem)
    {
      [(NAUIContentSizeLayoutConstraint *)self _updatePreferredContentSize];
    }
  }

  if (!self->_preferredContentSizeDidChangeObserver)
  {
    objc_initWeak(&location, self);
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = [MEMORY[0x277CCABD8] mainQueue];
    v11 = *MEMORY[0x277D76810];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__NAUIContentSizeLayoutConstraint_setTextStyle___block_invoke;
    v14[3] = &unk_279966658;
    objc_copyWeak(&v15, &location);
    v12 = [v9 addObserverForName:v11 object:0 queue:v10 usingBlock:v14];
    preferredContentSizeDidChangeObserver = self->_preferredContentSizeDidChangeObserver;
    self->_preferredContentSizeDidChangeObserver = v12;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __48__NAUIContentSizeLayoutConstraint_setTextStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);
  [v4 _updatePreferredContentSize];

  objc_destroyWeak(&to);
}

- (void)setDefaultConstant:(double)a3
{
  if (self->_defaultConstant != a3)
  {
    self->_defaultConstant = a3;
    [(NAUIContentSizeLayoutConstraint *)self _updatePreferredContentSize];
  }
}

- (void)setAutoUpdatingConstantShrinks:(BOOL)a3
{
  if (self->_autoUpdatingConstantShrinks != a3)
  {
    self->_autoUpdatingConstantShrinks = a3;
    [(NAUIContentSizeLayoutConstraint *)self _updatePreferredContentSize];
  }
}

- (double)_defaultConstantByFixingUpDefaultConstant:(double)a3
{
  v5 = [(NAUIContentSizeLayoutConstraint *)self firstItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(NAUIContentSizeLayoutConstraint *)self firstItem];
    if (![v7 borderStyle] && -[NAUIContentSizeLayoutConstraint firstAttribute](self, "firstAttribute") == 12)
    {
      a3 = UIScreenPixelHeight() + a3;
    }
  }

  v8 = [(NAUIContentSizeLayoutConstraint *)self secondItem];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v10 = [(NAUIContentSizeLayoutConstraint *)self secondItem];
    if (![v10 borderStyle] && -[NAUIContentSizeLayoutConstraint secondAttribute](self, "secondAttribute") == 12)
    {
      a3 = a3 - UIScreenPixelHeight();
    }
  }

  return a3;
}

+ (double)_maximumWidthOfStrings:(id)a3 withFont:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v7 setFont:v6];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 setText:{*(*(&v16 + 1) + 8 * i), v16}];
        [v7 intrinsicContentSize];
        if (v12 < v14)
        {
          v12 = v14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (void)_reloadPreferredContentSize:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [self->_autoitem naui_dynamicFontTextStyleDescriptor];
    v5 = [NAUITextStyleDescriptor fontWithTextStyleDescriptor:?];
    if (objc_opt_respondsToSelector())
    {
      [self->_autoitem naui_reloadDynamicFontWithTextStyleDescriptor:v21];
    }

    v6 = [self->_autoitem viewForLastBaselineLayout];
    if (objc_opt_respondsToSelector())
    {
      [v6 naui_reloadDynamicFontWithTextStyleDescriptor:v21];
    }

    [(NAUIContentSizeLayoutConstraint *)self _defaultConstantByFixingUpDefaultConstant:self->_defaultConstant];
    constantLoadingBlock = self->_constantLoadingBlock;
    if (constantLoadingBlock)
    {
      constantLoadingBlock[2]();
    }

    else
    {
      v10 = v7;
      [v5 _bodyLeading];
      v12 = 1.0;
      if (fabs(v10) > 0.000000238418579)
      {
        v12 = v11 / self->_textStyleDefaultBodyLeading;
      }

      v13 = 1.0 / v12;
      if (!self->_autoUpdatingConstantShrinks)
      {
        v13 = v12;
      }

      v9 = v10 * v13;
    }

    v14 = v9 + self->_additionalConstant;
    v15 = v14 / UIScreenPixelHeight();
    v16 = UIScreenPixelHeight();
    v17 = v15;
    v18 = v16 * roundf(v17);
    [(NAUIContentSizeLayoutConstraint *)self constant];
    if (v19 != v18 || v3)
    {
      [(NAUIContentSizeLayoutConstraint *)self setConstant:v18];
    }
  }
}

@end