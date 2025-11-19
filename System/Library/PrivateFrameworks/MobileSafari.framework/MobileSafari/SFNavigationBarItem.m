@interface SFNavigationBarItem
- (BOOL)_showsAvailabilityTextForType:(int64_t)a3 style:(int64_t)a4;
- (BOOL)showsReaderAvailabilityTextForStyle:(int64_t)a3;
- (BOOL)showsTranslationAvailabilityTextForStyle:(int64_t)a3;
- (NSString)text;
- (NSString)textWhenExpanded;
- (SFNavigationBarItem)init;
- (WBSFluidProgressStateSource)fluidProgressStateSource;
- (unint64_t)mediaStateIconToDisplay;
- (void)resetContentOptions;
- (void)setCustomPlaceholderText:(id)a3;
- (void)setDidFinishShowingAvailabilityLabel:(BOOL)a3 ofType:(int64_t)a4;
- (void)setExtensionButtonConfiguration:(id)a3;
- (void)setExtensionsAreActive:(BOOL)a3;
- (void)setFluidProgressController:(id)a3;
- (void)setGlobalMediaStateIcon:(unint64_t)a3;
- (void)setHasHiddenElements:(BOOL)a3;
- (void)setLockdownModeAnnotation:(int64_t)a3;
- (void)setMediaStateIcon:(unint64_t)a3;
- (void)setNeedsExtensionBadge:(BOOL)a3;
- (void)setOverlayConfiguration:(id)a3;
- (void)setOverlayNarrowConfiguration:(id)a3;
- (void)setOverrideBarStyleForSecurityWarning:(BOOL)a3;
- (void)setReaderButtonSelected:(BOOL)a3;
- (void)setSecurityAnnotation:(int64_t)a3;
- (void)setSecurityAnnotation:(int64_t)a3 hasFocusedInputFieldOnCurrentPage:(BOOL)a4;
- (void)setShowsPageFormatButton:(BOOL)a3;
- (void)setShowsReaderButton:(BOOL)a3 showsAvailabilityText:(BOOL)a4;
- (void)setShowsSearchIndicator:(BOOL)a3;
- (void)setShowsSiriReaderPlayingIcon:(BOOL)a3;
- (void)setShowsStopReloadButtons:(BOOL)a3;
- (void)setShowsTranslationButton:(BOOL)a3 showsAvailabilityText:(BOOL)a4;
- (void)setShowsTranslationIcon:(BOOL)a3;
- (void)setShowsVoiceSearchButton:(BOOL)a3;
- (void)setStopReloadButtonShowsStop:(BOOL)a3;
- (void)setTemporarilySuppressText:(BOOL)a3;
- (void)setText:(id)a3 textWhenExpanded:(id)a4 startIndex:(unint64_t)a5;
- (void)updateContentOptions:(unint64_t)a3;
@end

@implementation SFNavigationBarItem

- (NSString)text
{
  if (self->_temporarilySuppressText)
  {
    return &stru_1EFF36230;
  }

  else
  {
    return self->_text;
  }
}

- (NSString)textWhenExpanded
{
  if (self->_temporarilySuppressText)
  {
    return &stru_1EFF36230;
  }

  else
  {
    return self->_textWhenExpanded;
  }
}

- (WBSFluidProgressStateSource)fluidProgressStateSource
{
  WeakRetained = objc_loadWeakRetained(&self->_fluidProgressStateSource);

  return WeakRetained;
}

- (SFNavigationBarItem)init
{
  v7.receiver = self;
  v7.super_class = SFNavigationBarItem;
  v2 = [(SFNavigationBarItem *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = v2;
  }

  return v2;
}

- (unint64_t)mediaStateIconToDisplay
{
  result = self->_mediaStateIcon;
  if (!result)
  {
    return self->_globalMediaStateIcon;
  }

  return result;
}

- (void)setText:(id)a3 textWhenExpanded:(id)a4 startIndex:(unint64_t)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (self->_text == v8 || [(NSString *)v8 isEqualToString:?])
  {
    v10 = 0;
  }

  else
  {
    v11 = [(NSString *)v8 copy];
    text = self->_text;
    self->_text = v11;

    v10 = 1;
  }

  if (self->_textWhenExpanded == v9 || [(NSString *)v9 isEqualToString:?])
  {
    p_startIndexOfTextInExpandedText = &self->_startIndexOfTextInExpandedText;
    if (self->_startIndexOfTextInExpandedText == a5)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = [(NSString *)v9 copy];
  textWhenExpanded = self->_textWhenExpanded;
  self->_textWhenExpanded = v14;

  p_startIndexOfTextInExpandedText = &self->_startIndexOfTextInExpandedText;
  if (self->_startIndexOfTextInExpandedText != a5)
  {
LABEL_11:
    *p_startIndexOfTextInExpandedText = a5;
  }

LABEL_12:
  [(SFNavigationBarItem *)self setTemporarilySuppressText:0];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [(NSHashTable *)self->_observers allObjects];
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v22 + 1) + 8 * v20);
        if (objc_opt_respondsToSelector())
        {
          [v21 navigationBarItemDidUpdateText:self];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

LABEL_22:
}

- (void)setTemporarilySuppressText:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_temporarilySuppressText != a3)
  {
    self->_temporarilySuppressText = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateText:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setShowsSearchIndicator:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsSearchIndicator == !a3)
  {
    self->_showsSearchIndicator = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateShowsSearchIndicator:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setShowsStopReloadButtons:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsStopReloadButtons == !a3)
  {
    self->_showsStopReloadButtons = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateShowsStopReloadButtons:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setStopReloadButtonShowsStop:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_stopReloadButtonShowsStop == !a3)
  {
    self->_stopReloadButtonShowsStop = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateStopReloadButtonShowsStop:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setReaderButtonSelected:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_readerButtonSelected == !a3)
  {
    self->_readerButtonSelected = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateFormatButtonSelected:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setOverrideBarStyleForSecurityWarning:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_overrideBarStyleForSecurityWarning == !a3)
  {
    self->_overrideBarStyleForSecurityWarning = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateOverrideBarStyleForSecurityWarning:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setShowsPageFormatButton:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsPageFormatButton == !a3)
  {
    self->_showsPageFormatButton = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateShowsPageFormatButton:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setShowsTranslationIcon:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsTranslationIcon == !a3)
  {
    self->_showsTranslationIcon = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateShowsTranslationIcon:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setShowsVoiceSearchButton:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsVoiceSearchButton == !a3)
  {
    self->_showsVoiceSearchButton = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateShowsVoiceSearchButton:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setShowsSiriReaderPlayingIcon:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsSiriReaderPlayingIcon == !a3)
  {
    self->_showsSiriReaderPlayingIcon = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateShowsSiriReaderPlayingIcon:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)updateContentOptions:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_contentOptions != a3)
  {
    self->_contentOptions = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateContentOptions:self resetDisplay:0];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)resetContentOptions
{
  v14 = *MEMORY[0x1E69E9840];
  self->_contentOptions = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers allObjects];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 navigationBarItemDidUpdateContentOptions:self resetDisplay:1];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)setDidFinishShowingAvailabilityLabel:(BOOL)a3 ofType:(int64_t)a4
{
  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    v4 = 33;
  }

  else
  {
    v4 = 32;
  }

  *(&self->super.isa + v4) = a3;
}

- (void)setShowsReaderButton:(BOOL)a3 showsAvailabilityText:(BOOL)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_showsReaderButton != a3 || self->_showsReaderAvailabilityTextWhenReplacingDomain != a4)
  {
    v5 = !self->_overrideBarStyleForSecurityWarning;
    self->_showsReaderButton = v5 && a3;
    self->_showsReaderAvailabilityTextWhenReplacingDomain = v5 && a4;
    [(SFNavigationBarItem *)self setDidFinishShowingAvailabilityLabel:0 ofType:0];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_observers allObjects];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 navigationBarItemDidUpdateShowsReaderButton:self];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)showsReaderAvailabilityTextForStyle:(int64_t)a3
{
  if (!a3)
  {
    v4 = 24;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v4 = 31;
LABEL_5:
    v3 = *(&self->super.isa + v4);
  }

  return v3 & 1;
}

- (void)setShowsTranslationButton:(BOOL)a3 showsAvailabilityText:(BOOL)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_showsTranslationButton != a3 || self->_showsTranslationAvailabilityTextWhenReplacingDomain != a4)
  {
    self->_showsTranslationButton = a3 & ~self->_overrideBarStyleForSecurityWarning;
    self->_showsTranslationAvailabilityTextWhenReplacingDomain = a4;
    [(SFNavigationBarItem *)self setDidFinishShowingAvailabilityLabel:0 ofType:1];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(NSHashTable *)self->_observers allObjects];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 navigationBarItemDidUpdateShowsTranslationButton:self];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)showsTranslationAvailabilityTextForStyle:(int64_t)a3
{
  if (!a3)
  {
    v4 = 25;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v4 = 34;
LABEL_5:
    v3 = *(&self->super.isa + v4);
  }

  return v3 & 1;
}

- (BOOL)_showsAvailabilityTextForType:(int64_t)a3 style:(int64_t)a4
{
  if (a3 == 1)
  {
    return [(SFNavigationBarItem *)self showsTranslationAvailabilityTextForStyle:a4];
  }

  if (a3)
  {
    return 0;
  }

  return [(SFNavigationBarItem *)self showsReaderAvailabilityTextForStyle:a4];
}

- (void)setExtensionsAreActive:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_extensionsAreActive != a3)
  {
    self->_extensionsAreActive = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateShowsExtensionsAvailability:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setNeedsExtensionBadge:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_needsExtensionBadge != a3)
  {
    self->_needsExtensionBadge = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateNeedsExtensionBadge:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setExtensionButtonConfiguration:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_extensionButtonConfiguration, a3);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_observers allObjects];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 navigationBarItemDidUpdateExtensionButtonConfiguration:self];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setMediaStateIcon:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_mediaStateIcon != a3)
  {
    self->_mediaStateIcon = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateMediaStateIcon:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setGlobalMediaStateIcon:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_globalMediaStateIcon != a3)
  {
    self->_globalMediaStateIcon = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateMediaStateIcon:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setSecurityAnnotation:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_securityAnnotation != a3)
  {
    self->_securityAnnotation = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateSecurityAnnotation:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setSecurityAnnotation:(int64_t)a3 hasFocusedInputFieldOnCurrentPage:(BOOL)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_securityAnnotation != a3 || self->_hasFocusedSensitiveFieldOnCurrentPage != a4)
  {
    self->_securityAnnotation = a3;
    self->_hasFocusedSensitiveFieldOnCurrentPage = a4;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSHashTable *)self->_observers allObjects];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 navigationBarItemDidUpdateSecurityAnnotation:self];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)setLockdownModeAnnotation:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_lockdownModeAnnotation != a3)
  {
    self->_lockdownModeAnnotation = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateLockdownModeAnnotation:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setCustomPlaceholderText:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  customPlaceholderText = self->_customPlaceholderText;
  if (customPlaceholderText != v4 && ![(NSString *)customPlaceholderText isEqualToString:v4])
  {
    v6 = [(NSString *)v4 copy];
    v7 = self->_customPlaceholderText;
    self->_customPlaceholderText = v6;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(NSHashTable *)self->_observers allObjects];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 navigationBarItemDidUpdateCustomPlaceholderText:self];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)setHasHiddenElements:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_hasHiddenElements == !a3)
  {
    self->_hasHiddenElements = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateHasHiddenElements:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setOverlayConfiguration:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_overlayConfiguration != v5)
  {
    objc_storeStrong(&self->_overlayConfiguration, a3);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_observers allObjects];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 navigationBarItemDidUpdateOverlayConfiguration:self];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setOverlayNarrowConfiguration:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_overlayNarrowConfiguration != v5)
  {
    objc_storeStrong(&self->_overlayNarrowConfiguration, a3);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_observers allObjects];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 navigationBarItemDidUpdateOverlayNarrowConfiguration:self];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setFluidProgressController:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_fluidProgressController != v5)
  {
    objc_storeStrong(&self->_fluidProgressController, a3);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_observers allObjects];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 navigationBarItemDidUpdateFluidProgressController:self];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

@end