@interface HKEmergencyCardEmergencyAccessTableItem
- (UIEdgeInsets)separatorInset;
- (id)initInEditMode:(BOOL)a3 shouldShowLocked:(BOOL)a4 shouldShareInfo:(BOOL)a5;
- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4;
- (id)titleForHeader;
- (void)setIsSecondaryProfile:(BOOL)a3;
@end

@implementation HKEmergencyCardEmergencyAccessTableItem

- (id)initInEditMode:(BOOL)a3 shouldShowLocked:(BOOL)a4 shouldShareInfo:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v27[2] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = HKEmergencyCardEmergencyAccessTableItem;
  v8 = [(HKEmergencyCardTableItem *)&v25 initInEditMode:?];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  v8[112] = a4;
  v8[113] = v5;
  if (v8[112] == 1)
  {
    v10 = [[HKEmergencyCardEnabledTableItem alloc] initInEditMode:v7];
    v11 = v9[11];
    v9[11] = v10;

    [v9[11] setIsSecondaryProfile:{objc_msgSend(v9, "isSecondaryProfile")}];
    v12 = [[HKEmergencyCardFooterTableItem alloc] initInEditMode:v7];
    v13 = v9[12];
    v9[12] = v12;

    if ((*(v9 + 113) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v5)
  {
    goto LABEL_10;
  }

  v14 = [MEMORY[0x1E696C608] sharedBehavior];
  if ([v14 supportsEED])
  {

LABEL_9:
    v17 = [[HKEmergencyCardShareInfoTableItem alloc] initInEditMode:v7];
    v18 = v9[10];
    v9[10] = v17;

    v19 = [[HKEmergencyCardFooterTableItem alloc] initInEditMode:v7];
    v20 = v9[13];
    v9[13] = v19;

    [v9[10] setIsSecondaryProfile:{objc_msgSend(v9, "isSecondaryProfile")}];
    goto LABEL_10;
  }

  v15 = [v9 data];
  v16 = [v15 shareDuringEmergency];

  if (v16)
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

- (void)setIsSecondaryProfile:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HKEmergencyCardEmergencyAccessTableItem;
  [(HKEmergencyCardTableItem *)&v4 setIsSecondaryProfile:a3];
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

- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = 0;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v7 = [(HKEmergencyCardFooterTableItem *)self->_enabledFooterItem tableView:v6 cellForRowAtIndex:1];
        v8 = [(HKEmergencyCardEnabledTableItem *)self->_enabledTableItem footerTextViewString];
        [v7 setFooterText:v8];
      }

      goto LABEL_11;
    }

    enabledTableItem = self->_enabledTableItem;
    v11 = v6;
    v12 = 0;
LABEL_10:
    v7 = [enabledTableItem tableView:v11 cellForRowAtIndex:v12];
    goto LABEL_11;
  }

  if (a4 == 2)
  {
    enabledTableItem = self->_shareInfoTableItem;
    v11 = v6;
    v12 = 2;
    goto LABEL_10;
  }

  if (a4 == 3)
  {
    v7 = [(HKEmergencyCardFooterTableItem *)self->_shareInfoFooterItem tableView:v6 cellForRowAtIndex:3];
    v9 = [(HKEmergencyCardShareInfoTableItem *)self->_shareInfoTableItem footerTextViewString];
    [v7 setFooterText:v9];

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