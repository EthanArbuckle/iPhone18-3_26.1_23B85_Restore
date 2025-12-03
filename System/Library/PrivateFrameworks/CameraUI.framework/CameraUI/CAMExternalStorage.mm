@interface CAMExternalStorage
- (BOOL)connected;
- (BOOL)hasDiskSpaceToAllowCaptureWithConfiguration:(id)configuration allowPurging:(BOOL)purging verbose:(BOOL)verbose;
- (BOOL)isEqual:(id)equal;
- (CAMExternalStorage)initWithNoDevice;
- (CAMExternalStorage)initWithStorageDevice:(id)device;
- (CAMPurgeableStorageContainerDelegate)delegate;
- (NSString)description;
- (double)availableRecordingTimeInSecondsForGraphConfiguration:(id)configuration;
- (id)generateDestinationURLWithExtension:(id)extension;
- (int64_t)totalFreeBytes;
- (void)hasDiskSpaceToAllowCaptureWithConfiguration:(id)configuration allowPurging:(BOOL)purging completion:(id)completion;
- (void)totalFreeBytes;
@end

@implementation CAMExternalStorage

- (CAMExternalStorage)initWithStorageDevice:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = CAMExternalStorage;
  v6 = [(CAMExternalStorage *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__underlyingStorageDevice, device);
    uuid = [deviceCopy uuid];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = uuid;

    displayName = [deviceCopy displayName];
    displayName = v7->_displayName;
    v7->_displayName = displayName;

    v7->_notRecommendedForCaptureUse = [deviceCopy isNotRecommendedForCaptureUse];
    baseURL = [deviceCopy baseURL];
    baseURL = v7->__baseURL;
    v7->__baseURL = baseURL;
  }

  return v7;
}

- (CAMExternalStorage)initWithNoDevice
{
  v3.receiver = self;
  v3.super_class = CAMExternalStorage;
  return [(CAMExternalStorage *)&v3 init];
}

- (int64_t)totalFreeBytes
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _baseURL = [(CAMExternalStorage *)self _baseURL];
  path = [_baseURL path];
  v12 = 0;
  v6 = [defaultManager attributesOfFileSystemForPath:path error:&v12];
  v7 = v12;

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [v6 objectForKey:*MEMORY[0x1E696A3C0]];
    longValue = [v9 longValue];
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "ExternalStorage");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CAMExternalStorage *)self totalFreeBytes];
    }

    longValue = -1;
  }

  return longValue;
}

- (void)hasDiskSpaceToAllowCaptureWithConfiguration:(id)configuration allowPurging:(BOOL)purging completion:(id)completion
{
  purgingCopy = purging;
  completionCopy = completion;
  completionCopy[2](completionCopy, [(CAMExternalStorage *)self hasDiskSpaceToAllowCaptureWithConfiguration:configuration allowPurging:purgingCopy verbose:0]);
}

- (BOOL)hasDiskSpaceToAllowCaptureWithConfiguration:(id)configuration allowPurging:(BOOL)purging verbose:(BOOL)verbose
{
  configurationCopy = configuration;
  mode = [configurationCopy mode];
  if (mode > 8 || ((1 << mode) & 0x186) == 0)
  {
    v10 = [(CAMExternalStorage *)self totalFreeBytes]<= 104857600;
  }

  else
  {
    [(CAMExternalStorage *)self availableRecordingTimeInSecondsForGraphConfiguration:configurationCopy];
    v10 = v9 <= 2.0;
  }

  v11 = !v10;

  return v11;
}

- (double)availableRecordingTimeInSecondsForGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  mode = [configurationCopy mode];
  v6 = 0.0;
  if (mode <= 8 && ((1 << mode) & 0x186) != 0)
  {
    v8 = +[CAMCaptureCapabilities capabilities];
    v9 = [v8 bytesPerMinuteForGraphConfiguration:configurationCopy outputToExternalStorage:1];

    if (v9)
    {
      v6 = [(CAMExternalStorage *)self totalFreeBytes]* 60.0 / v9;
    }
  }

  return v6;
}

- (id)generateDestinationURLWithExtension:(id)extension
{
  v18[1] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  if (extensionCopy)
  {
    _underlyingStorageDevice = [(CAMExternalStorage *)self _underlyingStorageDevice];
    v18[0] = extensionCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v15 = 0;
    v7 = [_underlyingStorageDevice nextAvailableURLsWithPathExtensions:v6 error:&v15];
    v8 = v15;

    if (v8 || ![v7 count])
    {
      v9 = os_log_create("com.apple.camera", "ExternalStorage");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CAMExternalStorage *)self generateDestinationURLWithExtension:v8, v9];
      }

      firstObject2 = 0;
    }

    else
    {
      v11 = os_log_create("com.apple.camera", "ExternalStorage");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        firstObject = [v7 firstObject];
        path = [firstObject path];
        *buf = 138543362;
        v17 = path;
        _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "External storage: got destination url (%{public}@)", buf, 0xCu);
      }

      firstObject2 = [v7 firstObject];
    }
  }

  else
  {
    firstObject2 = 0;
  }

  return firstObject2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _underlyingStorageDevice = [(CAMExternalStorage *)self _underlyingStorageDevice];

    if (_underlyingStorageDevice)
    {
      _underlyingStorageDevice2 = [(CAMExternalStorage *)self _underlyingStorageDevice];
      _underlyingStorageDevice3 = [(CAMExternalStorage *)equalCopy _underlyingStorageDevice];
      v8 = _underlyingStorageDevice2 == _underlyingStorageDevice3;
    }

    else
    {
      v8 = self == equalCopy;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  displayName = [(CAMExternalStorage *)self displayName];
  v4 = [v2 stringWithFormat:@"External storage: %@", displayName];

  return v4;
}

- (BOOL)connected
{
  _underlyingStorageDevice = [(CAMExternalStorage *)self _underlyingStorageDevice];
  isConnected = [_underlyingStorageDevice isConnected];

  return isConnected;
}

- (CAMPurgeableStorageContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)totalFreeBytes
{
  v11 = *MEMORY[0x1E69E9840];
  _baseURL = [self _baseURL];
  path = [_baseURL path];
  v7 = 138543618;
  v8 = path;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_1A3640000, a3, OS_LOG_TYPE_ERROR, "External storage: failed to retrieve free space from %{public}@ : (%{public}@)", &v7, 0x16u);
}

- (void)generateDestinationURLWithExtension:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [a1 description];
  v7 = [a1 uniqueIdentifier];
  v8 = 138543874;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  v12 = 2114;
  v13 = a2;
  _os_log_error_impl(&dword_1A3640000, a3, OS_LOG_TYPE_ERROR, "External storage: unable to generate url for external storage device (%{public}@/%{public}@) with error (%{public}@)", &v8, 0x20u);
}

@end