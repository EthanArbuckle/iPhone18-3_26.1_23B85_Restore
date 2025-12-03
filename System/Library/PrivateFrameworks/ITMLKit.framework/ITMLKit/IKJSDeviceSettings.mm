@interface IKJSDeviceSettings
- (CGSize)screen;
- (IKAppDeviceConfig)deviceConfig;
- (IKJSDeviceSettings)initWithAppContext:(id)context deviceConfig:(id)config;
- (IKJSRestrictions)restrictions;
- (NSString)language;
- (NSString)name;
- (NSString)preferredVideoFormat;
- (NSString)preferredVideoPreviewFormat;
- (NSString)storefrontCountryCode;
- (id)_formatStringForVideoFormat:(unint64_t)format;
- (id)asPrivateIKJSDeviceSettings;
- (void)dealloc;
@end

@implementation IKJSDeviceSettings

- (id)asPrivateIKJSDeviceSettings
{
  if ([(IKJSDeviceSettings *)self conformsToProtocol:&unk_2867037F8])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IKJSDeviceSettings)initWithAppContext:(id)context deviceConfig:(id)config
{
  contextCopy = context;
  configCopy = config;
  v18.receiver = self;
  v18.super_class = IKJSDeviceSettings;
  v8 = [(IKJSObject *)&v18 initWithAppContext:contextCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_deviceConfig, configCopy);
    v10 = +[IKJSRestrictions restrictionsDidChangeNotificationName];
    if ([v10 length])
    {
      objc_initWeak(&location, v9);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __54__IKJSDeviceSettings_initWithAppContext_deviceConfig___block_invoke;
      v15[3] = &unk_27979A088;
      objc_copyWeak(&v16, &location);
      v12 = [defaultCenter addObserverForName:v10 object:0 queue:0 usingBlock:v15];
      restrictionDidChangeToken = v9->_restrictionDidChangeToken;
      v9->_restrictionDidChangeToken = v12;

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }

  return v9;
}

void __54__IKJSDeviceSettings_initWithAppContext_deviceConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained appContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__IKJSDeviceSettings_initWithAppContext_deviceConfig___block_invoke_2;
    v7[3] = &unk_27979A0B0;
    objc_copyWeak(&v9, (a1 + 32));
    v8 = v3;
    [v6 evaluate:v7 completionBlock:0];

    objc_destroyWeak(&v9);
  }
}

void __54__IKJSDeviceSettings_initWithAppContext_deviceConfig___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _restrictionsDidChangeNotification:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)dealloc
{
  if (self->_restrictionDidChangeToken)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_restrictionDidChangeToken];
  }

  v4.receiver = self;
  v4.super_class = IKJSDeviceSettings;
  [(IKJSDeviceSettings *)&v4 dealloc];
}

- (NSString)name
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  name = [currentDevice name];

  return name;
}

- (NSString)language
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18;
  v11 = __Block_byref_object_dispose__18;
  v12 = 0;
  appContext = [(IKJSObject *)self appContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__IKJSDeviceSettings_language__block_invoke;
  v6[3] = &unk_279799028;
  v6[4] = self;
  v6[5] = &v7;
  [appContext evaluateDelegateBlockSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __30__IKJSDeviceSettings_language__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) deviceConfig];
  v2 = [v5 systemLanguage];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)storefrontCountryCode
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18;
  v11 = __Block_byref_object_dispose__18;
  v12 = 0;
  appContext = [(IKJSObject *)self appContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__IKJSDeviceSettings_storefrontCountryCode__block_invoke;
  v6[3] = &unk_279799028;
  v6[4] = self;
  v6[5] = &v7;
  [appContext evaluateDelegateBlockSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __43__IKJSDeviceSettings_storefrontCountryCode__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) deviceConfig];
  v2 = [v5 storeFrontCountryCode];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)preferredVideoFormat
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  appContext = [(IKJSObject *)self appContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__IKJSDeviceSettings_preferredVideoFormat__block_invoke;
  v6[3] = &unk_279799028;
  v6[4] = self;
  v6[5] = &v7;
  [appContext evaluateDelegateBlockSync:v6];

  v4 = [(IKJSDeviceSettings *)self _formatStringForVideoFormat:v8[3]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __42__IKJSDeviceSettings_preferredVideoFormat__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceConfig];
  *(*(*(a1 + 40) + 8) + 24) = [v2 preferredVideoFormat];
}

- (NSString)preferredVideoPreviewFormat
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  appContext = [(IKJSObject *)self appContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__IKJSDeviceSettings_preferredVideoPreviewFormat__block_invoke;
  v6[3] = &unk_279799028;
  v6[4] = self;
  v6[5] = &v7;
  [appContext evaluateDelegateBlockSync:v6];

  v4 = [(IKJSDeviceSettings *)self _formatStringForVideoFormat:v8[3]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __49__IKJSDeviceSettings_preferredVideoPreviewFormat__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceConfig];
  *(*(*(a1 + 40) + 8) + 24) = [v2 preferredVideoPreviewFormat];
}

- (CGSize)screen
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v13 = 0;
  v14 = 0;
  v12 = &unk_254A77479;
  appContext = [(IKJSObject *)self appContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__IKJSDeviceSettings_screen__block_invoke;
  v8[3] = &unk_279799028;
  v8[4] = self;
  v8[5] = &v9;
  [appContext evaluateDelegateBlockSync:v8];

  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

void __28__IKJSDeviceSettings_screen__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) deviceConfig];
  [v5 screenSize];
  v2 = *(*(a1 + 40) + 8);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
}

- (IKJSRestrictions)restrictions
{
  v3 = [IKJSRestrictions alloc];
  appContext = [(IKJSObject *)self appContext];
  v5 = [(IKJSObject *)v3 initWithAppContext:appContext];

  return v5;
}

- (id)_formatStringForVideoFormat:(unint64_t)format
{
  v3 = @"SD";
  if (format != 1)
  {
    v3 = 0;
  }

  if (format)
  {
    return v3;
  }

  else
  {
    return @"HD";
  }
}

- (IKAppDeviceConfig)deviceConfig
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceConfig);

  return WeakRetained;
}

@end