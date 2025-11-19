@interface CAMExternalStorage
- (BOOL)connected;
- (BOOL)hasDiskSpaceToAllowCaptureWithConfiguration:(id)a3 allowPurging:(BOOL)a4 verbose:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (CAMExternalStorage)initWithNoDevice;
- (CAMExternalStorage)initWithStorageDevice:(id)a3;
- (CAMPurgeableStorageContainerDelegate)delegate;
- (NSString)description;
- (double)availableRecordingTimeInSecondsForGraphConfiguration:(id)a3;
- (id)generateDestinationURLWithExtension:(id)a3;
- (int64_t)totalFreeBytes;
- (void)hasDiskSpaceToAllowCaptureWithConfiguration:(id)a3 allowPurging:(BOOL)a4 completion:(id)a5;
- (void)totalFreeBytes;
@end

@implementation CAMExternalStorage

- (CAMExternalStorage)initWithStorageDevice:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CAMExternalStorage;
  v6 = [(CAMExternalStorage *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__underlyingStorageDevice, a3);
    v8 = [v5 uuid];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = v8;

    v10 = [v5 displayName];
    displayName = v7->_displayName;
    v7->_displayName = v10;

    v7->_notRecommendedForCaptureUse = [v5 isNotRecommendedForCaptureUse];
    v12 = [v5 baseURL];
    baseURL = v7->__baseURL;
    v7->__baseURL = v12;
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
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(CAMExternalStorage *)self _baseURL];
  v5 = [v4 path];
  v12 = 0;
  v6 = [v3 attributesOfFileSystemForPath:v5 error:&v12];
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
    v10 = [v9 longValue];
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "ExternalStorage");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CAMExternalStorage *)self totalFreeBytes];
    }

    v10 = -1;
  }

  return v10;
}

- (void)hasDiskSpaceToAllowCaptureWithConfiguration:(id)a3 allowPurging:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v8[2](v8, [(CAMExternalStorage *)self hasDiskSpaceToAllowCaptureWithConfiguration:a3 allowPurging:v5 verbose:0]);
}

- (BOOL)hasDiskSpaceToAllowCaptureWithConfiguration:(id)a3 allowPurging:(BOOL)a4 verbose:(BOOL)a5
{
  v6 = a3;
  v7 = [v6 mode];
  if (v7 > 8 || ((1 << v7) & 0x186) == 0)
  {
    v10 = [(CAMExternalStorage *)self totalFreeBytes]<= 104857600;
  }

  else
  {
    [(CAMExternalStorage *)self availableRecordingTimeInSecondsForGraphConfiguration:v6];
    v10 = v9 <= 2.0;
  }

  v11 = !v10;

  return v11;
}

- (double)availableRecordingTimeInSecondsForGraphConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 mode];
  v6 = 0.0;
  if (v5 <= 8 && ((1 << v5) & 0x186) != 0)
  {
    v8 = +[CAMCaptureCapabilities capabilities];
    v9 = [v8 bytesPerMinuteForGraphConfiguration:v4 outputToExternalStorage:1];

    if (v9)
    {
      v6 = [(CAMExternalStorage *)self totalFreeBytes]* 60.0 / v9;
    }
  }

  return v6;
}

- (id)generateDestinationURLWithExtension:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(CAMExternalStorage *)self _underlyingStorageDevice];
    v18[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v15 = 0;
    v7 = [v5 nextAvailableURLsWithPathExtensions:v6 error:&v15];
    v8 = v15;

    if (v8 || ![v7 count])
    {
      v9 = os_log_create("com.apple.camera", "ExternalStorage");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CAMExternalStorage *)self generateDestinationURLWithExtension:v8, v9];
      }

      v10 = 0;
    }

    else
    {
      v11 = os_log_create("com.apple.camera", "ExternalStorage");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v7 firstObject];
        v13 = [v12 path];
        *buf = 138543362;
        v17 = v13;
        _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "External storage: got destination url (%{public}@)", buf, 0xCu);
      }

      v10 = [v7 firstObject];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CAMExternalStorage *)self _underlyingStorageDevice];

    if (v5)
    {
      v6 = [(CAMExternalStorage *)self _underlyingStorageDevice];
      v7 = [(CAMExternalStorage *)v4 _underlyingStorageDevice];
      v8 = v6 == v7;
    }

    else
    {
      v8 = self == v4;
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
  v3 = [(CAMExternalStorage *)self displayName];
  v4 = [v2 stringWithFormat:@"External storage: %@", v3];

  return v4;
}

- (BOOL)connected
{
  v2 = [(CAMExternalStorage *)self _underlyingStorageDevice];
  v3 = [v2 isConnected];

  return v3;
}

- (CAMPurgeableStorageContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)totalFreeBytes
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 _baseURL];
  v6 = [v5 path];
  v7 = 138543618;
  v8 = v6;
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