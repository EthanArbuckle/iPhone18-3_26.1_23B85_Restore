@interface HKEmergencyCardEmergencyAccessTableItem
- (UIEdgeInsets)separatorInset;
- (id)initInEditMode:(BOOL)mode shouldShowLocked:(BOOL)locked shouldShareInfo:(BOOL)info;
- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index;
- (id)titleForHeader;
- (void)setIsSecondaryProfile:(BOOL)profile;
@end

@implementation HKEmergencyCardEmergencyAccessTableItem

- (id)initInEditMode:(BOOL)mode shouldShowLocked:(BOOL)locked shouldShareInfo:(BOOL)info
{
  infoCopy = info;
  modeCopy = mode;
  v27[2] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = HKEmergencyCardEmergencyAccessTableItem;
  v8 = [(HKEmergencyCardTableItem *)&v25 initInEditMode:?];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  v8[112] = locked;
  v8[113] = infoCopy;
  if (v8[112] == 1)
  {
    v10 = [[HKEmergencyCardEnabledTableItem alloc] initInEditMode:modeCopy];
    v11 = v9[11];
    v9[11] = v10;

    [v9[11] setIsSecondaryProfile:{objc_msgSend(v9, "isSecondaryProfile")}];
    v12 = [[HKEmergencyCardFooterTableItem alloc] initInEditMode:modeCopy];
    v13 = v9[12];
    v9[12] = v12;

    if ((*(v9 + 113) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!infoCopy)
  {
    goto LABEL_10;
  }

  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  if ([mEMORY[0x1E696C608] supportsEED])
  {

LABEL_9:
    v17 = [[HKEmergencyCardShareInfoTableItem alloc] initInEditMode:modeCopy];
    v18 = v9[10];
    v9[10] = v17;

    v19 = [[HKEmergencyCardFooterTableItem alloc] initInEditMode:modeCopy];
    v20 = v9[13];
    v9[13] = v19;

    [v9[10] setIsSecondaryProfile:{objc_msgSend(v9, "isSecondaryProfile")}];
    goto LABEL_10;
  }

  data = [v9 data];
  shareDuringEmergency = [data shareDuringEmergency];

  if (shareDuringEmergency)
  {
    goto LABEL_9;
  }

LABEL_10:
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v9[11])
  {
    v27[0] = v9[11];
    v27[1] = v9[12];
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    [v21 addObjectsFromArray:v22];
  }

  if (v9[10])
  {
    v26[0] = v9[10];
    v26[1] = v9[13];
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    [v21 addObjectsFromArray:v23];
  }

  [v9 setSubitems:v21];

  return v9;
}

- (void)setIsSecondaryProfile:(BOOL)profile
{
  v4.receiver = self;
  v4.super_class = HKEmergencyCardEmergencyAccessTableItem;
  [(HKEmergencyCardTableItem *)&v4 setIsSecondaryProfile:profile];
  [(HKEmergencyCardTableItem *)self->_enabledTableItem setIsSecondaryProfile:[(HKEmergencyCardTableItem *)self isSecondaryProfile]];
  [(HKEmergencyCardTableItem *)self->_shareInfoTableItem setIsSecondaryProfile:[(HKEmergencyCardTableItem *)self isSecondaryProfile]];
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
  v7 = 0;
  if (index <= 1)
  {
    if (index)
    {
      if (index == 1)
      {
        v7 = [(HKEmergencyCardFooterTableItem *)self->_enabledFooterItem tableView:viewCopy cellForRowAtIndex:1];
        footerTextViewString = [(HKEmergencyCardEnabledTableItem *)self->_enabledTableItem footerTextViewString];
        [v7 setFooterText:footerTextViewString];
      }

      goto LABEL_11;
    }

    enabledTableItem = self->_enabledTableItem;
    v11 = viewCopy;
    v12 = 0;
LABEL_10:
    v7 = [enabledTableItem tableView:v11 cellForRowAtIndex:v12];
    goto LABEL_11;
  }

  if (index == 2)
  {
    enabledTableItem = self->_shareInfoTableItem;
    v11 = viewCopy;
    v12 = 2;
    goto LABEL_10;
  }

  if (index == 3)
  {
    v7 = [(HKEmergencyCardFooterTableItem *)self->_shareInfoFooterItem tableView:viewCopy cellForRowAtIndex:3];
    footerTextViewString2 = [(HKEmergencyCardShareInfoTableItem *)self->_shareInfoTableItem footerTextViewString];
    [v7 setFooterText:footerTextViewString2];

    [v7 setTextViewDelegate:self->_shareInfoTableItem];
  }

LABEL_11:

  return v7;
}

- (id)titleForHeader
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"emergency_access" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

@end