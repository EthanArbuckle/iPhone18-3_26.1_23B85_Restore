@interface CAMStorageController
- (BOOL)_isUsingExternalStorage;
- (BOOL)_isUsingInternalStorage;
- (BOOL)hasDiskSpaceToAllowCaptureWithConfiguration:(id)a3 allowPurging:(BOOL)a4 verbose:(BOOL)a5;
- (CAMPurgeableStorageContainer)purgeableStorageContainer;
- (CAMPurgeableStorageContainerDelegate)delegate;
- (CAMStorageController)init;
- (double)availableRecordingTimeInSecondsForGraphConfiguration:(id)a3;
- (int64_t)minimumDiskUsageThresholdInBytesForGraphConfiguration:(id)a3;
- (int64_t)totalFreeBytes;
- (void)_setCurrentStorage:(id)a3;
- (void)_updateGraphConfigurationOnCurrentStorage;
- (void)_updateStorageDelegates;
- (void)hasDiskSpaceToAllowCaptureWithConfiguration:(id)a3 allowPurging:(BOOL)a4 completion:(id)a5;
- (void)setDelegate:(id)a3;
- (void)setExternalStorage:(id)a3;
- (void)setGraphConfiguration:(id)a3;
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

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  [(CAMStorageController *)self _updateStorageDelegates];
}

- (void)_updateStorageDelegates
{
  v3 = [(CAMStorageController *)self _isUsingInternalStorage];
  if (v3)
  {
    v4 = [(CAMStorageController *)self delegate];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CAMStorageController *)self _internalStorage];
  [v5 setDelegate:v4];

  if (v3)
  {
  }

  v6 = [(CAMStorageController *)self _isUsingExternalStorage];
  if (v6)
  {
    v8 = [(CAMStorageController *)self delegate];
  }

  else
  {
    v8 = 0;
  }

  v7 = [(CAMStorageController *)self externalStorage];
  [v7 setDelegate:v8];

  if (v6)
  {
  }
}

- (CAMPurgeableStorageContainer)purgeableStorageContainer
{
  v3 = [(CAMStorageController *)self _currentStorage];
  v4 = [(CAMStorageController *)self _internalStorage];
  if (v3 == v4)
  {
    v5 = [(CAMStorageController *)self _internalStorage];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setCurrentStorage:(id)a3
{
  v5 = a3;
  if (self->__currentStorage != v5)
  {
    v16 = v5;
    v6 = [(CAMStorageController *)self purgeableStorageContainer];
    if ([v6 isPurging])
    {
      v7 = 1;
    }

    else
    {
      v8 = [(CAMStorageController *)self purgeableStorageContainer];
      v7 = [v8 isCancelingPurge];
    }

    objc_storeStrong(&self->__currentStorage, a3);
    [(CAMStorageController *)self _updateStorageDelegates];
    [(CAMStorageController *)self _updateGraphConfigurationOnCurrentStorage];
    v9 = [(CAMStorageController *)self purgeableStorageContainer];
    if ([v9 isPurging])
    {
      v10 = 1;
    }

    else
    {
      v11 = [(CAMStorageController *)self purgeableStorageContainer];
      v10 = [v11 isCancelingPurge];
    }

    if (v7 != v10)
    {
      v12 = [(CAMStorageController *)self delegate];
      v13 = [(CAMStorageController *)self purgeableStorageContainer];
      [v12 storageControllerDidChangePurgingState:v13];
    }

    v14 = [(CAMStorageController *)self delegate];
    v15 = [(CAMStorageController *)self _currentStorage];
    [v14 availableDiskSpaceChanged:v15];

    v5 = v16;
  }
}

- (BOOL)_isUsingInternalStorage
{
  v2 = self;
  v3 = [(CAMStorageController *)self _currentStorage];
  v4 = [(CAMStorageController *)v2 _internalStorage];
  LOBYTE(v2) = v3 == v4;

  return v2;
}

- (BOOL)_isUsingExternalStorage
{
  v2 = self;
  v3 = [(CAMStorageController *)self _currentStorage];
  v4 = [(CAMStorageController *)v2 externalStorage];
  LOBYTE(v2) = v3 == v4;

  return v2;
}

- (void)setExternalStorage:(id)a3
{
  v5 = a3;
  externalStorage = self->_externalStorage;
  if (externalStorage != v5)
  {
    v8 = v5;
    externalStorage = [externalStorage isEqual:v5];
    v5 = v8;
    if ((externalStorage & 1) == 0)
    {
      [(CAMExternalStorage *)self->_externalStorage setDelegate:0];
      objc_storeStrong(&self->_externalStorage, a3);
      if (v8)
      {
        externalStorage = [(CAMStorageController *)self _setCurrentStorage:v8];
      }

      else
      {
        v7 = [(CAMStorageController *)self _internalStorage];
        [(CAMStorageController *)self _setCurrentStorage:v7];
      }

      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](externalStorage, v5);
}

- (void)setGraphConfiguration:(id)a3
{
  v5 = a3;
  p_graphConfiguration = &self->_graphConfiguration;
  if (self->_graphConfiguration != v5)
  {
    v7 = v5;
    objc_storeStrong(p_graphConfiguration, a3);
    p_graphConfiguration = [(CAMStorageController *)self _updateGraphConfigurationOnCurrentStorage];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_graphConfiguration, v5);
}

- (void)_updateGraphConfigurationOnCurrentStorage
{
  v4 = [(CAMStorageController *)self graphConfiguration];
  v3 = [(CAMStorageController *)self _currentStorage];
  [v3 setGraphConfiguration:v4];
}

- (int64_t)totalFreeBytes
{
  v2 = [(CAMStorageController *)self _currentStorage];
  v3 = [v2 totalFreeBytes];

  return v3;
}

- (void)hasDiskSpaceToAllowCaptureWithConfiguration:(id)a3 allowPurging:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(CAMStorageController *)self _currentStorage];
  [v10 hasDiskSpaceToAllowCaptureWithConfiguration:v9 allowPurging:v5 completion:v8];
}

- (BOOL)hasDiskSpaceToAllowCaptureWithConfiguration:(id)a3 allowPurging:(BOOL)a4 verbose:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(CAMStorageController *)self _currentStorage];
  LOBYTE(v5) = [v9 hasDiskSpaceToAllowCaptureWithConfiguration:v8 allowPurging:v6 verbose:v5];

  return v5;
}

- (double)availableRecordingTimeInSecondsForGraphConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CAMStorageController *)self _currentStorage];
  [v5 availableRecordingTimeInSecondsForGraphConfiguration:v4];
  v7 = v6;

  return v7;
}

- (int64_t)minimumDiskUsageThresholdInBytesForGraphConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CAMStorageController *)self _currentStorage];
  v6 = [v5 minimumDiskUsageThresholdInBytesForGraphConfiguration:v4];

  return v6;
}

- (CAMPurgeableStorageContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end