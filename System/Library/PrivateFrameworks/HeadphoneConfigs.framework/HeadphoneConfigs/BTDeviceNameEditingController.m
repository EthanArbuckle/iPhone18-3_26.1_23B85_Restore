@interface BTDeviceNameEditingController
- (BOOL)textFieldShouldReturn:(id)a3;
- (BTDeviceNameEditingController)init;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)dealloc;
- (void)keyboardWillShow:(id)a3;
- (void)suspend;
- (void)textDidChange:(id)a3;
@end

@implementation BTDeviceNameEditingController

- (BTDeviceNameEditingController)init
{
  v5.receiver = self;
  v5.super_class = BTDeviceNameEditingController;
  v2 = [(BTDeviceNameEditingController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BTDeviceNameEditingController;
  [(BTDeviceNameEditingController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
    v6 = +[HPSDevice deviceKey];
    v7 = [v5 objectForKeyedSubscript:v6];
    currentDevice = self->_currentDevice;
    self->_currentDevice = v7;

    v9 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
    v10 = [v9 name];
    deviceName = self->_deviceName;
    self->_deviceName = v10;

    v12 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
    v13 = [v12 productName];
    productName = self->_productName;
    self->_productName = v13;

    v15 = objc_alloc(MEMORY[0x277CBEB18]);
    v16 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v17 = [v15 initWithObjects:{v16, 0}];

    v18 = MEMORY[0x277D3FAD8];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
    v20 = [v18 preferenceSpecifierNamed:0 target:WeakRetained set:sel_saveEditedName_specifier_ get:sel_getDeviceName_ detail:0 cell:8 edit:0];

    [v20 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF20]];
    [v17 addObject:v20];
    v21 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v17;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)suspend
{
  v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) firstResponder];
  [v3 resignFirstResponder];

  v4.receiver = self;
  v4.super_class = BTDeviceNameEditingController;
  [(BTDeviceNameEditingController *)&v4 suspend];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = BTDeviceNameEditingController;
  v5 = [(BTDeviceNameEditingController *)&v11 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 editableTextField];
  v7 = v6;
  if (v6)
  {
    [v6 setReturnKeyType:9];
    [v7 setAutocapitalizationType:0];
    [v7 setAutocorrectionType:1];
    [v7 setAutoresizesTextToFit:1];
    [v7 setTextAlignment:4];
    [v7 setClearButtonMode:3];
    [v7 addTarget:self action:sel_textDidChange_ forEvents:0x20000];
    [v7 setDelegate:self];
    p_deviceName = &self->_deviceName;
    [v7 setText:self->_deviceName];
    v9 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
    if (([v9 magicPaired] & 1) == 0)
    {
      p_deviceName = &self->_productName;
    }

    [v7 setPlaceholder:*p_deviceName];
  }

  return v5;
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [MEMORY[0x277D75658] activeKeyboard];
  if ([(BTDeviceNameEditingController *)self keyboardShownOnce])
  {
    v5 = [(BluetoothDeviceProtocol *)self->_currentDevice connected];
  }

  else
  {
    v5 = 0;
  }

  [v4 setReturnKeyEnabled:v5];

  if (![(BTDeviceNameEditingController *)self keyboardShownOnce])
  {

    [(BTDeviceNameEditingController *)self setKeyboardShownOnce:1];
  }
}

- (void)textDidChange:(id)a3
{
  v10 = a3;
  v4 = [v10 text];
  v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  if (![v6 length])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 setText:&stru_286339F58];
    }
  }

  if ([v6 length] > 0x3C)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(BluetoothDeviceProtocol *)self->_currentDevice name];
    if ([v6 isEqualToString:v7])
    {
      v8 = 0;
    }

    else
    {
      v8 = [(BluetoothDeviceProtocol *)self->_currentDevice connected];
    }
  }

  v9 = [MEMORY[0x277D75658] activeKeyboard];
  [v9 setReturnKeyEnabled:v8];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 text];
  v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  if (![v7 length])
  {
    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 placeholder];
      v21 = 138477827;
      v22 = v9;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Textfield empty, setting it as placeholder: %{private}@", &v21, 0xCu);
    }

    v10 = [v4 placeholder];

    v7 = v10;
  }

  v11 = [(BluetoothDeviceProtocol *)self->_currentDevice connected];
  if (v11)
  {
    v12 = [(BluetoothDeviceProtocol *)self->_currentDevice name];
    v13 = [v7 isEqualToString:v12];

    if ((v13 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
      [WeakRetained setTitle:v7];

      v15 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
      [v15 setUserName:v7];

      v16 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
      LODWORD(v15) = [v16 magicPaired];

      if (v15)
      {
        [v4 setPlaceholder:v7];
      }
    }

    [v4 setText:v7];
  }

  else
  {
    v17 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "Cannot rename when device is disconnected", &v21, 2u);
    }

    v18 = [MEMORY[0x277D75658] activeKeyboard];
    [v18 setReturnKeyEnabled:0];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

@end