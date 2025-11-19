@interface PBUIURLBackedSnapshotSource
+ (id)buildCacheIdentifierForURL:(id)a3;
- (BOOL)_lock_loadColorStatisticsWithError:(id *)a3;
- (BOOL)_lock_loadInterfaceOrientation:(id)a3;
- (BOOL)_lock_loadSnapshotImageWithError:(id *)a3;
- (BOOL)_lock_loadSnapshotMetadataWithError:(id *)a3;
- (BOOL)_lock_removeOnDiskSnapshotWithError:(id *)a3;
- (BOOL)_lock_storeColorStatistics:(id)a3 error:(id *)a4;
- (BOOL)_lock_storeSnapshot:(id)a3 error:(id *)a4;
- (BOOL)_lock_storeSnapshotFromURL:(id)a3 error:(id *)a4;
- (BOOL)_lock_storeSnapshotMetadata:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (BOOL)updatePosterPreferredProminentColor:(id)a3 error:(id *)a4;
- (NSDictionary)snapshotMetadata;
- (NSString)cacheIdentifier;
- (PBUIURLBackedSnapshotSource)initWithPathProvider:(id)a3 format:(id)a4;
- (PBUIURLSourceDelegate)delegate;
- (PUIColorStatistics)contentColorStatistics;
- (UIColor)derivedProminentPosterColor;
- (UIColor)posterPreferredProminentColor;
- (UIImage)snapshot;
- (id)_lock_encoderForSnapshot;
- (id)_lock_snapshotMetadata;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)clearDerivedProminentColor;
- (void)currentSnapshotInterfaceOrientation:(int64_t *)a3 outDeviceOrientation:(int64_t *)a4;
- (void)invalidateCurrentSnapshot;
- (void)updateFromPathProvider:(id)a3;
- (void)updateWithImage:(id)a3 orImageAtURL:(id)a4 contentColorStatistics:(id)a5 metadata:(id)a6 error:(id *)a7;
@end

@implementation PBUIURLBackedSnapshotSource

- (PUIColorStatistics)contentColorStatistics
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_contentColorStatistics;
  if (!v3 && [(PBUIURLBackedSnapshotSource *)self _lock_loadColorStatisticsWithError:0])
  {
    v3 = self->_lock_contentColorStatistics;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (PBUIURLBackedSnapshotSource)initWithPathProvider:(id)a3 format:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PBUIURLBackedSnapshotSource;
  v8 = [(PBUIURLBackedSnapshotSource *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_format, a4);
    v10 = [[PBUIReplicaSourceObserverBox alloc] initWithIdentifier:@"SnapshotSource"];
    observers = v9->_observers;
    v9->_observers = v10;

    [(PBUIURLBackedSnapshotSource *)v9 updateFromPathProvider:v6];
  }

  return v9;
}

- (void)updateFromPathProvider:(id)a3
{
  v4 = a3;
  v38[1] = MEMORY[0x277D85DD0];
  v38[2] = 3221225472;
  v38[3] = __54__PBUIURLBackedSnapshotSource_updateFromPathProvider___block_invoke;
  v38[4] = &unk_278361E18;
  v38[5] = self;
  BSDispatchMain();
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 snapshotURL];
  v6 = BSEqualObjects();

  if ((v6 & 1) == 0)
  {
    v7 = [v4 snapshotURL];
    lock_snapshotURL = self->_lock_snapshotURL;
    self->_lock_snapshotURL = v7;

    lock_imageEncoder = self->_lock_imageEncoder;
    self->_lock_imageEncoder = 0;

    lock_snapshot = self->_lock_snapshot;
    self->_lock_snapshot = 0;
  }

  v11 = [v4 snapshotColorStatisticsURL];
  v12 = BSEqualObjects();

  if ((v12 & 1) == 0)
  {
    v13 = [v4 snapshotColorStatisticsURL];
    lock_snapshotColorStatisticsURL = self->_lock_snapshotColorStatisticsURL;
    self->_lock_snapshotColorStatisticsURL = v13;

    lock_contentColorStatistics = self->_lock_contentColorStatistics;
    self->_lock_contentColorStatistics = 0;
  }

  v16 = [v4 snapshotMetadataURL];
  v17 = BSEqualObjects();

  if ((v17 & 1) == 0)
  {
    v18 = [v4 snapshotMetadataURL];
    lock_snapshotMetadataURL = self->_lock_snapshotMetadataURL;
    self->_lock_snapshotMetadataURL = v18;

    lock_snapshotMetadata = self->_lock_snapshotMetadata;
    self->_lock_snapshotMetadata = 0;
  }

  if (v6 && self->_lock_snapshot)
  {
    v21 = 0;
  }

  else
  {
    v38[0] = 0;
    v22 = [(PBUIURLBackedSnapshotSource *)self _lock_loadSnapshotImageWithError:v38];
    v21 = v38[0];
    if (!v22)
    {
      v23 = PBUILogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [PBUIURLBackedSnapshotSource updateFromPathProvider:];
      }
    }
  }

  v24 = [objc_opt_class() buildCacheIdentifierForURL:self->_lock_snapshotURL];
  if ((BSEqualStrings() & 1) == 0)
  {
    objc_storeStrong(&self->_lock_cacheIdentifier, v24);
    v25 = 1;
    goto LABEL_20;
  }

  v25 = v17 ^ 1;
  if (!v12 || !self->_lock_contentColorStatistics)
  {
LABEL_20:
    v37 = 0;
    v27 = [(PBUIURLBackedSnapshotSource *)self _lock_loadColorStatisticsWithError:&v37];
    v26 = v37;
    if (v27)
    {
      if (v25)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v28 = PBUILogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [PBUIURLBackedSnapshotSource updateFromPathProvider:];
      }

      if (v25)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    if (self->_lock_snapshotMetadata)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v26 = 0;
  if (((v17 ^ 1) & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_27:
  v36 = 0;
  [(PBUIURLBackedSnapshotSource *)self _lock_loadSnapshotMetadataWithError:&v36];
  v29 = v36;
  if (v29)
  {
    v30 = PBUILogCommon();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [PBUIURLBackedSnapshotSource updateFromPathProvider:];
    }
  }

LABEL_32:
  os_unfair_lock_unlock(&self->_lock);
  v34 = v21;
  v35 = v4;
  v31 = v26;
  v32 = v4;
  v33 = v21;
  BSDispatchMain();
}

void __54__PBUIURLBackedSnapshotSource_updateFromPathProvider___block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) didChangeValueForKey:@"valid"];
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) delegate];
    v3 = *(a1 + 32);
    v4 = [*(a1 + 48) snapshotURL];
    [v2 snapshotSource:v3 failedToReadSnapshotAtURL:v4 error:*(a1 + 40)];
  }

  if (*(a1 + 56))
  {
    v5 = [*(a1 + 32) delegate];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 48) snapshotColorStatisticsURL];
    [v5 snapshotSource:v6 failedToReadColorStatisticsAtURL:v7 error:*(a1 + 56)];
  }

  if (*(a1 + 64) == 1)
  {
    if (!*(a1 + 40))
    {
      v8 = [*(a1 + 32) delegate];
      [v8 snapshotSourceReceivedNewSnapshot:*(a1 + 32)];
    }

    v9 = *(*(a1 + 32) + 32);

    [v9 setNeedsSourceUpdate];
  }
}

- (void)invalidateCurrentSnapshot
{
  v13[1] = MEMORY[0x277D85DD0];
  v13[2] = 3221225472;
  v13[3] = __56__PBUIURLBackedSnapshotSource_invalidateCurrentSnapshot__block_invoke;
  v13[4] = &unk_278361E18;
  v13[5] = self;
  BSDispatchMain();
  os_unfair_lock_lock(&self->_lock);
  lock_snapshot = self->_lock_snapshot;
  self->_lock_snapshot = 0;

  self->_lock_interfaceOrientation = 0;
  self->_lock_deviceOrientation = 0;
  v13[0] = 0;
  v4 = [(PBUIURLBackedSnapshotSource *)self _lock_removeOnDiskSnapshotWithError:v13];
  v5 = v13[0];
  v6 = v5;
  if (!v4)
  {
    v7 = [v5 domain];
    if ([v7 isEqual:*MEMORY[0x277CCA050]])
    {
      v8 = [v6 code];

      if (v8 == 4)
      {
        v9 = PBUILogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_INFO, "No on-disk snapshot to delete; skipping invalidate", buf, 2u);
        }

LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
    }

    v9 = PBUILogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PBUIURLBackedSnapshotSource invalidateCurrentSnapshot];
    }

    goto LABEL_9;
  }

LABEL_10:
  v10 = [objc_opt_class() buildCacheIdentifierForURL:self->_lock_snapshotURL];
  lock_cacheIdentifier = self->_lock_cacheIdentifier;
  self->_lock_cacheIdentifier = v10;

  os_unfair_lock_unlock(&self->_lock);
  BSDispatchMain();
}

uint64_t __56__PBUIURLBackedSnapshotSource_invalidateCurrentSnapshot__block_invoke_12(uint64_t a1)
{
  [*(a1 + 32) didChangeValueForKey:@"valid"];
  v2 = [*(a1 + 32) delegate];
  [v2 snapshotSourceReceivedNewSnapshot:*(a1 + 32)];

  v3 = *(*(a1 + 32) + 32);

  return [v3 setNeedsSourceUpdate];
}

- (NSString)cacheIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  lock_cacheIdentifier = self->_lock_cacheIdentifier;
  if (!lock_cacheIdentifier)
  {
    v4 = [objc_opt_class() buildCacheIdentifierForURL:self->_lock_snapshotURL];
    v5 = self->_lock_cacheIdentifier;
    self->_lock_cacheIdentifier = v4;

    lock_cacheIdentifier = self->_lock_cacheIdentifier;
  }

  v6 = lock_cacheIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (BOOL)isValid
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_snapshot != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSDictionary)snapshotMetadata
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(PBUIURLBackedSnapshotSource *)self _lock_snapshotMetadata];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_lock_snapshotMetadata
{
  v3 = self->_lock_snapshotMetadata;
  if (!v3)
  {
    v4 = [(PBUIURLBackedSnapshotSource *)self _lock_loadSnapshotMetadataWithError:0];
    v3 = 0;
    if (v4)
    {
      v3 = self->_lock_snapshotMetadata;
    }
  }

  return v3;
}

- (void)clearDerivedProminentColor
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(PBUIURLBackedSnapshotSource *)self _lock_snapshotMetadata];
  v4 = [v3 objectForKey:@"kDerivedProminentPosterColorMetadataKey"];

  if (v4)
  {
    v5 = [v3 mutableCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_opt_new();
    }

    v8 = v7;

    [v8 removeObjectForKey:@"kDerivedProminentPosterColorMetadataKey"];
    v14 = 0;
    [(PBUIURLBackedSnapshotSource *)self _lock_storeSnapshotMetadata:v8 error:&v14];
    v9 = v14;
    v10 = PBUILogCommon();
    lock_derivedProminentPosterColor = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PBUIURLBackedSnapshotSource clearDerivedProminentColor];
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_21E67D000, &lock_derivedProminentPosterColor->super, OS_LOG_TYPE_INFO, "clearDerivedProminentColor ran successfully.", v13, 2u);
      }

      lock_derivedProminentPosterColor = self->_lock_derivedProminentPosterColor;
      self->_lock_derivedProminentPosterColor = 0;
    }
  }

  v12 = self->_lock_derivedProminentPosterColor;
  self->_lock_derivedProminentPosterColor = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (UIColor)derivedProminentPosterColor
{
  os_unfair_lock_lock(&self->_lock);
  lock_derivedProminentPosterColor = self->_lock_derivedProminentPosterColor;
  if (lock_derivedProminentPosterColor)
  {
    v4 = lock_derivedProminentPosterColor;
  }

  else
  {
    v5 = [(PBUIURLBackedSnapshotSource *)self _lock_snapshotMetadata];
    v6 = [v5 objectForKey:@"kDerivedProminentPosterColorMetadataKey"];

    if ([v6 length])
    {
      v7 = MEMORY[0x277CCAAC8];
      v8 = objc_opt_self();
      v9 = [v7 unarchivedObjectOfClass:v8 fromData:v6 error:0];

      v4 = [v9 UIColor];
      objc_storeStrong(&self->_lock_derivedProminentPosterColor, v4);
    }

    else
    {
      v4 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (UIColor)posterPreferredProminentColor
{
  os_unfair_lock_lock(&self->_lock);
  lock_posterPreferredProminentColor = self->_lock_posterPreferredProminentColor;
  if (lock_posterPreferredProminentColor)
  {
    v4 = lock_posterPreferredProminentColor;
  }

  else
  {
    v5 = [(PBUIURLBackedSnapshotSource *)self _lock_snapshotMetadata];
    v6 = [v5 objectForKey:@"kPosterPreferredProminentPosterColorMetadataKey"];

    if ([v6 length])
    {
      v7 = MEMORY[0x277CCAAC8];
      v8 = objc_opt_self();
      v9 = [v7 unarchivedObjectOfClass:v8 fromData:v6 error:0];

      v4 = [v9 UIColor];
      objc_storeStrong(&self->_lock_posterPreferredProminentColor, v4);
    }

    else
    {
      v4 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)updatePosterPreferredProminentColor:(id)a3 error:(id *)a4
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_posterPreferredProminentColor = self->_lock_posterPreferredProminentColor;
  if (lock_posterPreferredProminentColor && ([(UIColor *)lock_posterPreferredProminentColor _isSimilarToColor:v7 withinPercentage:0.1]& 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(PBUIURLBackedSnapshotSource *)self _lock_snapshotMetadata];
    v11 = [v10 mutableCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_opt_new();
    }

    v14 = v13;

    if (v7)
    {
      v15 = [v7 BSColor];
      v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];
      [v14 setObject:v16 forKeyedSubscript:@"kPosterPreferredProminentPosterColorMetadataKey"];
    }

    else
    {
      [v14 removeObjectForKey:@"kPosterPreferredProminentPosterColorMetadataKey"];
    }

    v23 = 0;
    v9 = [(PBUIURLBackedSnapshotSource *)self _lock_storeSnapshotMetadata:v14 error:&v23];
    v17 = v23;
    v18 = PBUILogCommon();
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PBUIURLBackedSnapshotSource updatePosterPreferredProminentColor:error:];
      }

      if (a4)
      {
        v20 = v17;
        *a4 = v17;
      }
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_21E67D000, v19, OS_LOG_TYPE_INFO, "updatePosterPreferredProminentColor ran successfully.", v22, 2u);
      }

      objc_storeStrong(&self->_lock_posterPreferredProminentColor, a3);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (UIImage)snapshot
{
  os_unfair_lock_lock(&self->_lock);
  lock_snapshot = self->_lock_snapshot;
  if (lock_snapshot)
  {
    v4 = lock_snapshot;
    os_unfair_lock_unlock(&self->_lock);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v12 = 0;
    v7 = [(PBUIURLBackedSnapshotSource *)self _lock_loadSnapshotImageWithError:&v12];
    v8 = v12;
    if (v7)
    {
      v6 = 0;
      lock_snapshotURL = self->_lock_snapshot;
      v4 = lock_snapshotURL;
    }

    else
    {
      v4 = 0;
      lock_snapshotURL = self->_lock_snapshotURL;
      v6 = lock_snapshotURL;
    }

    v10 = lock_snapshotURL;
    os_unfair_lock_unlock(&self->_lock);
    if (v8)
    {
      v6 = v6;
      v5 = v8;
      BSDispatchMain();
    }

    else
    {
      v5 = 0;
    }
  }

  return v4;
}

void __39__PBUIURLBackedSnapshotSource_snapshot__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 snapshotSource:*(a1 + 32) failedToReadSnapshotAtURL:*(a1 + 40) error:*(a1 + 48)];
}

- (void)updateWithImage:(id)a3 orImageAtURL:(id)a4 contentColorStatistics:(id)a5 metadata:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v40[1] = MEMORY[0x277D85DD0];
  v40[2] = 3221225472;
  v40[3] = __98__PBUIURLBackedSnapshotSource_updateWithImage_orImageAtURL_contentColorStatistics_metadata_error___block_invoke;
  v40[4] = &unk_278361E18;
  v40[5] = self;
  BSDispatchMain();
  os_unfair_lock_lock(&self->_lock);
  if (v13)
  {
    v40[0] = 0;
    v16 = [(PBUIURLBackedSnapshotSource *)self _lock_storeSnapshotFromURL:v13 error:v40];
    v17 = v40[0];
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  if (!v16)
  {

    v39 = 0;
    v16 = [(PBUIURLBackedSnapshotSource *)self _lock_storeSnapshot:v12 error:&v39];
    v17 = v39;
  }

LABEL_7:
  if (v16 && !v17)
  {
    v18 = [objc_opt_class() buildCacheIdentifierForURL:self->_lock_snapshotURL];
    lock_cacheIdentifier = self->_lock_cacheIdentifier;
    self->_lock_cacheIdentifier = v18;

    if ([(PBUIURLBackedSnapshotSource *)self _lock_loadInterfaceOrientation:v15])
    {
      [getPUIImageEncoderClass() setSnapshotDeviceOrientation:self->_lock_deviceOrientation forURL:self->_lock_snapshotURL];
      [getPUIImageEncoderClass() setSnapshotInterfaceOrientation:self->_lock_interfaceOrientation forURL:self->_lock_snapshotURL];
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    self->_lock_interfaceOrientation = 0;
    self->_lock_deviceOrientation = 0;
    if (!v15)
    {
LABEL_23:
      if (v14)
      {
        [(PBUIURLBackedSnapshotSource *)self _lock_storeColorStatistics:v14 error:0];
      }

      os_unfair_lock_unlock(&self->_lock);
      v36 = v14;
      BSDispatchMain();
      v21 = v36;
      goto LABEL_26;
    }

LABEL_18:
    v22 = v15;
    v23 = v22;
    v34 = v12;
    if (self->_lock_posterPreferredProminentColor)
    {
      v24 = [v22 mutableCopy];
      v25 = [(UIColor *)self->_lock_posterPreferredProminentColor BSColor];
      v26 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v25 requiringSecureCoding:1 error:0];
      [v24 setObject:v26 forKeyedSubscript:@"kPosterPreferredProminentPosterColorMetadataKey"];

      v23 = v24;
    }

    [(PBUIURLBackedSnapshotSource *)self _lock_storeSnapshotMetadata:v23 error:0, v34];
    v27 = [v23 objectForKeyedSubscript:@"kDerivedProminentPosterColorMetadataKey"];

    if (v27)
    {
      v28 = [v23 objectForKeyedSubscript:@"kDerivedProminentPosterColorMetadataKey"];
      v29 = MEMORY[0x277CCAAC8];
      v30 = objc_opt_self();
      v31 = [v29 unarchivedObjectOfClass:v30 fromData:v28 error:0];
      v32 = [v31 UIColor];
      lock_derivedProminentPosterColor = self->_lock_derivedProminentPosterColor;
      self->_lock_derivedProminentPosterColor = v32;
    }

    v12 = v35;
    goto LABEL_23;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (a7)
  {
    v20 = v17;
    *a7 = v17;
  }

  v37 = v13;
  v38 = v17;
  BSDispatchMain();

  v21 = v37;
LABEL_26:
}

uint64_t __98__PBUIURLBackedSnapshotSource_updateWithImage_orImageAtURL_contentColorStatistics_metadata_error___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0 && *(a1 + 32))
  {
    v2 = [*(a1 + 40) delegate];
    [v2 snapshotSource:*(a1 + 40) failedToReadSnapshotAtURL:*(a1 + 32) error:*(a1 + 48)];
  }

  v3 = *(a1 + 40);

  return [v3 didChangeValueForKey:@"valid"];
}

void __98__PBUIURLBackedSnapshotSource_updateWithImage_orImageAtURL_contentColorStatistics_metadata_error___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) didChangeValueForKey:@"valid"];
  if (*(a1 + 40) || *(a1 + 48) == 1)
  {
    [*(*(a1 + 32) + 32) setNeedsSourceUpdate];
    if (*(a1 + 48))
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
      [WeakRetained snapshotSourceReceivedNewSnapshot:*(a1 + 32)];
    }
  }

  if (*(a1 + 49) == 1)
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 128));
    [v3 colorStatisticsDidChange:*(a1 + 40)];
  }
}

- (void)currentSnapshotInterfaceOrientation:(int64_t *)a3 outDeviceOrientation:(int64_t *)a4
{
  os_unfair_lock_lock(&self->_lock);
  if (!BSInterfaceOrientationIsValid() || (BSInterfaceOrientationIsValid() & 1) == 0)
  {
    [(PBUIURLBackedSnapshotSource *)self _lock_loadInterfaceOrientation:0];
  }

  IsValid = BSInterfaceOrientationIsValid();
  if (a3 && IsValid)
  {
    *a3 = self->_lock_interfaceOrientation;
  }

  v8 = BSInterfaceOrientationIsValid();
  if (a4 && v8)
  {
    *a4 = self->_lock_deviceOrientation;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIURLBackedSnapshotSource *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(PBUIURLBackedSnapshotSource *)self cacheIdentifier];
  [v4 appendString:v5 withName:@"cacheIdentifier"];

  v6 = [v4 activeMultilinePrefix];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __69__PBUIURLBackedSnapshotSource_descriptionBuilderWithMultilinePrefix___block_invoke;
  v25[3] = &unk_2783622E0;
  v7 = v4;
  v26 = v7;
  v27 = self;
  [v7 appendBodySectionWithName:@"snapshot" multilinePrefix:v6 block:v25];

  v8 = [v7 activeMultilinePrefix];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__PBUIURLBackedSnapshotSource_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v22[3] = &unk_2783622E0;
  v9 = v7;
  v23 = v9;
  v24 = self;
  [v9 appendBodySectionWithName:@"colorStatistics" multilinePrefix:v8 block:v22];

  v10 = [v9 activeMultilinePrefix];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __69__PBUIURLBackedSnapshotSource_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v19 = &unk_2783622E0;
  v11 = v9;
  v20 = v11;
  v21 = self;
  [v11 appendBodySectionWithName:@"metadata" multilinePrefix:v10 block:&v16];

  v12 = [v11 appendBool:-[PBUIURLBackedSnapshotSource effectsAreBakedIn](self withName:{"effectsAreBakedIn", v16, v17, v18, v19), @"effectsAreBakedIn"}];
  v13 = [v11 appendObject:self->_observers withName:@"observers"];
  v14 = v11;

  return v11;
}

void __69__PBUIURLBackedSnapshotSource_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) snapshot];
  v4 = [v2 appendObject:v3 withName:@"image"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) snapshotURL];
  v7 = [v5 appendObject:v6 withName:@"snapshotURL"];

  v8 = *(a1 + 32);
  v10 = [*(a1 + 40) cacheIdentifier];
  v9 = [v8 appendObject:v10 withName:@"cacheIdentifier"];
}

void __69__PBUIURLBackedSnapshotSource_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) contentColorStatistics];
  v4 = [v2 appendObject:v3 withName:@"colorStatistics"];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) snapshotColorStatisticsURL];
  v6 = [v5 appendObject:v7 withName:@"snapshotColorStatisticsURL"];
}

void __69__PBUIURLBackedSnapshotSource_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) snapshotMetadata];
  v4 = [v2 appendObject:v3 withName:@"metadata"];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) snapshotMetadataURL];
  v6 = [v5 appendObject:v7 withName:@"snapshotMetadataURL"];
}

- (id)succinctDescription
{
  v2 = [(PBUIURLBackedSnapshotSource *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v20 = 1;
  }

  else if (v4)
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
    v8 = [(PBUIURLBackedSnapshotSource *)v6 snapshotURL];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __39__PBUIURLBackedSnapshotSource_isEqual___block_invoke;
    v29[3] = &unk_278362610;
    v9 = v5;
    v30 = v9;
    v10 = [v7 appendObject:v8 counterpart:v29];

    v11 = [(PBUIURLBackedSnapshotSource *)v6 snapshotColorStatisticsURL];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __39__PBUIURLBackedSnapshotSource_isEqual___block_invoke_2;
    v27[3] = &unk_278362610;
    v12 = v9;
    v28 = v12;
    v13 = [v7 appendObject:v11 counterpart:v27];

    v14 = [(PBUIURLBackedSnapshotSource *)v6 snapshotMetadataURL];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __39__PBUIURLBackedSnapshotSource_isEqual___block_invoke_3;
    v25[3] = &unk_278362610;
    v15 = v12;
    v26 = v15;
    v16 = [v7 appendObject:v14 counterpart:v25];

    v17 = [(PBUIURLBackedSnapshotSource *)v6 cacheIdentifier];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __39__PBUIURLBackedSnapshotSource_isEqual___block_invoke_4;
    v23[3] = &unk_278362610;
    v18 = v15;
    v24 = v18;
    v19 = [v7 appendObject:v17 counterpart:v23];

    if ([v7 isEqual])
    {
      v22.receiver = v6;
      v22.super_class = PBUIURLBackedSnapshotSource;
      v20 = [(PBUIURLBackedSnapshotSource *)&v22 isEqual:v18];
    }

    else
    {
      v20 = 0;
    }

    objc_sync_exit(v6);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)_lock_loadInterfaceOrientation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!(v4 | self->_lock_snapshotMetadata))
  {
    goto LABEL_10;
  }

  v6 = v4 ? v4 : self->_lock_snapshotMetadata;
  v7 = getPUIPosterSnapshotBundleInfoKeyInterfaceOrientation();
  v8 = [(NSDictionary *)v6 objectForKey:v7];
  v9 = [v8 unsignedIntegerValue];

  lock_snapshotMetadata = v5;
  if (!v5)
  {
    lock_snapshotMetadata = self->_lock_snapshotMetadata;
  }

  v11 = getPUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation();
  v12 = [(NSDictionary *)lock_snapshotMetadata objectForKey:v11];
  v13 = [v12 unsignedIntegerValue];

  if (BSInterfaceOrientationIsValid() && BSInterfaceOrientationIsValid())
  {
    self->_lock_interfaceOrientation = v9;
    self->_lock_deviceOrientation = v13;
  }

  else
  {
LABEL_10:
    v14 = [(PBUIURLBackedSnapshotSource *)self _lock_encoderForSnapshot];
    v18 = 0;
    v19 = 0;
    [v14 currentSnapshotInterfaceOrientation:&v19 outDeviceOrientation:&v18];
    if (!BSInterfaceOrientationIsValid() || !BSInterfaceOrientationIsValid())
    {

      v16 = 0;
      self->_lock_interfaceOrientation = 0;
      self->_lock_deviceOrientation = 0;
      goto LABEL_15;
    }

    v15 = v18;
    self->_lock_interfaceOrientation = v19;
    self->_lock_deviceOrientation = v15;
  }

  v16 = 1;
LABEL_15:

  return v16;
}

- (BOOL)_lock_loadSnapshotImageWithError:(id *)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  lock_snapshotURL = self->_lock_snapshotURL;
  if (!lock_snapshotURL || ![(NSURL *)lock_snapshotURL checkResourceIsReachableAndReturnError:0])
  {
    return 0;
  }

  v6 = [(PBUIURLBackedSnapshotSource *)self _lock_encoderForSnapshot];
  v7 = [v6 createUIImageWithError:a3];
  v8 = v7 != 0;
  if (v7)
  {
    objc_storeStrong(&self->_lock_snapshot, v7);
  }

  else
  {
    if (a3 && !*a3)
    {
      v9 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      v14[0] = @"Failed to load UIImage from snapshot file";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *a3 = [v9 errorWithDomain:@"PBUISnapshotErrorDomain" code:1002 userInfo:v10];
    }

    lock_snapshot = self->_lock_snapshot;
    self->_lock_snapshot = 0;
  }

  return v8;
}

- (BOOL)_lock_loadSnapshotMetadataWithError:(id *)a3
{
  lock_snapshotMetadataURL = self->_lock_snapshotMetadataURL;
  if (!lock_snapshotMetadataURL || ![(NSURL *)lock_snapshotMetadataURL checkResourceIsReachableAndReturnError:0])
  {
    return 0;
  }

  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:self->_lock_snapshotMetadataURL];
  if ([v6 length] && (v13 = 0, objc_msgSend(MEMORY[0x277CCAC58], "propertyListWithData:options:format:error:", v6, 0, 0, &v13), v7 = objc_claimAutoreleasedReturnValue(), v8 = v13, lock_snapshotMetadata = self->_lock_snapshotMetadata, self->_lock_snapshotMetadata = v7, lock_snapshotMetadata, v8))
  {
    if (a3)
    {
      v10 = v8;
      *a3 = v8;
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_lock_loadColorStatisticsWithError:(id *)a3
{
  v4 = self->_lock_snapshotColorStatisticsURL;
  v5 = v4;
  if (v4 && [(NSURL *)v4 checkResourceIsReachableAndReturnError:0])
  {
    [(NSURL *)v5 setResourceValue:*MEMORY[0x277CBE800] forKey:*MEMORY[0x277CBE7F8] error:0];
    [(NSURL *)v5 setResourceValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE878] error:0];
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v5 options:1 error:0];
    if ([v6 length] && (v7 = MEMORY[0x277CCAAC8], getPUIColorStatisticsClass(), objc_opt_self(), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "unarchivedObjectOfClass:fromData:error:", v8, v6, 0), v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
    {
      lock_contentColorStatistics = self->_lock_contentColorStatistics;
      self->_lock_contentColorStatistics = v9;

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_lock_storeColorStatistics:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (v7)
  {
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:a4];
    v9 = v8;
    if (v8 && [v8 writeToURL:self->_lock_snapshotColorStatisticsURL options:268435457 error:a4])
    {
      [(NSURL *)self->_lock_snapshotColorStatisticsURL setResourceValue:*MEMORY[0x277CBE800] forKey:*MEMORY[0x277CBE7F8] error:0];
      [(NSURL *)self->_lock_snapshotColorStatisticsURL setResourceValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE878] error:0];
      objc_storeStrong(&self->_lock_contentColorStatistics, a3);
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v9 removeItemAtURL:self->_lock_snapshotColorStatisticsURL error:0];
  }

  return v10;
}

- (BOOL)_lock_storeSnapshotMetadata:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:100 options:0 error:a4];
  v8 = v7;
  if (v7 && [v7 writeToURL:self->_lock_snapshotMetadataURL options:268435457 error:a4])
  {
    [(NSURL *)self->_lock_snapshotMetadataURL setResourceValue:*MEMORY[0x277CBE800] forKey:*MEMORY[0x277CBE7F8] error:0];
    [(NSURL *)self->_lock_snapshotMetadataURL setResourceValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE878] error:0];
    v9 = [v6 copy];
    lock_snapshotMetadata = self->_lock_snapshotMetadata;
    self->_lock_snapshotMetadata = v9;

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_lock_storeSnapshot:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(PBUIURLBackedSnapshotSource *)self _lock_encoderForSnapshot];
  v14 = 0;
  v7 = [v6 writeThenReadBackImage:v5 error:&v14];

  v8 = v14;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  v10 = !v9;
  if (v9)
  {
    p_super = PBUILogCommon();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [PBUIURLBackedSnapshotSource _lock_storeSnapshot:error:];
    }
  }

  else
  {
    v11 = v7;
    p_super = &self->_lock_snapshot->super;
    self->_lock_snapshot = v11;
  }

  return v10;
}

- (BOOL)_lock_storeSnapshotFromURL:(id)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PBUIURLBackedSnapshotSource *)self _lock_encoderForSnapshot];
  v8 = self->_lock_snapshotURL;
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v23 = 0;
  v10 = [v9 pf_replaceURL:v8 withURL:v6 error:&v23];
  v11 = v23;

  if (v10)
  {
    goto LABEL_5;
  }

  v12 = PBUILogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [PBUIURLBackedSnapshotSource _lock_storeSnapshotFromURL:error:];
  }

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = 0;
  v14 = [v13 copyItemAtURL:v6 toURL:v8 error:&v22];
  v11 = v22;

  if (v14)
  {
LABEL_5:
    v15 = [v7 createUIImageWithError:a4];
    lock_snapshot = self->_lock_snapshot;
    self->_lock_snapshot = v15;

    if (self->_lock_snapshot)
    {
      v17 = 1;
    }

    else
    {
      if (a4 && !*a4)
      {
        v18 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277CCA450];
        v25[0] = @"Failed to create UIImage from snapshot file";
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        *a4 = [v18 errorWithDomain:@"PBUISnapshotErrorDomain" code:1001 userInfo:v19];
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    if (a4 && v11)
    {
      v20 = v11;
      v17 = 0;
      *a4 = v11;
    }
  }

  return v17;
}

+ (id)buildCacheIdentifierForURL:(id)a3
{
  v13 = 0;
  v3 = *MEMORY[0x277CBE7D8];
  v4 = a3;
  [v4 getResourceValue:&v13 forKey:v3 error:0];
  v5 = MEMORY[0x277CCACA8];
  v6 = v13;
  v7 = [v4 path];
  v8 = [v7 pf_sha256Hash];
  v9 = [v4 lastPathComponent];

  v10 = &unk_282FD5BA8;
  if (v6)
  {
    v10 = v6;
  }

  v11 = [v5 stringWithFormat:@"%@-%@-(%@)", v8, v9, v10];

  return v11;
}

- (id)_lock_encoderForSnapshot
{
  v3 = self->_lock_snapshotURL;
  if (v3)
  {
    v4 = [(PUIImageEncoder *)self->_lock_imageEncoder url];
    v5 = [v4 isEqual:v3];

    if ((v5 & 1) == 0)
    {
      v6 = objc_alloc(getPUIImageEncoderClass());
      v7 = [(PBUIURLBackedSnapshotSource *)self format];
      v8 = [v6 initWithURL:v3 format:v7];
      lock_imageEncoder = self->_lock_imageEncoder;
      self->_lock_imageEncoder = v8;
    }

    v10 = self->_lock_imageEncoder;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_lock_removeOnDiskSnapshotWithError:(id *)a3
{
  lock_snapshot = self->_lock_snapshot;
  self->_lock_snapshot = 0;

  self->_lock_interfaceOrientation = 0;
  self->_lock_deviceOrientation = 0;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(a3) = [v6 removeItemAtURL:self->_lock_snapshotURL error:a3];

  return a3;
}

- (PBUIURLSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end