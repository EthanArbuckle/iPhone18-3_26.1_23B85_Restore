@interface HKEmergencyCardPrimaryLanguageTableItem
- (BOOL)hasPresentableData;
- (BOOL)shouldHighlightRowAtIndex:(int64_t)a3;
- (HKEmergencyCardPrimaryLanguageUpdateDelegate)delegate;
- (double)tableView:(id)a3 heightForRowAtIndex:(int64_t)a4;
- (id)_createEditableCell;
- (id)attributedStringForCurrentLanguage;
- (id)initInEditMode:(BOOL)a3;
- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4;
- (id)title;
- (int64_t)commitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4;
- (int64_t)editingStyleForRowAtIndex:(int64_t)a3;
- (void)didCancelLanguageSelection;
- (void)didCommitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4;
- (void)didSelectCellWithLanguage:(id)a3;
- (void)presentSpokenLanguageController;
- (void)setCurrentLanguage:(BOOL)a3;
@end

@implementation HKEmergencyCardPrimaryLanguageTableItem

- (BOOL)hasPresentableData
{
  v2 = [(HKEmergencyCardTableItem *)self data];
  v3 = [v2 primaryLanguageCode];
  v4 = v3 != 0;

  return v4;
}

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"primary_language" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)initInEditMode:(BOOL)a3
{
  v3 = a3;
  v17.receiver = self;
  v17.super_class = HKEmergencyCardPrimaryLanguageTableItem;
  v4 = [(HKEmergencyCardTableItem *)&v17 initInEditMode:?];
  if (v4)
  {
    v5 = !v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = MEMORY[0x1E695DF58];
    v7 = [MEMORY[0x1E695DF58] preferredLanguages];
    v8 = [v6 spokenLanguagesForLanguages:v7 includeLanguagesForRegion:1];
    v9 = [v8 hk_map:&__block_literal_global_88];
    v10 = v4[8];
    v4[8] = v9;

    v11 = [MEMORY[0x1E695DF58] availableSpokenLanguages];
    v12 = [v11 hk_map:&__block_literal_global_311];
    v13 = [v12 allObjects];
    v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_314];
    v15 = v4[9];
    v4[9] = v14;
  }

  return v4;
}

HKSpokenLanguage *__58__HKEmergencyCardPrimaryLanguageTableItem_initInEditMode___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HKSpokenLanguage alloc] initWithLanguageIdentifier:v2 forCategory:1];

  return v3;
}

HKSpokenLanguage *__58__HKEmergencyCardPrimaryLanguageTableItem_initInEditMode___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HKSpokenLanguage alloc] initWithLanguageIdentifier:v2 forCategory:2];

  return v3;
}

uint64_t __58__HKEmergencyCardPrimaryLanguageTableItem_initInEditMode___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 languageInCurrentLocale];
  v6 = [v4 languageInCurrentLocale];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (id)_createEditableCell
{
  v3 = [(HKMedicalIDEditorCell *)[HKMedicalIDEditorLanguageCell alloc] initWithStyle:0 reuseIdentifier:@"kPreferredLanguageTableItemCellIdentifier"];
  v4 = [(HKEmergencyCardPrimaryLanguageTableItem *)self title];
  [(HKMedicalIDEditorCell *)v3 setLabel:v4];

  [(HKMedicalIDEditorCell *)v3 setMinimumLabelWidth:87.0];
  [(HKMedicalIDEditorCell *)v3 setEditDelegate:self];
  [(HKMedicalIDEditorLanguageCell *)v3 setValueLanguageText:self->_currentLanguage];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__HKEmergencyCardPrimaryLanguageTableItem__createEditableCell__block_invoke;
  v6[3] = &unk_1E81B5738;
  objc_copyWeak(&v7, &location);
  [(HKMedicalIDEditorLanguageCell *)v3 setBeginEditAction:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v3;
}

void __62__HKEmergencyCardPrimaryLanguageTableItem__createEditableCell__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentSpokenLanguageController];
}

- (void)setCurrentLanguage:(BOOL)a3
{
  v3 = a3;
  if (!self->_currentLanguage || (-[HKEmergencyCardTableItem data](self, "data"), v5 = objc_claimAutoreleasedReturnValue(), [v5 primaryLanguageCode], v6 = objc_claimAutoreleasedReturnValue(), -[HKSpokenLanguage identifier](self->_currentLanguage, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v6 != v7))
  {
    v8 = [(HKEmergencyCardTableItem *)self data];
    v9 = [v8 primaryLanguageCode];

    if (!v9 && v3)
    {
      v10 = MEMORY[0x1E695DF58];
      v11 = [MEMORY[0x1E695DF58] preferredLanguages];
      v12 = [v10 spokenLanguagesForLanguages:v11 includeLanguagesForRegion:1];
      v13 = [v12 firstObject];
      v14 = [(HKEmergencyCardTableItem *)self data];
      [v14 setPrimaryLanguageCode:v13];
    }

    v15 = [HKSpokenLanguage alloc];
    v19 = [(HKEmergencyCardTableItem *)self data];
    v16 = [v19 primaryLanguageCode];
    v17 = [(HKSpokenLanguage *)v15 initWithLanguageIdentifier:v16 forCategory:0];
    currentLanguage = self->_currentLanguage;
    self->_currentLanguage = v17;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4
{
  v5 = a3;
  [(HKEmergencyCardPrimaryLanguageTableItem *)self setCurrentLanguage:0];
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    if (self->_isEditing || (-[HKEmergencyCardTableItem data](self, "data"), v6 = objc_claimAutoreleasedReturnValue(), [v6 primaryLanguageCode], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = [v5 dequeueReusableCellWithIdentifier:@"kPreferredLanguageTableItemCellIdentifier"];
      if (!v8)
      {
        v8 = [(HKEmergencyCardPrimaryLanguageTableItem *)self _createEditableCell];
      }

      v9 = v8;
      editableCell = self->_editableCell;
      self->_editableCell = v9;
    }

    else
    {
      editableCell = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v16 = [editableCell localizedStringForKey:@"add_primary_language" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v9 = [(HKEmergencyCardTableItem *)self _dequeueNoValueCellInTableView:v5 withTitle:v16];
    }
  }

  else
  {
    v11 = +[_HKMedicalIDMultilineStringCell defaultReuseIdentifier];
    v9 = [v5 dequeueReusableCellWithIdentifier:v11];

    v12 = [(HKEmergencyCardPrimaryLanguageTableItem *)self title];
    v13 = [(HKMedicalIDEditorLanguageCell *)v9 titleLabel];
    [v13 setText:v12];

    editableCell = [(HKEmergencyCardPrimaryLanguageTableItem *)self attributedStringForCurrentLanguage];
    v14 = [(HKMedicalIDEditorLanguageCell *)v9 detailLabel];
    [v14 setAttributedText:editableCell];
  }

  return v9;
}

- (id)attributedStringForCurrentLanguage
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  v4 = [(HKSpokenLanguage *)self->_currentLanguage languageInCurrentLocale];
  v5 = *MEMORY[0x1E69DB648];
  v21 = *MEMORY[0x1E69DB648];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v22[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v8 = [v3 initWithString:v4 attributes:v7];

  v9 = [(HKSpokenLanguage *)self->_currentLanguage languageInCurrentLocale];
  v10 = [(HKSpokenLanguage *)self->_currentLanguage languageInLanguageLocale];

  if (v9 != v10)
  {
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    v12 = MEMORY[0x1E696AEC0];
    v13 = [(HKSpokenLanguage *)self->_currentLanguage languageInLanguageLocale];
    v14 = [v12 stringWithFormat:@"\n%@", v13];
    v19 = v5;
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v20 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v17 = [v11 initWithString:v14 attributes:v16];
    [v8 appendAttributedString:v17];
  }

  return v8;
}

- (double)tableView:(id)a3 heightForRowAtIndex:(int64_t)a4
{
  v6 = a3;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    v10.receiver = self;
    v10.super_class = HKEmergencyCardPrimaryLanguageTableItem;
    [(HKEmergencyCardTableItem *)&v10 tableView:v6 heightForRowAtIndex:a4];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  return v8;
}

- (BOOL)shouldHighlightRowAtIndex:(int64_t)a3
{
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    [(HKMedicalIDEditorLanguageCell *)self->_editableCell beginEditing];
  }

  return 0;
}

- (void)presentSpokenLanguageController
{
  [(HKEmergencyCardPrimaryLanguageTableItem *)self setCurrentLanguage:1];
  v5 = [[HKSpokenLanguagesViewController alloc] initWithCurrentLanguage:self->_currentLanguage preferredLanguages:self->_mostLikelyLanguages andAllSpokenLanguages:self->_allSpokenLanguages];
  [(HKSpokenLanguagesViewController *)v5 setPickerDelegate:self];
  v3 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  v4 = [(HKEmergencyCardTableItem *)self owningViewController];
  [v4 presentViewController:v3 animated:1 completion:0];
}

- (int64_t)editingStyleForRowAtIndex:(int64_t)a3
{
  if (self->_isEditing)
  {
    return 1;
  }

  v4 = [(HKEmergencyCardTableItem *)self data];
  v5 = [v4 primaryLanguageCode];

  if (v5)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)commitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4
{
  if (a3 == 1)
  {
    v5 = [(HKEmergencyCardTableItem *)self data:1];
    [v5 setPrimaryLanguageCode:0];

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  self->_isEditing = v6;
  return 2;
}

- (void)didCommitEditingStyle:(int64_t)a3 forRowAtIndex:(int64_t)a4
{
  if (a3 == 2 && self->_isEditing)
  {
    [(HKMedicalIDEditorLanguageCell *)self->_editableCell beginEditing];
  }
}

- (void)didSelectCellWithLanguage:(id)a3
{
  v4 = a3;
  v5 = [(HKSpokenLanguage *)v4 identifier];
  v6 = [(HKEmergencyCardTableItem *)self data];
  [v6 setPrimaryLanguageCode:v5];

  currentLanguage = self->_currentLanguage;
  self->_currentLanguage = v4;
  v8 = v4;

  [(HKMedicalIDEditorLanguageCell *)self->_editableCell setValueLanguageText:self->_currentLanguage];
}

- (void)didCancelLanguageSelection
{
  if (![(HKEmergencyCardPrimaryLanguageTableItem *)self hasPresentableData])
  {
    [(HKEmergencyCardPrimaryLanguageTableItem *)self commitEditingStyle:1 forRowAtIndex:0];
    v3 = [(HKEmergencyCardPrimaryLanguageTableItem *)self delegate];
    [v3 updatePrimaryLanguageTableItem];
  }
}

- (HKEmergencyCardPrimaryLanguageUpdateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end