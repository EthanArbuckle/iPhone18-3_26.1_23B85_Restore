@interface LCSSessionPath
+ (id)finalizedSessionPathsWithType:(unint64_t)a3;
+ (id)temporarySessionPathWithType:(unint64_t)a3;
- (BOOL)_lock_purgeContentsIncludingDirectory:(BOOL)a3;
- (LCSSessionPath)initWithBSXPCCoder:(id)a3;
- (LCSSessionPath)initWithCoder:(id)a3;
- (id)_initWithURL:(id)a3 type:(unint64_t)a4 isTemporaryPath:(BOOL)a5;
- (id)finalizeTemporarySessionPathForExtension:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
@end

@implementation LCSSessionPath

+ (id)temporarySessionPathWithType:(unint64_t)a3
{
  v4 = @"com.apple.GenericSession";
  if (a3 == 1)
  {
    v4 = @"com.apple.SecureCapture";
  }

  v5 = v4;
  v6 = [[LCSSessionURLBuilder alloc] initWithTypeIdentifier:v5];

  v7 = [(LCSSessionURLBuilder *)v6 temporarySessionURL];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    v9 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v14];
    v10 = v14;

    if (v9)
    {
      v11 = [[LCSSessionPath alloc] _initWithURL:v7 type:a3 isTemporaryPath:1];
      goto LABEL_12;
    }

    v12 = LCSLogSessionContents();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(LCSSessionPath *)v7 temporarySessionPathWithType:v12];
    }
  }

  else
  {
    v10 = LCSLogSessionContents();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [LCSSessionPath temporarySessionPathWithType:v10];
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

+ (id)finalizedSessionPathsWithType:(unint64_t)a3
{
  v4 = @"com.apple.GenericSession";
  if (a3 == 1)
  {
    v4 = @"com.apple.SecureCapture";
  }

  v5 = v4;
  v6 = [[LCSSessionURLBuilder alloc] initWithTypeIdentifier:v5];

  v7 = [(LCSSessionURLBuilder *)v6 finalizedSessionURLsForCurrentApplication];
  if ([v7 count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__LCSSessionPath_finalizedSessionPathsWithType___block_invoke;
    v10[3] = &__block_descriptor_40_e15__16__0__NSURL_8l;
    v10[4] = a3;
    v8 = [v7 bs_map:v10];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

id __48__LCSSessionPath_finalizedSessionPathsWithType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[LCSSessionPath alloc] _initWithURL:v3 type:*(a1 + 32) isTemporaryPath:0];

  return v4;
}

- (id)_initWithURL:(id)a3 type:(unint64_t)a4 isTemporaryPath:(BOOL)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = LCSSessionPath;
  v9 = [(LCSSessionPath *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_type = a4;
    v9->_isTemporaryPath = a5;
    v11 = [v8 copy];
    url = v10->_url;
    v10->_url = v11;
  }

  return v10;
}

- (id)finalizeTemporarySessionPathForExtension:(id)a3
{
  v4 = a3;
  v5 = [(LCSSessionPath *)self url];
  v6 = [LCSSessionFinalizer finalizeTemporarySessionAtURL:v5 forBundleProvider:v4];

  if (v6)
  {
    v7 = [[LCSSessionPath alloc] _initWithURL:v6 type:self->_type isTemporaryPath:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  p_lock_isInvalidating = &self->_lock_isInvalidating;
  if (!self->_lock_isInvalidating)
  {
    isTemporaryPath = self->_isTemporaryPath;
    p_lock_invalidated = &self->_lock_isInvalidating;
    if (!isTemporaryPath)
    {
      p_lock_invalidated = &self->_lock_invalidated;
      if (self->_lock_invalidated)
      {
        goto LABEL_8;
      }

      *p_lock_isInvalidating = 1;
    }

    *p_lock_invalidated = 1;
    if (![(LCSSessionPath *)self _lock_purgeContentsIncludingDirectory:!isTemporaryPath])
    {
      self->_lock_invalidated = 0;
    }

    *p_lock_isInvalidating = 0;
  }

LABEL_8:

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_lock_purgeContentsIncludingDirectory:(BOOL)a3
{
  v3 = a3;
  v46 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  if (v3)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    url = self->_url;
    v42 = 0;
    v7 = [v5 removeItemAtURL:url error:&v42];
    v8 = v42;

    if (v7)
    {
LABEL_3:
      v9 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__0;
    v40 = __Block_byref_object_dispose__0;
    v41 = [MEMORY[0x277CBEB38] dictionary];
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = self->_url;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __56__LCSSessionPath__lock_purgeContentsIncludingDirectory___block_invoke;
    v35[3] = &unk_279824FF8;
    v35[4] = &v36;
    v12 = [v10 enumeratorAtURL:v11 includingPropertiesForKeys:0 options:3 errorHandler:v35];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v12;
    v8 = 0;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v14)
    {
      v15 = *v32;
      while (2)
      {
        v16 = 0;
        v17 = v8;
        do
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v31 + 1) + 8 * v16);
          v19 = [MEMORY[0x277CCAA00] defaultManager];
          v30 = v17;
          v20 = [v19 removeItemAtURL:v18 error:&v30];
          v8 = v30;

          if ((v20 & 1) == 0)
          {
            LOBYTE(v14) = 0;
            goto LABEL_14;
          }

          ++v16;
          v17 = v8;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v31 objects:v45 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      LOBYTE(v14) = 1;
    }

LABEL_14:

    if ([v37[5] count])
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to purge one or more contents of %@", self->_url];
      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA578];
      v43[0] = *MEMORY[0x277CCA450];
      v43[1] = v22;
      v44[0] = v14;
      v23 = [v37[5] allValues];
      v24 = [v23 copy];
      v44[1] = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
      v26 = [v21 errorWithDomain:@"com.apple.LCSSessionPath" code:-1 userInfo:v25];

      LOBYTE(v14) = 0;
      v8 = v26;
    }

    _Block_object_dispose(&v36, 8);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v27 = LCSLogSessionContents();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [(LCSSessionPath *)self _lock_purgeContentsIncludingDirectory:v8, v27];
  }

  v9 = 0;
LABEL_20:

  v28 = *MEMORY[0x277D85DE8];
  return v9;
}

- (LCSSessionPath)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    v8 = [v4 decodeBoolForKey:@"isTemporaryPath"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v10 = v9;
    if (!v9 || (v11 = [v9 integerValue], v11 > 1))
    {
      v11 = 0;
    }

    v7 = [(LCSSessionPath *)self _initWithURL:v6 type:v11 isTemporaryPath:v8];
  }

  else
  {
    v6 = [(LCSSessionPath *)self _initWithURL:0 type:0 isTemporaryPath:1];
    [v6 invalidate];
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v5 = a3;
  [v5 encodeObject:url forKey:@"url"];
  [v5 encodeBool:self->_isTemporaryPath forKey:@"isTemporaryPath"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_type];
  [v5 encodeObject:v6 forKey:@"type"];
}

- (LCSSessionPath)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    v8 = [v4 decodeBoolForKey:@"isTemporaryPath"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v10 = v9;
    if (!v9 || (v11 = [v9 integerValue], v11 > 1))
    {
      v11 = 0;
    }

    v7 = [(LCSSessionPath *)self _initWithURL:v6 type:v11 isTemporaryPath:v8];
  }

  else
  {
    v6 = [(LCSSessionPath *)self _initWithURL:0 type:0 isTemporaryPath:1];
    [v6 invalidate];
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  url = self->_url;
  v5 = a3;
  [v5 encodeObject:url forKey:@"url"];
  [v5 encodeBool:self->_isTemporaryPath forKey:@"isTemporaryPath"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_type];
  [v5 encodeObject:v6 forKey:@"type"];
}

+ (void)temporarySessionPathWithType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_256175000, a2, OS_LOG_TYPE_ERROR, "Unable to create directory for session path: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_lock_purgeContentsIncludingDirectory:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_256175000, log, OS_LOG_TYPE_ERROR, "Unable to purge contents of path %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end