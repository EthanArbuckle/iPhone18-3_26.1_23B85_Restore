@interface CAMStorageController
- (BOOL)_isUsingExternalStorage;
- (BOOL)_isUsingInternalStorage;
- (BOOL)hasDiskSpaceToAllowCaptureWithConfiguration:(id)configuration allowPurging:(BOOL)purging verbose:(BOOL)verbose;
- (CAMPurgeableStorageContainer)purgeableStorageContainer;
- (CAMPurgeableStorageContainerDelegate)delegate;
- (CAMStorageController)init;
- (double)availableRecordingTimeInSecondsForGraphConfiguration:(id)configuration;
- (int64_t)minimumDiskUsageThresholdInBytesForGraphConfiguration:(id)configuration;
- (int64_t)totalFreeBytes;
- (void)_setCurrentStorage:(id)storage;
- (void)_updateGraphConfigurationOnCurrentStorage;
- (void)_updateStorageDelegates;
- (void)hasDiskSpaceToAllowCaptureWithConfiguration:(id)configuration allowPurging:(BOOL)purging completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)setExternalStorage:(id)storage;
- (void)setGraphConfiguration:(id)configuration;
@end

@implementation CAMStorageController

- (CAMStorageController)init
{
  v6.receiver = self;
  v6.super_class = CAMStorageController;
  v2 = [(CAMStorageController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CAMInternalStorage);
    internalStorage = v2->__internalStorage;
    v2->__internalStorage = v3;

    objc_storeStrong(&v2->__currentStorage, v2->__internalStorage);
  }

  return v2;
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(CAMStorageController *)self _updateStorageDelegates];
}

- (void)_updateStorageDelegates
{
  _isUsingInternalStorage = [(CAMStorageController *)self _isUsingInternalStorage];
  if (_isUsingInternalStorage)
  {
    delegate = [(CAMStorageController *)self delegate];
  }

  else
  {
    delegate = 0;
  }

  _internalStorage = [(CAMStorageController *)self _internalStorage];
  [_internalStorage setDelegate:delegate];

  if (_isUsingInternalStorage)
  {
  }

  _isUsingExternalStorage = [(CAMStorageController *)self _isUsingExternalStorage];
  if (_isUsingExternalStorage)
  {
    delegate2 = [(CAMStorageController *)self delegate];
  }

  else
  {
    delegate2 = 0;
  }

  externalStorage = [(CAMStorageController *)self externalStorage];
  [externalStorage setDelegate:delegate2];

  if (_isUsingExternalStorage)
  {
  }
}

- (CAMPurgeableStorageContainer)purgeableStorageContainer
{
  _currentStorage = [(CAMStorageController *)self _currentStorage];
  _internalStorage = [(CAMStorageController *)self _internalStorage];
  if (_currentStorage == _internalStorage)
  {
    _internalStorage2 = [(CAMStorageController *)self _internalStorage];
  }

  else
  {
    _internalStorage2 = 0;
  }

  return _internalStorage2;
}

- (void)_setCurrentStorage:(id)storage
{
  storageCopy = storage;
  if (self->__currentStorage != storageCopy)
  {
    v16 = storageCopy;
    purgeableStorageContainer = [(CAMStorageController *)self purgeableStorageContainer];
    if ([purgeableStorageContainer isPurging])
    {
      isCancelingPurge = 1;
    }

    else
    {
      purgeableStorageContainer2 = [(CAMStorageController *)self purgeableStorageContainer];
      isCancelingPurge = [purgeableStorageContainer2 isCancelingPurge];
    }

    objc_storeStrong(&self->__currentStorage, storage);
    [(CAMStorageController *)self _updateStorageDelegates];
    [(CAMStorageController *)self _updateGraphConfigurationOnCurrentStorage];
    purgeableStorageContainer3 = [(CAMStorageController *)self purgeableStorageContainer];
    if ([purgeableStorageContainer3 isPurging])
    {
      isCancelingPurge2 = 1;
    }

    else
    {
      purgeableStorageContainer4 = [(CAMStorageController *)self purgeableStorageContainer];
      isCancelingPurge2 = [purgeableStorageContainer4 isCancelingPurge];
    }

    if (isCancelingPurge != isCancelingPurge2)
    {
      delegate = [(CAMStorageController *)self delegate];
      purgeableStorageContainer5 = [(CAMStorageController *)self purgeableStorageContainer];
      [delegate storageControllerDidChangePurgingState:purgeableStorageContainer5];
    }

    delegate2 = [(CAMStorageController *)self delegate];
    _currentStorage = [(CAMStorageController *)self _currentStorage];
    [delegate2 availableDiskSpaceChanged:_currentStorage];

    storageCopy = v16;
  }
}

- (BOOL)_isUsingInternalStorage
{
  selfCopy = self;
  _currentStorage = [(CAMStorageController *)self _currentStorage];
  _internalStorage = [(CAMStorageController *)selfCopy _internalStorage];
  LOBYTE(selfCopy) = _currentStorage == _internalStorage;

  return selfCopy;
}

- (BOOL)_isUsingExternalStorage
{
  selfCopy = self;
  _currentStorage = [(CAMStorageController *)self _currentStorage];
  externalStorage = [(CAMStorageController *)selfCopy externalStorage];
  LOBYTE(selfCopy) = _currentStorage == externalStorage;

  return selfCopy;
}

- (void)setExternalStorage:(id)storage
{
  storageCopy = storage;
  externalStorage = self->_externalStorage;
  if (externalStorage != storageCopy)
  {
    v8 = storageCopy;
    externalStorage = [externalStorage isEqual:storageCopy];
    storageCopy = v8;
    if ((externalStorage & 1) == 0)
    {
      [(CAMExternalStorage *)self->_externalStorage setDelegate:0];
      objc_storeStrong(&self->_externalStorage, storage);
      if (v8)
      {
        externalStorage = [(CAMStorageController *)self _setCurrentStorage:v8];
      }

      else
      {
        _internalStorage = [(CAMStorageController *)self _internalStorage];
        [(CAMStorageController *)self _setCurrentStorage:_internalStorage];
      }

      storageCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](externalStorage, storageCopy);
}

- (void)setGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  p_graphConfiguration = &self->_graphConfiguration;
  if (self->_graphConfiguration != configurationCopy)
  {
    v7 = configurationCopy;
    objc_storeStrong(p_graphConfiguration, configuration);
    p_graphConfiguration = [(CAMStorageController *)self _updateGraphConfigurationOnCurrentStorage];
    configurationCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_graphConfiguration, configurationCopy);
}

- (void)_updateGraphConfigurationOnCurrentStorage
{
  graphConfiguration = [(CAMStorageController *)self graphConfiguration];
  _currentStorage = [(CAMStorageController *)self _currentStorage];
  [_currentStorage setGraphConfiguration:graphConfiguration];
}

- (int64_t)totalFreeBytes
{
  _currentStorage = [(CAMStorageController *)self _currentStorage];
  totalFreeBytes = [_currentStorage totalFreeBytes];

  return totalFreeBytes;
}

- (void)hasDiskSpaceToAllowCaptureWithConfiguration:(id)configuration allowPurging:(BOOL)purging completion:(id)completion
{
  purgingCopy = purging;
  completionCopy = completion;
  configurationCopy = configuration;
  _currentStorage = [(CAMStorageController *)self _currentStorage];
  [_currentStorage hasDiskSpaceToAllowCaptureWithConfiguration:configurationCopy allowPurging:purgingCopy completion:completionCopy];
}

- (BOOL)hasDiskSpaceToAllowCaptureWithConfiguration:(id)configuration allowPurging:(BOOL)purging verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  purgingCopy = purging;
  configurationCopy = configuration;
  _currentStorage = [(CAMStorageController *)self _currentStorage];
  LOBYTE(verboseCopy) = [_currentStorage hasDiskSpaceToAllowCaptureWithConfiguration:configurationCopy allowPurging:purgingCopy verbose:verboseCopy];

  return verboseCopy;
}

- (double)availableRecordingTimeInSecondsForGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _currentStorage = [(CAMStorageController *)self _currentStorage];
  [_currentStorage availableRecordingTimeInSecondsForGraphConfiguration:configurationCopy];
  v7 = v6;

  return v7;
}

- (int64_t)minimumDiskUsageThresholdInBytesForGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _currentStorage = [(CAMStorageController *)self _currentStorage];
  v6 = [_currentStorage minimumDiskUsageThresholdInBytesForGraphConfiguration:configurationCopy];

  return v6;
}

- (CAMPurgeableStorageContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end