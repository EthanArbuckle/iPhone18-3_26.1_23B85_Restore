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
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4 = [v3 preferredContentSizeCategory];
    [(MPUTextContainerContentSizeUpdater *)v2 setLastSeenPreferredContentSizeCategory:v4];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__preferredContentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = MPUTextContainerContentSizeUpdater;
  [(MPUTextContainerContentSizeUpdater *)&v4 dealloc];
}

- (void)ensureTextStyleFontsMatchPreferredTextStyleFonts
{
  v3 = [(MPUTextContainerContentSizeUpdater *)self lastSeenPreferredContentSizeCategory];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 preferredContentSizeCategory];
  v6 = [v3 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {

    [(MPUTextContainerContentSizeUpdater *)self _updateTextStyleFonts];
  }
}

- (void)_updateTextStyleFonts
{
  v15 = [(MPUTextContainerContentSizeUpdater *)self textContainer];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v3 = [v15 attributedText];
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = [v15 font];
    v6 = [v5 fontDescriptor];

    v7 = [v6 objectForKey:*MEMORY[0x277D74378]];
    if (v7)
    {
      v8 = MEMORY[0x277D74300];
      v9 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v7];
      v10 = [v9 fontDescriptorWithSymbolicTraits:{objc_msgSend(v6, "symbolicTraits")}];
      v11 = [v8 fontWithDescriptor:v10 size:0.0];
      [v15 setFont:v11];
    }
  }

  if (v4)
  {
    v12 = [v4 MPU_attributedStringByUpdatingTextStyleFontsToPreferredTextStyleFonts];
    [v15 setAttributedText:v12];
  }

  v13 = [MEMORY[0x277D75128] sharedApplication];
  v14 = [v13 preferredContentSizeCategory];
  [(MPUTextContainerContentSizeUpdater *)self setLastSeenPreferredContentSizeCategory:v14];
}

- (MPUTextContainer)textContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_textContainer);

  return WeakRetained;
}

@end