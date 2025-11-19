@interface MRUHardwareVolumeAssertion
- (MPVolumeControllerDataSource)volumeDataSource;
- (MRUHardwareVolumeAssertion)initWithHardwareVolumeController:(id)a3 volumeDataSource:(id)a4 reason:(id)a5;
- (MRUHardwareVolumeController)hardwareVolumeController;
- (NSString)description;
- (void)dealloc;
- (void)invalidate;
@end

@implementation MRUHardwareVolumeAssertion

- (MRUHardwareVolumeAssertion)initWithHardwareVolumeController:(id)a3 volumeDataSource:(id)a4 reason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MRUHardwareVolumeAssertion;
  v11 = [(MRUHardwareVolumeAssertion *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_hardwareVolumeController, v8);
    objc_storeWeak(&v12->_volumeDataSource, v9);
    objc_storeStrong(&v12->_reason, a5);
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_volumeDataSource);
  v6 = [v3 stringWithFormat:@"%@ dataSource: %@ | reason: %@>", v4, WeakRetained, self->_reason];

  return v6;
}

- (void)dealloc
{
  [(MRUHardwareVolumeAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = MRUHardwareVolumeAssertion;
  [(MRUHardwareVolumeAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_hardwareVolumeController);
  [WeakRetained unregisterAssertion:self];
}

- (MRUHardwareVolumeController)hardwareVolumeController
{
  WeakRetained = objc_loadWeakRetained(&self->_hardwareVolumeController);

  return WeakRetained;
}

- (MPVolumeControllerDataSource)volumeDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_volumeDataSource);

  return WeakRetained;
}

@end