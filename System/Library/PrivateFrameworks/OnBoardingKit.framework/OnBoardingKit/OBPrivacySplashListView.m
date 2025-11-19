@interface OBPrivacySplashListView
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (void)_updateTextViewsForLinkUITreatment:(id)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFonts;
- (void)updateSpacing;
- (void)updateTextAlignment;
@end

@implementation OBPrivacySplashListView

- (void)updateSpacing
{
  v10 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD80]];
  v3 = [(OBPrivacySplashListView *)self displayingPrivacyPane];
  v4 = 46.0;
  if (!v3)
  {
    v4 = 30.0;
  }

  [v10 scaledValueForValue:v4];
  [(OBPrivacySplashListView *)self setSpacing:?];
  v5 = [(OBPrivacySplashListView *)self textViews];
  if ([v5 count])
  {
    v6 = [(OBPrivacySplashListView *)self displayingPrivacyPane];

    if (v6)
    {
      goto LABEL_7;
    }

    [v10 scaledValueForValue:46.0];
    v8 = v7;
    v5 = [(OBPrivacySplashListView *)self textViews];
    v9 = [v5 objectAtIndexedSubscript:0];
    [(OBPrivacySplashListView *)self setCustomSpacing:v9 afterView:v8];
  }

LABEL_7:
}

- (void)updateFonts
{
  v3 = *MEMORY[0x1E69DDCF8];
  v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC0]];
    [v4 pointSize];
    v6 = v5;

    v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v3];
    v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:v6];

    v18 = v8;
  }

  v9 = [(OBPrivacySplashListView *)self textViews];
  v10 = [v9 count];

  if (v10)
  {
    v11 = 0;
    v12 = *MEMORY[0x1E69DDD80];
    do
    {
      v13 = [(OBPrivacySplashListView *)self textViews];
      v14 = [v13 objectAtIndexedSubscript:v11];

      if (+[OBFeatureFlags isNaturalUIEnabled]|| !v11 || [(OBPrivacySplashListView *)self displayingPrivacyPane])
      {
        [v14 setFont:v18];
      }

      else
      {
        v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v12];
        [v14 setFont:v17];
      }

      ++v11;
      v15 = [(OBPrivacySplashListView *)self textViews];
      v16 = [v15 count];
    }

    while (v16 > v11);
  }
}

- (void)updateTextAlignment
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self _obk_isRTL];
  v4 = +[OBFeatureFlags isNaturalUIEnabled];
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (!+[OBViewUtilities shouldUseAccessibilityLayout]&& !v4)
  {
    v5 = 1;
  }

  if ([(OBPrivacySplashListView *)self displayingPrivacyPane])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(OBPrivacySplashListView *)self textViews];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v15 + 1) + 8 * i) setTextAlignment:v5];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v14 = [(OBPrivacySplashListView *)self textViews];
    v12 = [v14 firstObject];
    [v12 setTextAlignment:v5];

    v13 = *MEMORY[0x1E69E9840];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = OBPrivacySplashListView;
  [(OBPrivacySplashListView *)&v4 traitCollectionDidChange:a3];
  [(OBPrivacySplashListView *)self updateTextAlignment];
  [(OBPrivacySplashListView *)self updateSpacing];
  [(OBPrivacySplashListView *)self updateFonts];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = OBPrivacySplashListView;
  [(OBPrivacySplashListView *)&v4 tintColorDidChange];
  v3 = [(OBPrivacySplashListView *)self textViews];
  [(OBPrivacySplashListView *)self _updateTextViewsForLinkUITreatment:v3];
}

- (void)_updateTextViewsForLinkUITreatment:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = *MEMORY[0x1E69DB650];
    v9 = *MEMORY[0x1E69DB758];
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if ([(OBPrivacySplashListView *)self underlineLinks])
        {
          v19[0] = v8;
          v12 = [(OBPrivacySplashListView *)self tintColor];
          v19[1] = v9;
          v20[0] = v12;
          v20[1] = &unk_1F2CF8510;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
          [v11 setLinkTextAttributes:v13];
        }

        else
        {
          [v11 setLinkTextAttributes:0];
        }

        ++v10;
      }

      while (v6 != v10);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a5;
  v8 = _OBLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4FB6000, v8, OS_LOG_TYPE_DEFAULT, "Privacy splash textView:primaryActionForTextItem:...", buf, 2u);
  }

  v9 = [v6 link];

  if (v9)
  {
    v10 = _OBLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 link];
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_1B4FB6000, v10, OS_LOG_TYPE_DEFAULT, "Privacy splash returning custom primary action for link %@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69DC628];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __75__OBPrivacySplashListView_textView_primaryActionForTextItem_defaultAction___block_invoke;
    v16[3] = &unk_1E7C155E0;
    v17 = v6;
    v13 = [v12 actionWithHandler:v16];
  }

  else
  {
    v13 = v7;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __75__OBPrivacySplashListView_textView_primaryActionForTextItem_defaultAction___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _OBLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) link];
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1B4FB6000, v2, OS_LOG_TYPE_DEFAULT, "Privacy splash will open %@", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [*(a1 + 32) link];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__OBPrivacySplashListView_textView_primaryActionForTextItem_defaultAction___block_invoke_20;
  v7[3] = &unk_1E7C155B8;
  v8 = *(a1 + 32);
  [v4 openURL:v5 options:MEMORY[0x1E695E0F8] completionHandler:v7];

  v6 = *MEMORY[0x1E69E9840];
}

void __75__OBPrivacySplashListView_textView_primaryActionForTextItem_defaultAction___block_invoke_20(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _OBLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) link];
    v7 = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_1B4FB6000, v4, OS_LOG_TYPE_DEFAULT, "Privacy splash did open %@ with success %d", &v7, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end