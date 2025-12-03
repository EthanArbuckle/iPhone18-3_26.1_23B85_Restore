@interface CSPowerChangeObserver
- (CSPowerChangeObserver)initWithStatusProvider:(id)provider notificationName:(id)name updateBlock:(id)block;
- (void)dealloc;
- (void)setIsConnectedToPower:(BOOL)power;
- (void)update;
@end

@implementation CSPowerChangeObserver

- (void)update
{
  [(CSPowerChangeObserver *)self setIsConnectedToPower:[(CSPowerStatusProviding *)self->_statusProvider isConnectedToExternalChargingSource]];
  [(CSPowerChangeObserver *)self setIsConnectedToWirelessInternalCharger:[(CSPowerStatusProviding *)self->_statusProvider isConnectedToWirelessInternalCharger]];
  [(CSPowerChangeObserver *)self setIsConnectedToWirelessInternalChargingAccessory:[(CSPowerStatusProviding *)self->_statusProvider isConnectedToWirelessInternalChargingAccessory]];
  isConnectedToQiPower = [(CSPowerStatusProviding *)self->_statusProvider isConnectedToQiPower];

  [(CSPowerChangeObserver *)self setIsConnectedToQiPower:isConnectedToQiPower];
}

- (CSPowerChangeObserver)initWithStatusProvider:(id)provider notificationName:(id)name updateBlock:(id)block
{
  providerCopy = provider;
  nameCopy = name;
  blockCopy = block;
  v23.receiver = self;
  v23.super_class = CSPowerChangeObserver;
  v12 = [(CSPowerChangeObserver *)&v23 init];
  v13 = v12;
  if (v12)
  {
    [(CSPowerChangeObserver *)v12 setBlock:blockCopy];
    objc_storeStrong(&v13->_statusProvider, provider);
    v13->_connectedToPower = [(CSPowerStatusProviding *)v13->_statusProvider isConnectedToExternalChargingSource];
    v13->_isConnectedToQiPower = [(CSPowerStatusProviding *)v13->_statusProvider isConnectedToQiPower];
    v13->_isConnectedToWirelessInternalCharger = [(CSPowerStatusProviding *)v13->_statusProvider isConnectedToWirelessInternalCharger];
    v13->_isConnectedToWirelessInternalChargingAccessory = [(CSPowerStatusProviding *)v13->_statusProvider isConnectedToWirelessInternalChargingAccessory];
    objc_initWeak(&location, v13);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__CSPowerChangeObserver_initWithStatusProvider_notificationName_updateBlock___block_invoke;
    v19[3] = &unk_27838B970;
    objc_copyWeak(&v21, &location);
    v15 = v13;
    v20 = v15;
    v16 = [defaultCenter addObserverForName:nameCopy object:0 queue:0 usingBlock:v19];
    notificationToken = v15->_notificationToken;
    v15->_notificationToken = v16;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __77__CSPowerChangeObserver_initWithStatusProvider_notificationName_updateBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsConnectedToPower:{objc_msgSend(WeakRetained[2], "isConnectedToExternalChargingSource")}];
  [WeakRetained setIsConnectedToQiPower:{objc_msgSend(*(*(a1 + 32) + 16), "isConnectedToQiPower")}];
  [WeakRetained setIsConnectedToWirelessInternalCharger:{objc_msgSend(*(*(a1 + 32) + 16), "isConnectedToWirelessInternalCharger")}];
  [WeakRetained setIsConnectedToWirelessInternalChargingAccessory:{objc_msgSend(*(*(a1 + 32) + 16), "isConnectedToWirelessInternalChargingAccessory")}];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_notificationToken];

  v4.receiver = self;
  v4.super_class = CSPowerChangeObserver;
  [(CSPowerChangeObserver *)&v4 dealloc];
}

- (void)setIsConnectedToPower:(BOOL)power
{
  if (self->_connectedToPower != power)
  {
    powerCopy = power;
    self->_connectedToPower = power;
    block = [(CSPowerChangeObserver *)self block];
    block[2](block, powerCopy);
  }
}

@end