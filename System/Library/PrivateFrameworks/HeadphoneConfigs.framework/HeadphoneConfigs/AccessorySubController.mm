@interface AccessorySubController
- (AccessorySubController)init;
- (id)specifiers;
- (void)dealloc;
- (void)listItemSelected:(id)a3;
- (void)specifiers;
@end

@implementation AccessorySubController

- (AccessorySubController)init
{
  v3.receiver = self;
  v3.super_class = AccessorySubController;
  result = [(AccessorySubController *)&v3 init];
  if (result)
  {
    *(&result->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC28]) = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AccessorySubController;
  [(PSListItemsController *)&v2 dealloc];
}

- (id)specifiers
{
  v3 = MEMORY[0x277CBEB18];
  v39.receiver = self;
  v39.super_class = AccessorySubController;
  v4 = [(PSListItemsController *)&v39 specifiers];
  v5 = [v3 arrayWithArray:v4];

  v6 = *MEMORY[0x277D3FD20];
  v7 = [*(&self->super.super.super.super.super.super.isa + v6) userInfo];
  v8 = [v7 objectForKeyedSubscript:@"bt-device"];
  currentDevice = self->_currentDevice;
  self->_currentDevice = v8;

  v10 = self->_currentDevice;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(AccessorySubController *)&self->_currentDevice specifiers];
    }

    v13 = self->_currentDevice;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      [AccessorySubController specifiers];
    }

    v11 = self->_currentDevice;
  }

  v14 = v11;
  v15 = MEMORY[0x277D3FAD8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:&stru_286339F58 value:&stru_286339F58 table:@"DeviceConfig"];
  v18 = [v15 preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:0 edit:0];

  v38 = 0;
  [(BluetoothDeviceProtocol *)v14 clickHoldMode:&v38 + 4 rightAction:&v38];
  v19 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
  LODWORD(v17) = [v19 isEqualToString:@"LEFT_ID"];

  v20 = MEMORY[0x277D3FF88];
  if (v17)
  {
    if (HIDWORD(v38) == 7)
    {
      [(BluetoothDeviceProtocol *)v14 setClickHoldMode:7 rightMode:6];
      v21 = @"FOOTER_VOLUME_UP_RIGHT_BUD";
    }

    else
    {
      if (HIDWORD(v38) != 6)
      {
        goto LABEL_18;
      }

      [(BluetoothDeviceProtocol *)v14 setClickHoldMode:6 rightMode:7];
      v21 = @"FOOTER_VOLUME_DOWN_RIGHT_BUD";
    }
  }

  else
  {
    v22 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
    v23 = [v22 isEqualToString:@"RIGHT_ID"];

    if (!v23)
    {
      goto LABEL_18;
    }

    if (v38 == 7)
    {
      [(BluetoothDeviceProtocol *)v14 setClickHoldMode:6 rightMode:7];
      v21 = @"FOOTER_VOLUME_UP_LEFT_BUD";
    }

    else
    {
      if (v38 != 6)
      {
        goto LABEL_18;
      }

      [(BluetoothDeviceProtocol *)v14 setClickHoldMode:7 rightMode:6];
      v21 = @"FOOTER_VOLUME_DOWN_LEFT_BUD";
    }
  }

  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:v21 value:&stru_286339F58 table:@"DeviceConfig-B494"];
  [v18 setProperty:v25 forKey:*v20];

LABEL_18:
  v26 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
  v27 = [v26 isEqualToString:@"LEFT_ID"];

  if (v27)
  {
    if (HIDWORD(v38) == 7)
    {
      [(BluetoothDeviceProtocol *)v14 setClickHoldMode:7 rightMode:6];
      v28 = @"FOOTER_VOLUME_UP_RIGHT_BUD";
    }

    else
    {
      if (HIDWORD(v38) != 6)
      {
        goto LABEL_29;
      }

      [(BluetoothDeviceProtocol *)v14 setClickHoldMode:6 rightMode:7];
      v28 = @"FOOTER_VOLUME_DOWN_RIGHT_BUD";
    }
  }

  else
  {
    v29 = [*(&self->super.super.super.super.super.super.isa + v6) identifier];
    v30 = [v29 isEqualToString:@"RIGHT_ID"];

    if (!v30)
    {
      goto LABEL_29;
    }

    if (v38 == 7)
    {
      [(BluetoothDeviceProtocol *)v14 setClickHoldMode:6 rightMode:7];
      v28 = @"FOOTER_VOLUME_UP_LEFT_BUD";
    }

    else
    {
      if (v38 != 6)
      {
        goto LABEL_29;
      }

      [(BluetoothDeviceProtocol *)v14 setClickHoldMode:7 rightMode:6];
      v28 = @"FOOTER_VOLUME_DOWN_LEFT_BUD";
    }
  }

  v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v31 localizedStringForKey:v28 value:&stru_286339F58 table:@"DeviceConfig-B494b"];
  [v18 setProperty:v32 forKey:*v20];

LABEL_29:
  [v5 addObject:v18];
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  v34 = *MEMORY[0x277D3FC48];
  v35 = *(&self->super.super.super.super.super.super.isa + v34);
  *(&self->super.super.super.super.super.super.isa + v34) = v33;

  v36 = *(&self->super.super.super.super.super.super.isa + v34);

  return v36;
}

- (void)listItemSelected:(id)a3
{
  v4 = a3;
  if (![v4 section])
  {
    v5.receiver = self;
    v5.super_class = AccessorySubController;
    [(PSListItemsController *)&v5 listItemSelected:v4];
    [(AccessorySubController *)self reloadSpecifiers];
  }
}

- (void)specifiers
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = 138412290;
  v8 = v5;
  _os_log_error_impl(&dword_251143000, a2, OS_LOG_TYPE_ERROR, " AccessorySubController does not respond to classicDevice, currentDevice is %@", &v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end