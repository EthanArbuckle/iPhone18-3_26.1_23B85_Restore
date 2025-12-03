@interface HKEmergencyCardEnabledTableItem
- (UIEdgeInsets)separatorInset;
- (UITableView)tableView;
- (id)_editCell;
- (id)_viewCellForTableView:(id)view;
- (id)footerTextViewString;
- (id)initInEditMode:(BOOL)mode;
- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index;
- (id)titleForFooter;
- (id)titleForHeader;
- (void)switchWasChanged:(BOOL)changed;
@end

@implementation HKEmergencyCardEnabledTableItem

- (id)initInEditMode:(BOOL)mode
{
  v4.receiver = self;
  v4.super_class = HKEmergencyCardEnabledTableItem;
  return [(HKEmergencyCardTableItem *)&v4 initInEditMode:mode];
}

- (id)_editCell
{
  cell = self->_cell;
  if (!cell)
  {
    v4 = [HKMedicalIDEditorSwitchCell alloc];
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:@"show_medical_id_switch_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    data = [(HKEmergencyCardTableItem *)self data];
    v8 = -[HKMedicalIDEditorSwitchCell initWithTitle:defaultState:](v4, "initWithTitle:defaultState:", v6, [data isDisabled] ^ 1);
    v9 = self->_cell;
    self->_cell = v8;

    [(HKMedicalIDEditorSwitchCell *)self->_cell setDelegate:self];
    cell = self->_cell;
  }

  return cell;
}

- (id)_viewCellForTableView:(id)view
{
  viewCopy = view;
  v5 = +[_HKMedicalIDMultilineStringCell defaultReuseIdentifier];
  v6 = [viewCopy dequeueReusableCellWithIdentifier:v5];

  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"show_medical_id_switch_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  titleLabel = [v6 titleLabel];
  [titleLabel setText:v8];

  data = [(HKEmergencyCardTableItem *)self data];
  LODWORD(v7) = [data isDisabled];
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = v11;
  if (v7)
  {
    v13 = @"access_disabled";
  }

  else
  {
    v13 = @"access_enabled";
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  detailLabel = [v6 detailLabel];
  [detailLabel setText:v14];

  return v6;
}

- (void)switchWasChanged:(BOOL)changed
{
  changedCopy = changed;
  data = [(HKEmergencyCardTableItem *)self data];
  [data setIsDisabled:!changedCopy];

  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [WeakRetained reloadData];
}

- (UIEdgeInsets)separatorInset
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index
{
  viewCopy = view;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    objc_storeWeak(&self->_tableView, viewCopy);

    _editCell = [(HKEmergencyCardEnabledTableItem *)self _editCell];
  }

  else
  {
    _editCell = [(HKEmergencyCardEnabledTableItem *)self _viewCellForTableView:viewCopy];
  }

  return _editCell;
}

- (id)titleForHeader
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"show_medical_id_switch_title_header" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)footerTextViewString
{
  v10[2] = *MEMORY[0x1E69E9840];
  titleForFooter = [(HKEmergencyCardEnabledTableItem *)self titleForFooter];
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  v9[0] = *MEMORY[0x1E69DB650];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v10[0] = secondaryLabelColor;
  v9[1] = *MEMORY[0x1E69DB648];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [v3 initWithString:titleForFooter attributes:v6];

  return v7;
}

- (id)titleForFooter
{
  if ([(HKEmergencyCardTableItem *)self isInEditMode]&& _os_feature_enabled_impl())
  {
    data = [(HKEmergencyCardTableItem *)self data];
    isDisabled = [data isDisabled];

    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    if (isDisabled)
    {
      v6 = @"show_locked_disabled_footer";
    }

    else
    {
      v6 = @"show_locked_enabled_footer";
    }
  }

  else
  {
    if ([(HKEmergencyCardTableItem *)self isSecondaryProfile])
    {
      v7 = MEMORY[0x1E696AEC0];
      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v8 = [v5 localizedStringForKey:@"show_medical_id_detail_for_tinker_profile_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
      profileFirstName = [(HKEmergencyCardTableItem *)self profileFirstName];
      v10 = [v7 stringWithFormat:v8, profileFirstName];

      goto LABEL_12;
    }

    hasPairedWatch = [MEMORY[0x1E696C608] hasPairedWatch];
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    if (hasPairedWatch)
    {
      v6 = @"show_medical_id_detail_with_watch";
    }

    else
    {
      v6 = @"show_medical_id_detail";
    }
  }

  v10 = [v5 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
LABEL_12:

  return v10;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end