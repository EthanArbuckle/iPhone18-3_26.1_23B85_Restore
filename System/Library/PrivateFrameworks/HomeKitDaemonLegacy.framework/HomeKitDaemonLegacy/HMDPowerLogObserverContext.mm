@interface HMDPowerLogObserverContext
- (HMDPowerLogObserverContext)initWithLogEventDispatcher:(id)a3 powerLogger:(id)a4;
- (HMFPowerLogger)powerLogger;
- (HMMLogEventDispatching)logEventDispatcher;
@end

@implementation HMDPowerLogObserverContext

- (HMFPowerLogger)powerLogger
{
  WeakRetained = objc_loadWeakRetained(&self->_powerLogger);

  return WeakRetained;
}

- (HMMLogEventDispatching)logEventDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_logEventDispatcher);

  return WeakRetained;
}

- (HMDPowerLogObserverContext)initWithLogEventDispatcher:(id)a3 powerLogger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = HMDPowerLogObserverContext;
  v8 = [(HMDPowerLogObserverContext *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_logEventDispatcher, v6);
    objc_storeWeak(&v9->_powerLogger, v7);
    v10 = MEMORY[0x277D17DB8];
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_286627BE0, &unk_286627BF8, &unk_286627C10, &unk_286627C28, &unk_286627C40, &unk_286627C58, &unk_286627C70, 0}];
    v12 = [v10 unsignedClosedOpenFixedIntervalMapper:v11];
    homeConfigurationEventHistogram = v9->_homeConfigurationEventHistogram;
    v9->_homeConfigurationEventHistogram = v12;

    v14 = MEMORY[0x277D17DB8];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_286627BE0, &unk_286627BF8, 0}];
    v16 = [v14 unsignedClosedOpenFixedIntervalMapper:v15];
    cameraConfigurationEventHistogram = v9->_cameraConfigurationEventHistogram;
    v9->_cameraConfigurationEventHistogram = v16;
  }

  return v9;
}

@end