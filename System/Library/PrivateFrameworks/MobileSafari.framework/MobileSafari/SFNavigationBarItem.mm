@interface SFNavigationBarItem
- (BOOL)_showsAvailabilityTextForType:(int64_t)type style:(int64_t)style;
- (BOOL)showsReaderAvailabilityTextForStyle:(int64_t)style;
- (BOOL)showsTranslationAvailabilityTextForStyle:(int64_t)style;
- (NSString)text;
- (NSString)textWhenExpanded;
- (SFNavigationBarItem)init;
- (WBSFluidProgressStateSource)fluidProgressStateSource;
- (unint64_t)mediaStateIconToDisplay;
- (void)resetContentOptions;
- (void)setCustomPlaceholderText:(id)text;
- (void)setDidFinishShowingAvailabilityLabel:(BOOL)label ofType:(int64_t)type;
- (void)setExtensionButtonConfiguration:(id)configuration;
- (void)setExtensionsAreActive:(BOOL)active;
- (void)setFluidProgressController:(id)controller;
- (void)setGlobalMediaStateIcon:(unint64_t)icon;
- (void)setHasHiddenElements:(BOOL)elements;
- (void)setLockdownModeAnnotation:(int64_t)annotation;
- (void)setMediaStateIcon:(unint64_t)icon;
- (void)setNeedsExtensionBadge:(BOOL)badge;
- (void)setOverlayConfiguration:(id)configuration;
- (void)setOverlayNarrowConfiguration:(id)configuration;
- (void)setOverrideBarStyleForSecurityWarning:(BOOL)warning;
- (void)setReaderButtonSelected:(BOOL)selected;
- (void)setSecurityAnnotation:(int64_t)annotation;
- (void)setSecurityAnnotation:(int64_t)annotation hasFocusedInputFieldOnCurrentPage:(BOOL)page;
- (void)setShowsPageFormatButton:(BOOL)button;
- (void)setShowsReaderButton:(BOOL)button showsAvailabilityText:(BOOL)text;
- (void)setShowsSearchIndicator:(BOOL)indicator;
- (void)setShowsSiriReaderPlayingIcon:(BOOL)icon;
- (void)setShowsStopReloadButtons:(BOOL)buttons;
- (void)setShowsTranslationButton:(BOOL)button showsAvailabilityText:(BOOL)text;
- (void)setShowsTranslationIcon:(BOOL)icon;
- (void)setShowsVoiceSearchButton:(BOOL)button;
- (void)setStopReloadButtonShowsStop:(BOOL)stop;
- (void)setTemporarilySuppressText:(BOOL)text;
- (void)setText:(id)text textWhenExpanded:(id)expanded startIndex:(unint64_t)index;
- (void)updateContentOptions:(unint64_t)options;
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
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

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

- (void)setText:(id)text textWhenExpanded:(id)expanded startIndex:(unint64_t)index
{
  v27 = *MEMORY[0x1E69E9840];
  textCopy = text;
  expandedCopy = expanded;
  if (self->_text == textCopy || [(NSString *)textCopy isEqualToString:?])
  {
    v10 = 0;
  }

  else
  {
    v11 = [(NSString *)textCopy copy];
    text = self->_text;
    self->_text = v11;

    v10 = 1;
  }

  if (self->_textWhenExpanded == expandedCopy || [(NSString *)expandedCopy isEqualToString:?])
  {
    p_startIndexOfTextInExpandedText = &self->_startIndexOfTextInExpandedText;
    if (self->_startIndexOfTextInExpandedText == index)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = [(NSString *)expandedCopy copy];
  textWhenExpanded = self->_textWhenExpanded;
  self->_textWhenExpanded = v14;

  p_startIndexOfTextInExpandedText = &self->_startIndexOfTextInExpandedText;
  if (self->_startIndexOfTextInExpandedText != index)
  {
LABEL_11:
    *p_startIndexOfTextInExpandedText = index;
  }

LABEL_12:
  [(SFNavigationBarItem *)self setTemporarilySuppressText:0];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v17 = [allObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v21 = *(*(&v22 + 1) + 8 * v20);
        if (objc_opt_respondsToSelector())
        {
          [v21 navigationBarItemDidUpdateText:self];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [allObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

LABEL_22:
}

- (void)setTemporarilySuppressText:(BOOL)text
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_temporarilySuppressText != text)
  {
    self->_temporarilySuppressText = text;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateText:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setShowsSearchIndicator:(BOOL)indicator
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsSearchIndicator == !indicator)
  {
    self->_showsSearchIndicator = indicator;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateShowsSearchIndicator:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setShowsStopReloadButtons:(BOOL)buttons
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsStopReloadButtons == !buttons)
  {
    self->_showsStopReloadButtons = buttons;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateShowsStopReloadButtons:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setStopReloadButtonShowsStop:(BOOL)stop
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_stopReloadButtonShowsStop == !stop)
  {
    self->_stopReloadButtonShowsStop = stop;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateStopReloadButtonShowsStop:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setReaderButtonSelected:(BOOL)selected
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_readerButtonSelected == !selected)
  {
    self->_readerButtonSelected = selected;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateFormatButtonSelected:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setOverrideBarStyleForSecurityWarning:(BOOL)warning
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_overrideBarStyleForSecurityWarning == !warning)
  {
    self->_overrideBarStyleForSecurityWarning = warning;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateOverrideBarStyleForSecurityWarning:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setShowsPageFormatButton:(BOOL)button
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsPageFormatButton == !button)
  {
    self->_showsPageFormatButton = button;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateShowsPageFormatButton:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setShowsTranslationIcon:(BOOL)icon
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsTranslationIcon == !icon)
  {
    self->_showsTranslationIcon = icon;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateShowsTranslationIcon:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setShowsVoiceSearchButton:(BOOL)button
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsVoiceSearchButton == !button)
  {
    self->_showsVoiceSearchButton = button;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateShowsVoiceSearchButton:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setShowsSiriReaderPlayingIcon:(BOOL)icon
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showsSiriReaderPlayingIcon == !icon)
  {
    self->_showsSiriReaderPlayingIcon = icon;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateShowsSiriReaderPlayingIcon:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)updateContentOptions:(unint64_t)options
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_contentOptions != options)
  {
    self->_contentOptions = options;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateContentOptions:self resetDisplay:0];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 navigationBarItemDidUpdateContentOptions:self resetDisplay:1];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)setDidFinishShowingAvailabilityLabel:(BOOL)label ofType:(int64_t)type
{
  if (type)
  {
    if (type != 1)
    {
      return;
    }

    v4 = 33;
  }

  else
  {
    v4 = 32;
  }

  *(&self->super.isa + v4) = label;
}

- (void)setShowsReaderButton:(BOOL)button showsAvailabilityText:(BOOL)text
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_showsReaderButton != button || self->_showsReaderAvailabilityTextWhenReplacingDomain != text)
  {
    v5 = !self->_overrideBarStyleForSecurityWarning;
    self->_showsReaderButton = v5 && button;
    self->_showsReaderAvailabilityTextWhenReplacingDomain = v5 && text;
    [(SFNavigationBarItem *)self setDidFinishShowingAvailabilityLabel:0 ofType:0];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 navigationBarItemDidUpdateShowsReaderButton:self];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)showsReaderAvailabilityTextForStyle:(int64_t)style
{
  if (!style)
  {
    v4 = 24;
    goto LABEL_5;
  }

  if (style == 1)
  {
    v4 = 31;
LABEL_5:
    v3 = *(&self->super.isa + v4);
  }

  return v3 & 1;
}

- (void)setShowsTranslationButton:(BOOL)button showsAvailabilityText:(BOOL)text
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_showsTranslationButton != button || self->_showsTranslationAvailabilityTextWhenReplacingDomain != text)
  {
    self->_showsTranslationButton = button & ~self->_overrideBarStyleForSecurityWarning;
    self->_showsTranslationAvailabilityTextWhenReplacingDomain = text;
    [(SFNavigationBarItem *)self setDidFinishShowingAvailabilityLabel:0 ofType:1];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 navigationBarItemDidUpdateShowsTranslationButton:self];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)showsTranslationAvailabilityTextForStyle:(int64_t)style
{
  if (!style)
  {
    v4 = 25;
    goto LABEL_5;
  }

  if (style == 1)
  {
    v4 = 34;
LABEL_5:
    v3 = *(&self->super.isa + v4);
  }

  return v3 & 1;
}

- (BOOL)_showsAvailabilityTextForType:(int64_t)type style:(int64_t)style
{
  if (type == 1)
  {
    return [(SFNavigationBarItem *)self showsTranslationAvailabilityTextForStyle:style];
  }

  if (type)
  {
    return 0;
  }

  return [(SFNavigationBarItem *)self showsReaderAvailabilityTextForStyle:style];
}

- (void)setExtensionsAreActive:(BOOL)active
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_extensionsAreActive != active)
  {
    self->_extensionsAreActive = active;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateShowsExtensionsAvailability:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setNeedsExtensionBadge:(BOOL)badge
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_needsExtensionBadge != badge)
  {
    self->_needsExtensionBadge = badge;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateNeedsExtensionBadge:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setExtensionButtonConfiguration:(id)configuration
{
  v17 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_extensionButtonConfiguration, configuration);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 navigationBarItemDidUpdateExtensionButtonConfiguration:self];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setMediaStateIcon:(unint64_t)icon
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_mediaStateIcon != icon)
  {
    self->_mediaStateIcon = icon;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateMediaStateIcon:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setGlobalMediaStateIcon:(unint64_t)icon
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_globalMediaStateIcon != icon)
  {
    self->_globalMediaStateIcon = icon;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateMediaStateIcon:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setSecurityAnnotation:(int64_t)annotation
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_securityAnnotation != annotation)
  {
    self->_securityAnnotation = annotation;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateSecurityAnnotation:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setSecurityAnnotation:(int64_t)annotation hasFocusedInputFieldOnCurrentPage:(BOOL)page
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_securityAnnotation != annotation || self->_hasFocusedSensitiveFieldOnCurrentPage != page)
  {
    self->_securityAnnotation = annotation;
    self->_hasFocusedSensitiveFieldOnCurrentPage = page;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 navigationBarItemDidUpdateSecurityAnnotation:self];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)setLockdownModeAnnotation:(int64_t)annotation
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_lockdownModeAnnotation != annotation)
  {
    self->_lockdownModeAnnotation = annotation;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateLockdownModeAnnotation:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setCustomPlaceholderText:(id)text
{
  v19 = *MEMORY[0x1E69E9840];
  textCopy = text;
  customPlaceholderText = self->_customPlaceholderText;
  if (customPlaceholderText != textCopy && ![(NSString *)customPlaceholderText isEqualToString:textCopy])
  {
    v6 = [(NSString *)textCopy copy];
    v7 = self->_customPlaceholderText;
    self->_customPlaceholderText = v6;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v9 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 navigationBarItemDidUpdateCustomPlaceholderText:self];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)setHasHiddenElements:(BOOL)elements
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_hasHiddenElements == !elements)
  {
    self->_hasHiddenElements = elements;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 navigationBarItemDidUpdateHasHiddenElements:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setOverlayConfiguration:(id)configuration
{
  v17 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (self->_overlayConfiguration != configurationCopy)
  {
    objc_storeStrong(&self->_overlayConfiguration, configuration);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 navigationBarItemDidUpdateOverlayConfiguration:self];
          }
        }

        v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setOverlayNarrowConfiguration:(id)configuration
{
  v17 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (self->_overlayNarrowConfiguration != configurationCopy)
  {
    objc_storeStrong(&self->_overlayNarrowConfiguration, configuration);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 navigationBarItemDidUpdateOverlayNarrowConfiguration:self];
          }
        }

        v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setFluidProgressController:(id)controller
{
  v17 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (self->_fluidProgressController != controllerCopy)
  {
    objc_storeStrong(&self->_fluidProgressController, controller);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v11 navigationBarItemDidUpdateFluidProgressController:self];
          }
        }

        v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

@end