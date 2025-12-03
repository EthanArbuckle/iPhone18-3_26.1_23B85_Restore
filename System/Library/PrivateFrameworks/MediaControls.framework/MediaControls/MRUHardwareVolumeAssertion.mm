@interface MRUHardwareVolumeAssertion
- (MPVolumeControllerDataSource)volumeDataSource;
- (MRUHardwareVolumeAssertion)initWithHardwareVolumeController:(id)controller volumeDataSource:(id)source reason:(id)reason;
- (MRUHardwareVolumeController)hardwareVolumeController;
- (NSString)description;
- (void)dealloc;
- (void)invalidate;
@end

@implementation MRUHardwareVolumeAssertion

- (MRUHardwareVolumeAssertion)initWithHardwareVolumeController:(id)controller volumeDataSource:(id)source reason:(id)reason
{
  controllerCopy = controller;
  sourceCopy = source;
  reasonCopy = reason;
  v14.receiver = self;
  v14.super_class = MRUHardwareVolumeAssertion;
  v11 = [(MRUHardwareVolumeAssertion *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_hardwareVolumeController, controllerCopy);
    objc_storeWeak(&v12->_volumeDataSource, sourceCopy);
    objc_storeStrong(&v12->_reason, reason);
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