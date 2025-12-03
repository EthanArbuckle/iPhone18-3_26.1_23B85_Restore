@interface CSSiriBluetoothManager
+ (id)sharedInstance;
- (id)_init;
- (id)deviceWithAddress:(id)address;
- (void)prewarmDeviceWithIdentifier:(id)identifier;
@end

@implementation CSSiriBluetoothManager

- (id)deviceWithAddress:(id)address
{
  addressCopy = address;
  v5 = addressCopy;
  if ([addressCopy length] >= 0x12)
  {
    v5 = [addressCopy substringToIndex:17];
  }

  v6 = [(CSSiriMobileBluetoothDeviceDataSource *)self->_dataSource deviceWithAddress:v5];

  return v6;
}

- (void)prewarmDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = identifierCopy;
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:identifierCopy];
    if (v5)
    {
      [(CSSiriBluetoothManager *)self deviceWithUID:v5];
    }

    else
    {
      [(CSSiriBluetoothManager *)self deviceWithAddress:v7];
    }
    v6 = ;
    [v6 prewarm];

    identifierCopy = v7;
  }
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = CSSiriBluetoothManager;
  v2 = [(CSSiriBluetoothManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CSSiriMobileBluetoothDeviceDataSource);
    dataSource = v2->_dataSource;
    v2->_dataSource = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_18196 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_18196, &__block_literal_global_18197);
  }

  v3 = sharedInstance_sSharedInstance_18198;

  return v3;
}

void __40__CSSiriBluetoothManager_sharedInstance__block_invoke()
{
  v0 = [[CSSiriBluetoothManager alloc] _init];
  v1 = sharedInstance_sSharedInstance_18198;
  sharedInstance_sSharedInstance_18198 = v0;
}

@end