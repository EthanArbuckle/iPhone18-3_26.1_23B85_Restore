@interface NAUIContentSizeLayoutConstraint
+ (double)_maximumWidthOfStrings:(id)strings withFont:(id)font;
+ (id)_constraintForAutoitem:(id)autoitem constrainedItem:(id)item attribute:(int64_t)attribute relatedBy:(int64_t)by toItem:(id)toItem attribute:(int64_t)a8 multiplier:(double)multiplier defaultConstant:(double)self0 additionalConstant:(double)self1 initialize:(BOOL)self2;
+ (id)constraintForAutoitem:(id)autoitem additionalConstant:(double)constant constantLoadingBlock:(id)block;
+ (id)constraintForAutoitem:(id)autoitem additionalConstant:(double)constant constantWidthSizingStringsLoadingBlock:(id)block;
- (double)_defaultConstantByFixingUpDefaultConstant:(double)constant;
- (void)_reloadPreferredContentSize:(BOOL)size;
- (void)dealloc;
- (void)setAutoUpdatingConstantShrinks:(BOOL)shrinks;
- (void)setDefaultConstant:(double)constant;
- (void)setTextStyle:(id)style;
@end

@implementation NAUIContentSizeLayoutConstraint

+ (id)_constraintForAutoitem:(id)autoitem constrainedItem:(id)item attribute:(int64_t)attribute relatedBy:(int64_t)by toItem:(id)toItem attribute:(int64_t)a8 multiplier:(double)multiplier defaultConstant:(double)self0 additionalConstant:(double)self1 initialize:(BOOL)self2
{
  autoitemCopy = autoitem;
  v22 = [self constraintWithItem:item attribute:attribute relatedBy:by toItem:toItem attribute:a8 multiplier:multiplier constant:0.0];
  [v22 _defaultConstantByFixingUpDefaultConstant:constant];
  [v22 setConstant:v23 + additionalConstant];
  naui_dynamicFontTextStyleDescriptor = [autoitemCopy naui_dynamicFontTextStyleDescriptor];
  textStyle = [naui_dynamicFontTextStyleDescriptor textStyle];
  [v22 setTextStyle:textStyle];

  naui_dynamicFontTextStyleDescriptor2 = [autoitemCopy naui_dynamicFontTextStyleDescriptor];
  v27 = *(v22 + 104);
  *(v22 + 104) = naui_dynamicFontTextStyleDescriptor2;

  v28 = *(v22 + 80);
  *(v22 + 80) = autoitemCopy;

  *(v22 + 96) = 1;
  *(v22 + 144) = additionalConstant;
  *(v22 + 136) = constant;
  *(v22 + 128) = 0;
  if (initialize)
  {
    [v22 _forceUpdatePreferredContentSize];
  }

  return v22;
}

+ (id)constraintForAutoitem:(id)autoitem additionalConstant:(double)constant constantLoadingBlock:(id)block
{
  blockCopy = block;
  LOBYTE(v11) = 0;
  v9 = [self _constraintForAutoitem:autoitem constrainedItem:autoitem attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 defaultConstant:0.0 additionalConstant:constant initialize:v11];
  [v9 setConstantLoadingBlock:blockCopy];

  [v9 _updatePreferredContentSize];

  return v9;
}

+ (id)constraintForAutoitem:(id)autoitem additionalConstant:(double)constant constantWidthSizingStringsLoadingBlock:(id)block
{
  autoitemCopy = autoitem;
  blockCopy = block;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __115__NAUIContentSizeLayoutConstraint_constraintForAutoitem_additionalConstant_constantWidthSizingStringsLoadingBlock___block_invoke;
  v14[3] = &unk_279966630;
  v16 = blockCopy;
  selfCopy = self;
  v15 = autoitemCopy;
  v10 = blockCopy;
  v11 = autoitemCopy;
  v12 = [self constraintForAutoitem:v11 additionalConstant:v14 constantLoadingBlock:constant];

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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_preferredContentSizeDidChangeObserver];
  }

  v4.receiver = self;
  v4.super_class = NAUIContentSizeLayoutConstraint;
  [(NAUIContentSizeLayoutConstraint *)&v4 dealloc];
}

- (void)setTextStyle:(id)style
{
  styleCopy = style;
  if (![(NSString *)self->_textStyle isEqualToString:styleCopy])
  {
    v5 = [styleCopy copy];
    textStyle = self->_textStyle;
    self->_textStyle = v5;

    v7 = [MEMORY[0x277D74300] defaultFontForTextStyle:styleCopy];
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v11 = *MEMORY[0x277D76810];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__NAUIContentSizeLayoutConstraint_setTextStyle___block_invoke;
    v14[3] = &unk_279966658;
    objc_copyWeak(&v15, &location);
    v12 = [defaultCenter addObserverForName:v11 object:0 queue:mainQueue usingBlock:v14];
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

- (void)setDefaultConstant:(double)constant
{
  if (self->_defaultConstant != constant)
  {
    self->_defaultConstant = constant;
    [(NAUIContentSizeLayoutConstraint *)self _updatePreferredContentSize];
  }
}

- (void)setAutoUpdatingConstantShrinks:(BOOL)shrinks
{
  if (self->_autoUpdatingConstantShrinks != shrinks)
  {
    self->_autoUpdatingConstantShrinks = shrinks;
    [(NAUIContentSizeLayoutConstraint *)self _updatePreferredContentSize];
  }
}

- (double)_defaultConstantByFixingUpDefaultConstant:(double)constant
{
  firstItem = [(NAUIContentSizeLayoutConstraint *)self firstItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    firstItem2 = [(NAUIContentSizeLayoutConstraint *)self firstItem];
    if (![firstItem2 borderStyle] && -[NAUIContentSizeLayoutConstraint firstAttribute](self, "firstAttribute") == 12)
    {
      constant = UIScreenPixelHeight() + constant;
    }
  }

  secondItem = [(NAUIContentSizeLayoutConstraint *)self secondItem];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    secondItem2 = [(NAUIContentSizeLayoutConstraint *)self secondItem];
    if (![secondItem2 borderStyle] && -[NAUIContentSizeLayoutConstraint secondAttribute](self, "secondAttribute") == 12)
    {
      constant = constant - UIScreenPixelHeight();
    }
  }

  return constant;
}

+ (double)_maximumWidthOfStrings:(id)strings withFont:(id)font
{
  v21 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  fontCopy = font;
  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v7 setFont:fontCopy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = stringsCopy;
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

- (void)_reloadPreferredContentSize:(BOOL)size
{
  sizeCopy = size;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    naui_dynamicFontTextStyleDescriptor = [self->_autoitem naui_dynamicFontTextStyleDescriptor];
    v5 = [NAUITextStyleDescriptor fontWithTextStyleDescriptor:?];
    if (objc_opt_respondsToSelector())
    {
      [self->_autoitem naui_reloadDynamicFontWithTextStyleDescriptor:naui_dynamicFontTextStyleDescriptor];
    }

    viewForLastBaselineLayout = [self->_autoitem viewForLastBaselineLayout];
    if (objc_opt_respondsToSelector())
    {
      [viewForLastBaselineLayout naui_reloadDynamicFontWithTextStyleDescriptor:naui_dynamicFontTextStyleDescriptor];
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
    if (v19 != v18 || sizeCopy)
    {
      [(NAUIContentSizeLayoutConstraint *)self setConstant:v18];
    }
  }
}

@end