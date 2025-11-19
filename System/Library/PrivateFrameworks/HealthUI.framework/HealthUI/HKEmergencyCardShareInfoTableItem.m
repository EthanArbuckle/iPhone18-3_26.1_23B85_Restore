@interface HKEmergencyCardShareInfoTableItem
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (UIEdgeInsets)separatorInset;
- (UITableView)tableView;
- (id)_editCell;
- (id)_viewCellForTableView:(id)a3;
- (id)footerTextViewString;
- (id)initInEditMode:(BOOL)a3;
- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4;
- (id)titleForFooter;
- (void)switchWasChanged:(BOOL)a3;
@end

@implementation HKEmergencyCardShareInfoTableItem

- (id)initInEditMode:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HKEmergencyCardShareInfoTableItem;
  return [(HKEmergencyCardTableItem *)&v4 initInEditMode:a3];
}

- (id)_editCell
{
  cell = self->_cell;
  if (!cell)
  {
    v4 = [HKMedicalIDEditorSwitchCell alloc];
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:@"show_share_in_emergency_switch_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v7 = [(HKEmergencyCardTableItem *)self data];
    v8 = -[HKMedicalIDEditorSwitchCell initWithTitle:defaultState:](v4, "initWithTitle:defaultState:", v6, [v7 shareDuringEmergency]);
    v9 = self->_cell;
    self->_cell = v8;

    [(HKMedicalIDEditorSwitchCell *)self->_cell setDelegate:self];
    cell = self->_cell;
  }

  return cell;
}

- (id)_viewCellForTableView:(id)a3
{
  v4 = a3;
  v5 = +[_HKMedicalIDMultilineStringCell defaultReuseIdentifier];
  v6 = [v4 dequeueReusableCellWithIdentifier:v5];

  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"show_share_in_emergency_switch_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v9 = [v6 titleLabel];
  [v9 setText:v8];

  v10 = [(HKEmergencyCardTableItem *)self data];
  LODWORD(v7) = [v10 shareDuringEmergency];
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
  v15 = [v6 detailLabel];
  [v15 setText:v14];

  return v6;
}

- (void)switchWasChanged:(BOOL)a3
{
  v3 = a3;
  v5 = [(HKEmergencyCardTableItem *)self data];
  [v5 setShareDuringEmergency:v3];

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

- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4
{
  v5 = a3;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    objc_storeWeak(&self->_tableView, v5);

    v6 = [(HKEmergencyCardShareInfoTableItem *)self _editCell];
  }

  else
  {
    v6 = [(HKEmergencyCardShareInfoTableItem *)self _viewCellForTableView:v5];
  }

  return v6;
}

- (id)footerTextViewString
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = [(HKEmergencyCardShareInfoTableItem *)self titleForFooter];
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  v14[0] = *MEMORY[0x1E69DB650];
  v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v15[0] = v4;
  v14[1] = *MEMORY[0x1E69DB648];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v15[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v7 = [v3 initWithString:v2 attributes:v6];

  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"share_in_emergency_learn_more" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v10 = [v2 localizedStandardRangeOfString:v9];
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
    v6 = [(HKEmergencyCardTableItem *)self profileFirstName];
    v7 = [v3 stringWithFormat:v5, v6];
  }

  else
  {
    v8 = [(HKEmergencyCardTableItem *)self data];
    v9 = [v8 shareDuringEmergency];

    if (v9)
    {
      v10 = [MEMORY[0x1E696C608] hasPairedWatch];
      v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v4 = v11;
      if (v10)
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

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = objc_alloc_init(HKMedicalIDEmergencyAccessLearnMoreTableViewController);
  v8 = [[HKNavigationController alloc] initWithRootViewController:v7];
  v9 = [(HKEmergencyCardTableItem *)self owningViewController];
  [v9 presentViewController:v8 animated:1 completion:0];

  return 0;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end