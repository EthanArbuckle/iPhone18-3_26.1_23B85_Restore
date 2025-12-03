@interface MPUTextContainerContentSizeUpdater
- (MPUTextContainer)textContainer;
- (MPUTextContainerContentSizeUpdater)init;
- (void)_updateTextStyleFonts;
- (void)dealloc;
- (void)ensureTextStyleFontsMatchPreferredTextStyleFonts;
@end

@implementation MPUTextContainerContentSizeUpdater

- (MPUTextContainerContentSizeUpdater)init
{
  v7.receiver = self;
  v7.super_class = MPUTextContainerContentSizeUpdater;
  v2 = [(MPUTextContainerContentSizeUpdater *)&v7 init];
  if (v2)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    [(MPUTextContainerContentSizeUpdater *)v2 setLastSeenPreferredContentSizeCategory:preferredContentSizeCategory];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__preferredContentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = MPUTextContainerContentSizeUpdater;
  [(MPUTextContainerContentSizeUpdater *)&v4 dealloc];
}

- (void)ensureTextStyleFontsMatchPreferredTextStyleFonts
{
  lastSeenPreferredContentSizeCategory = [(MPUTextContainerContentSizeUpdater *)self lastSeenPreferredContentSizeCategory];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  v6 = [lastSeenPreferredContentSizeCategory isEqualToString:preferredContentSizeCategory];

  if ((v6 & 1) == 0)
  {

    [(MPUTextContainerContentSizeUpdater *)self _updateTextStyleFonts];
  }
}

- (void)_updateTextStyleFonts
{
  textContainer = [(MPUTextContainerContentSizeUpdater *)self textContainer];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    attributedText = [textContainer attributedText];
    v4 = [attributedText copy];
  }

  else
  {
    v4 = 0;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    font = [textContainer font];
    fontDescriptor = [font fontDescriptor];

    v7 = [fontDescriptor objectForKey:*MEMORY[0x277D74378]];
    if (v7)
    {
      v8 = MEMORY[0x277D74300];
      v9 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v7];
      v10 = [v9 fontDescriptorWithSymbolicTraits:{objc_msgSend(fontDescriptor, "symbolicTraits")}];
      v11 = [v8 fontWithDescriptor:v10 size:0.0];
      [textContainer setFont:v11];
    }
  }

  if (v4)
  {
    mPU_attributedStringByUpdatingTextStyleFontsToPreferredTextStyleFonts = [v4 MPU_attributedStringByUpdatingTextStyleFontsToPreferredTextStyleFonts];
    [textContainer setAttributedText:mPU_attributedStringByUpdatingTextStyleFontsToPreferredTextStyleFonts];
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  [(MPUTextContainerContentSizeUpdater *)self setLastSeenPreferredContentSizeCategory:preferredContentSizeCategory];
}

- (MPUTextContainer)textContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_textContainer);

  return WeakRetained;
}

@end