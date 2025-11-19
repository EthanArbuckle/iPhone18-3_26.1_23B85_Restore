@interface BTDevicePicker
- (BTDevicePicker)initWithTitle:(id)a3 service:(unsigned int)a4 discoveryNameFilter:(id)a5;
- (void)createAlertWindowForRootViewController:(id)a3;
- (void)dealloc;
- (void)didDismissWithResult:(int64_t)a3 deviceAddress:(id)a4;
- (void)discoveredDevice:(id)a3 deviceAddress:(id)a4;
- (void)show;
@end

@implementation BTDevicePicker

- (BTDevicePicker)initWithTitle:(id)a3 service:(unsigned int)a4 discoveryNameFilter:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BTDevicePicker;
  v11 = [(BTDevicePicker *)&v14 init];
  if (v11)
  {
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v11 selector:sel_applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];

    objc_storeStrong(&v11->_title, a3);
    v11->_service = a4;
    objc_storeStrong(&v11->_predicate, a5);
  }

  return v11;
}

- (void)dealloc
{
  if (CBUILogInitOnce != -1)
  {
    [BTDevicePicker dealloc];
  }

  v3 = CBUILogComponent;
  if (os_log_type_enabled(CBUILogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245106000, v3, OS_LOG_TYPE_DEFAULT, "BTDevicePikcer dealloc", buf, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  if (self->_extensionRequestIdentifier)
  {
    if (CBUILogInitOnce != -1)
    {
      [BTDevicePicker dealloc];
    }

    v5 = CBUILogComponent;
    if (os_log_type_enabled(CBUILogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245106000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling the extension", buf, 2u);
    }

    [(NSExtension *)self->_extension cancelExtensionRequestWithIdentifier:self->_extensionRequestIdentifier];
  }

  extension = self->_extension;
  self->_extension = 0;

  [(BTDevicePicker *)self setDelegate:0];
  title = self->_title;
  self->_title = 0;

  predicate = self->_predicate;
  self->_predicate = 0;

  alertWindow = self->_alertWindow;
  self->_alertWindow = 0;

  devicePickerRemoteViewController = self->_devicePickerRemoteViewController;
  self->_devicePickerRemoteViewController = 0;

  v11.receiver = self;
  v11.super_class = BTDevicePicker;
  [(BTDevicePicker *)&v11 dealloc];
}

- (void)show
{
  v3 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.CoreBluetoothUI.BTDevicePickerUI" error:0];
  [(BTDevicePicker *)self setExtension:v3];

  objc_initWeak(&location, self);
  v4 = [(BTDevicePicker *)self extension];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22__BTDevicePicker_show__block_invoke;
  v5[3] = &unk_278E23080;
  objc_copyWeak(&v6, &location);
  [v4 instantiateViewControllerWithInputItems:MEMORY[0x277CBEBF8] connectionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __22__BTDevicePicker_show__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (v9 || !WeakRetained)
  {
    if (CBUILogInitOnce != -1)
    {
      [BTDevicePicker dealloc];
    }

    v15 = CBUILogComponent;
    if (os_log_type_enabled(CBUILogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_245106000, v15, OS_LOG_TYPE_DEFAULT, "Failed to launch extension 'com.apple.CoreBluetoothUI.BTDevicePickerUI' due to error: %@", &v17, 0xCu);
    }
  }

  else
  {
    if (CBUILogInitOnce != -1)
    {
      [BTDevicePicker dealloc];
    }

    v12 = CBUILogComponent;
    if (os_log_type_enabled(CBUILogComponent, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_245106000, v12, OS_LOG_TYPE_DEFAULT, "Extension 'com.apple.CoreBluetoothUI.BTDevicePickerUI' launched successfully!", &v17, 2u);
    }

    [v8 set_delegate:v11];
    [v11 setDevicePickerRemoteViewController:v8];
    [v11 setExtensionRequestIdentifier:v7];
    v13 = [v11 devicePickerRemoteViewController];
    [v11 createAlertWindowForRootViewController:v13];

    v14 = [v8 serviceViewControllerProxy];
    [v14 showBTDevicePickerWithTitle:*(v11 + 2) Service:v11[6]];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)createAlertWindowForRootViewController:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 delegate];
  v7 = objc_opt_respondsToSelector();

  v8 = [MEMORY[0x277D75128] sharedApplication];
  v9 = [v8 delegate];
  v10 = v9;
  if (v7)
  {
    v11 = [v9 window];

    v10 = v11;
  }

  if (!v10)
  {
    v14 = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
    v21 = [v14 firstObject];
    alertWindow = self->_alertWindow;
    self->_alertWindow = v21;

    goto LABEL_22;
  }

  v12 = [MEMORY[0x277D75128] sharedApplication];
  v13 = [v12 connectedScenes];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v15)
  {
LABEL_14:

LABEL_18:
    if (CBUILogInitOnce != -1)
    {
      [BTDevicePicker dealloc];
    }

    v26 = CBUILogComponent;
    if (os_log_type_enabled(CBUILogComponent, OS_LOG_TYPE_ERROR))
    {
      [BTDevicePicker createAlertWindowForRootViewController:v26];
    }

    goto LABEL_22;
  }

  v16 = v15;
  v17 = *v29;
LABEL_6:
  v18 = 0;
  while (1)
  {
    if (*v29 != v17)
    {
      objc_enumerationMutation(v14);
    }

    v19 = *(*(&v28 + 1) + 8 * v18);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v20 = v19;
    if (![v20 activationState])
    {
      break;
    }

LABEL_12:
    if (v16 == ++v18)
    {
      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v16)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  if (!v20)
  {
    goto LABEL_18;
  }

  v23 = self->_alertWindow;
  self->_alertWindow = 0;

  v24 = [[UIWindow_Custom alloc] initWithWindowScene:v20];
  v25 = self->_alertWindow;
  self->_alertWindow = v24;

  [(UIWindow_Custom *)self->_alertWindow setRootViewController:v4];
  [(UIWindow_Custom *)self->_alertWindow setWindowLevel:*MEMORY[0x277D772A8] + 1.0];
  [(UIWindow_Custom *)self->_alertWindow makeKeyAndVisible];

LABEL_22:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)didDismissWithResult:(int64_t)a3 deviceAddress:(id)a4
{
  v6 = a4;
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    if (CBUILogInitOnce != -1)
    {
      [BTDevicePicker dealloc];
    }

    v8 = CBUILogComponent;
    if (os_log_type_enabled(CBUILogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_245106000, v8, OS_LOG_TYPE_DEFAULT, "Calling didDismissWithResult delegate", v9, 2u);
    }

    [(BTDevicePickerDelegate *)self->_delegate devicePicker:self didDismissWithResult:a3 deviceAddress:v6];
  }
}

- (void)discoveredDevice:(id)a3 deviceAddress:(id)a4
{
  v9 = a3;
  v6 = a4;
  predicate = self->_predicate;
  if (!predicate || [(NSPredicate *)predicate evaluateWithObject:v9])
  {
    v8 = [(_UIRemoteViewController *)self->_devicePickerRemoteViewController serviceViewControllerProxy];
    [v8 displayDevice:v9 deviceAddress:v6];
  }
}

@end