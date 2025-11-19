@interface CSPowerChangeObserver
- (CSPowerChangeObserver)initWithStatusProvider:(id)a3 notificationName:(id)a4 updateBlock:(id)a5;
- (void)dealloc;
- (void)setIsConnectedToPower:(BOOL)a3;
- (void)update;
@end

@implementation CSPowerChangeObserver

- (void)update
{
  [(CSPowerChangeObserver *)self setIsConnectedToPower:[(CSPowerStatusProviding *)self->_statusProvider isConnectedToExternalChargingSource]];
  [(CSPowerChangeObserver *)self setIsConnectedToWirelessInternalCharger:[(CSPowerStatusProviding *)self->_statusProvider isConnectedToWirelessInternalCharger]];
  [(CSPowerChangeObserver *)self setIsConnectedToWirelessInternalChargingAccessory:[(CSPowerStatusProviding *)self->_statusProvider isConnectedToWirelessInternalChargingAccessory]];
  v3 = [(CSPowerStatusProviding *)self->_statusProvider isConnectedToQiPower];

  [(CSPowerChangeObserver *)self setIsConnectedToQiPower:v3];
}

- (CSPowerChangeObserver)initWithStatusProvider:(id)a3 notificationName:(id)a4 updateBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = CSPowerChangeObserver;
  v12 = [(CSPowerChangeObserver *)&v23 init];
  v13 = v12;
  if (v12)
  {
    [(CSPowerChangeObserver *)v12 setBlock:v11];
    objc_storeStrong(&v13->_statusProvider, a3);
    v13->_connectedToPower = [(CSPowerStatusProviding *)v13->_statusProvider isConnectedToExternalChargingSource];
    v13->_isConnectedToQiPower = [(CSPowerStatusProviding *)v13->_statusProvider isConnectedToQiPower];
    v13->_isConnectedToWirelessInternalCharger = [(CSPowerStatusProviding *)v13->_statusProvider isConnectedToWirelessInternalCharger];
    v13->_isConnectedToWirelessInternalChargingAccessory = [(CSPowerStatusProviding *)v13->_statusProvider isConnectedToWirelessInternalChargingAccessory];
    objc_initWeak(&location, v13);
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__CSPowerChangeObserver_initWithStatusProvider_notificationName_updateBlock___block_invoke;
    v19[3] = &unk_27838B970;
    objc_copyWeak(&v21, &location);
    v15 = v13;
    v20 = v15;
    v16 = [v14 addObserverForName:v10 object:0 queue:0 usingBlock:v19];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_notificationToken];

  v4.receiver = self;
  v4.super_class = CSPowerChangeObserver;
  [(CSPowerChangeObserver *)&v4 dealloc];
}

- (void)setIsConnectedToPower:(BOOL)a3
{
  if (self->_connectedToPower != a3)
  {
    v4 = a3;
    self->_connectedToPower = a3;
    v5 = [(CSPowerChangeObserver *)self block];
    v5[2](v5, v4);
  }
}

@end