@interface WDClinicalSettingsOptInNib
- (UITextViewDelegate)textViewDelegate;
- (id)_footerTextViewString;
- (id)instantiateWithOwner:(id)a3 options:(id)a4;
@end

@implementation WDClinicalSettingsOptInNib

- (id)instantiateWithOwner:(id)a3 options:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E69DD050]) initWithReuseIdentifier:0];
  v6 = objc_alloc(MEMORY[0x1E69DD168]);
  v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setScrollEnabled:0];
  [v7 setUserInteractionEnabled:1];
  v9 = [(WDClinicalSettingsOptInNib *)self textViewDelegate];
  [v7 setDelegate:v9];

  [v7 setEditable:0];
  [v7 _setInteractiveTextSelectionDisabled:1];
  [v7 setDataDetectorTypes:2];
  v10 = [(WDClinicalSettingsOptInNib *)self _footerTextViewString];
  [v7 setAttributedText:v10];

  v11 = [v5 contentView];
  [v11 addSubview:v7];

  v12 = _NSDictionaryOfVariableBindings(&cfstr_Textview.isa, v7, 0);
  v13 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[textView]-|" options:40 metrics:0 views:v12];
  v14 = [v5 contentView];
  [v14 addConstraints:v13];

  v15 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-0-[textView]-17-|" options:40 metrics:0 views:v12];

  v16 = [v5 contentView];
  [v16 addConstraints:v15];

  v19[0] = v5;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  return v17;
}

- (id)_footerTextViewString
{
  v29[2] = *MEMORY[0x1E69E9840];
  v2 = HRLocalizedString(@"CLINICAL_ACCOUNTS_SETTINGS_ANALYTICS_SETTINGS_LINK_TITLE");
  v3 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"CLINICAL_ACCOUNTS_SETTINGS_OPT_IN_FOOTER_%@"];
  v4 = HRLocalizedString(v3);

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:v4, v2];
  v6 = objc_alloc(MEMORY[0x1E696AD40]);
  v7 = *MEMORY[0x1E69DB650];
  v28[0] = *MEMORY[0x1E69DB650];
  v8 = [MEMORY[0x1E69DC888] grayColor];
  v29[0] = v8;
  v9 = *MEMORY[0x1E69DB648];
  v28[1] = *MEMORY[0x1E69DB648];
  v10 = *MEMORY[0x1E69DDD28];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v29[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v13 = [v6 initWithString:v5 attributes:v12];

  v14 = [v5 rangeOfString:v2];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = v14;
    v17 = v15;
    [MEMORY[0x1E69A2D68] internalPrivacySettingsURLString];
    v18 = v25 = v4;
    v19 = [v18 stringByAppendingString:@"/PROBLEM_REPORTING/SHARE_HEALTH_RECORDS_DATA"];

    v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v10];
    v26[0] = v7;
    v21 = HKHealthKeyColor();
    v27[0] = v21;
    v26[1] = *MEMORY[0x1E69DB670];
    v22 = [MEMORY[0x1E695DFF8] URLWithString:v19];
    v26[2] = v9;
    v27[1] = v22;
    v27[2] = v20;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];

    v4 = v25;
    [v13 setAttributes:v23 range:{v16, v17}];
  }

  return v13;
}

- (UITextViewDelegate)textViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textViewDelegate);

  return WeakRetained;
}

@end