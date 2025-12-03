@interface HKEmergencyCardShareInfoTableItem
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (UIEdgeInsets)separatorInset;
- (UITableView)tableView;
- (id)_editCell;
- (id)_viewCellForTableView:(id)view;
- (id)footerTextViewString;
- (id)initInEditMode:(BOOL)mode;
- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index;
- (id)titleForFooter;
- (void)switchWasChanged:(BOOL)changed;
@end

@implementation HKEmergencyCardShareInfoTableItem

- (id)initInEditMode:(BOOL)mode
{
  v4.receiver = self;
  v4.super_class = HKEmergencyCardShareInfoTableItem;
  return [(HKEmergencyCardTableItem *)&v4 initInEditMode:mode];
}

- (id)_editCell
{
  cell = self->_cell;
  if (!cell)
  {
    v4 = [HKMedicalIDEditorSwitchCell alloc];
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:@"show_share_in_emergency_switch_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    data = [(HKEmergencyCardTableItem *)self data];
    v8 = -[HKMedicalIDEditorSwitchCell initWithTitle:defaultState:](v4, "initWithTitle:defaultState:", v6, [data shareDuringEmergency]);
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
  v8 = [v7 localizedStringForKey:@"show_share_in_emergency_switch_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  titleLabel = [v6 titleLabel];
  [titleLabel setText:v8];

  data = [(HKEmergencyCardTableItem *)self data];
  LODWORD(v7) = [data shareDuringEmergency];
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = v11;
  if (v7)
  {
    v13 = @"access_enabled";
  }

  else
  {
    v13 = @"access_disabled";
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
  [data setShareDuringEmergency:changedCopy];

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

    _editCell = [(HKEmergencyCardShareInfoTableItem *)self _editCell];
  }

  else
  {
    _editCell = [(HKEmergencyCardShareInfoTableItem *)self _viewCellForTableView:viewCopy];
  }

  return _editCell;
}

- (id)footerTextViewString
{
  v15[2] = *MEMORY[0x1E69E9840];
  titleForFooter = [(HKEmergencyCardShareInfoTableItem *)self titleForFooter];
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  v14[0] = *MEMORY[0x1E69DB650];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v15[0] = secondaryLabelColor;
  v14[1] = *MEMORY[0x1E69DB648];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v15[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v7 = [v3 initWithString:titleForFooter attributes:v6];

  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"share_in_emergency_learn_more" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v10 = [titleForFooter localizedStandardRangeOfString:v9];
  v12 = v11;

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v7 addAttribute:*MEMORY[0x1E69DB670] value:@"x-apple-health://local" range:{v10, v12}];
  }

  return v7;
}

- (id)titleForFooter
{
  if ([(HKEmergencyCardTableItem *)self isSecondaryProfile])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"show_share_in_emergency_footer_for_tinker_profile_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
    profileFirstName = [(HKEmergencyCardTableItem *)self profileFirstName];
    v7 = [v3 stringWithFormat:v5, profileFirstName];
  }

  else
  {
    data = [(HKEmergencyCardTableItem *)self data];
    shareDuringEmergency = [data shareDuringEmergency];

    if (shareDuringEmergency)
    {
      hasPairedWatch = [MEMORY[0x1E696C608] hasPairedWatch];
      v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v4 = v11;
      if (hasPairedWatch)
      {
        v12 = @"share_in_emergency_apple_watch_enabled_footer";
      }

      else
      {
        v12 = @"share_in_emergency_enabled_footer";
      }
    }

    else
    {
      v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v4 = v11;
      v12 = @"share_in_emergency_disabled_footer";
    }

    v7 = [v11 localizedStringForKey:v12 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"%@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:@"share_in_emergency_learn_more" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v18 = [v13 stringWithFormat:v15, v7, v17];

  return v18;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v7 = objc_alloc_init(HKMedicalIDEmergencyAccessLearnMoreTableViewController);
  v8 = [[HKNavigationController alloc] initWithRootViewController:v7];
  owningViewController = [(HKEmergencyCardTableItem *)self owningViewController];
  [owningViewController presentViewController:v8 animated:1 completion:0];

  return 0;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end