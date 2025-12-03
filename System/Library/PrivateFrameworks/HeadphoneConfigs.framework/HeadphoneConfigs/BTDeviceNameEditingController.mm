@interface BTDeviceNameEditingController
- (BOOL)textFieldShouldReturn:(id)return;
- (BTDeviceNameEditingController)init;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)keyboardWillShow:(id)show;
- (void)suspend;
- (void)textDidChange:(id)change;
@end

@implementation BTDeviceNameEditingController

- (BTDeviceNameEditingController)init
{
  v5.receiver = self;
  v5.super_class = BTDeviceNameEditingController;
  v2 = [(BTDeviceNameEditingController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
    userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
    v6 = +[HPSDevice deviceKey];
    v7 = [userInfo objectForKeyedSubscript:v6];
    currentDevice = self->_currentDevice;
    self->_currentDevice = v7;

    classicDevice = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
    name = [classicDevice name];
    deviceName = self->_deviceName;
    self->_deviceName = name;

    classicDevice2 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
    productName = [classicDevice2 productName];
    productName = self->_productName;
    self->_productName = productName;

    v15 = objc_alloc(MEMORY[0x277CBEB18]);
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v17 = [v15 initWithObjects:{emptyGroupSpecifier, 0}];

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
  firstResponder = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) firstResponder];
  [firstResponder resignFirstResponder];

  v4.receiver = self;
  v4.super_class = BTDeviceNameEditingController;
  [(BTDeviceNameEditingController *)&v4 suspend];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = BTDeviceNameEditingController;
  v5 = [(BTDeviceNameEditingController *)&v11 tableView:view cellForRowAtIndexPath:path];
  editableTextField = [v5 editableTextField];
  v7 = editableTextField;
  if (editableTextField)
  {
    [editableTextField setReturnKeyType:9];
    [v7 setAutocapitalizationType:0];
    [v7 setAutocorrectionType:1];
    [v7 setAutoresizesTextToFit:1];
    [v7 setTextAlignment:4];
    [v7 setClearButtonMode:3];
    [v7 addTarget:self action:sel_textDidChange_ forEvents:0x20000];
    [v7 setDelegate:self];
    p_deviceName = &self->_deviceName;
    [v7 setText:self->_deviceName];
    classicDevice = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
    if (([classicDevice magicPaired] & 1) == 0)
    {
      p_deviceName = &self->_productName;
    }

    [v7 setPlaceholder:*p_deviceName];
  }

  return v5;
}

- (void)keyboardWillShow:(id)show
{
  activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
  if ([(BTDeviceNameEditingController *)self keyboardShownOnce])
  {
    connected = [(BluetoothDeviceProtocol *)self->_currentDevice connected];
  }

  else
  {
    connected = 0;
  }

  [activeKeyboard setReturnKeyEnabled:connected];

  if (![(BTDeviceNameEditingController *)self keyboardShownOnce])
  {

    [(BTDeviceNameEditingController *)self setKeyboardShownOnce:1];
  }
}

- (void)textDidChange:(id)change
{
  changeCopy = change;
  text = [changeCopy text];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (![v6 length])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [changeCopy setText:&stru_286339F58];
    }
  }

  if ([v6 length] > 0x3C)
  {
    connected = 0;
  }

  else
  {
    name = [(BluetoothDeviceProtocol *)self->_currentDevice name];
    if ([v6 isEqualToString:name])
    {
      connected = 0;
    }

    else
    {
      connected = [(BluetoothDeviceProtocol *)self->_currentDevice connected];
    }
  }

  activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
  [activeKeyboard setReturnKeyEnabled:connected];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  v23 = *MEMORY[0x277D85DE8];
  returnCopy = return;
  text = [returnCopy text];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (![v7 length])
  {
    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      placeholder = [returnCopy placeholder];
      v21 = 138477827;
      v22 = placeholder;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Textfield empty, setting it as placeholder: %{private}@", &v21, 0xCu);
    }

    placeholder2 = [returnCopy placeholder];

    v7 = placeholder2;
  }

  connected = [(BluetoothDeviceProtocol *)self->_currentDevice connected];
  if (connected)
  {
    name = [(BluetoothDeviceProtocol *)self->_currentDevice name];
    v13 = [v7 isEqualToString:name];

    if ((v13 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
      [WeakRetained setTitle:v7];

      classicDevice = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
      [classicDevice setUserName:v7];

      classicDevice2 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
      LODWORD(classicDevice) = [classicDevice2 magicPaired];

      if (classicDevice)
      {
        [returnCopy setPlaceholder:v7];
      }
    }

    [returnCopy setText:v7];
  }

  else
  {
    v17 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "Cannot rename when device is disconnected", &v21, 2u);
    }

    activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
    [activeKeyboard setReturnKeyEnabled:0];
  }

  v19 = *MEMORY[0x277D85DE8];
  return connected;
}

@end