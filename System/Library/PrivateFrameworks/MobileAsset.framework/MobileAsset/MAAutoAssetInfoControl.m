@interface MAAutoAssetInfoControl
+ (id)nameOfSimulateEnd:(int64_t)a3;
+ (id)nameOfSimulateOperation:(int64_t)a3;
- (MAAutoAssetInfoControl)initWithCoder:(id)a3;
- (id)initClearingAfter:(BOOL)a3 forcingUnlock:(BOOL)a4 limitedToAssetTypes:(id)a5 withVolumeToReclaim:(id)a6 withUrgency:(int)a7 targetingPurgeAmount:(int64_t)a8 simulateOperation:(int64_t)a9 simulateEnd:(int64_t)a10;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetInfoControl

- (id)initClearingAfter:(BOOL)a3 forcingUnlock:(BOOL)a4 limitedToAssetTypes:(id)a5 withVolumeToReclaim:(id)a6 withUrgency:(int)a7 targetingPurgeAmount:(int64_t)a8 simulateOperation:(int64_t)a9 simulateEnd:(int64_t)a10
{
  v17 = a5;
  v18 = a6;
  v22.receiver = self;
  v22.super_class = MAAutoAssetInfoControl;
  v19 = [(MAAutoAssetInfoControl *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->_clearingAfter = a3;
    v19->_forceUnlock = a4;
    objc_storeStrong(&v19->_limitedToAssetTypes, a5);
    objc_storeStrong(&v20->_volumeToReclaim, a6);
    v20->_cacheDeleteUrgency = a7;
    v20->_targetingPurgeAmount = a8;
    v20->_simulateOperation = a9;
    v20->_simulateEnd = a10;
  }

  return v20;
}

- (MAAutoAssetInfoControl)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MAAutoAssetInfoControl;
  v5 = [(MAAutoAssetInfoControl *)&v15 init];
  if (v5)
  {
    v5->_clearingAfter = [v4 decodeBoolForKey:@"clearingAfter"];
    v5->_forceUnlock = [v4 decodeBoolForKey:@"forceUnlock"];
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v8 = [v6 initWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"limitedToAssetTypes"];
    limitedToAssetTypes = v5->_limitedToAssetTypes;
    v5->_limitedToAssetTypes = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"volumeToReclaim"];
    volumeToReclaim = v5->_volumeToReclaim;
    v5->_volumeToReclaim = v11;

    v5->_cacheDeleteUrgency = [v4 decodeIntegerForKey:@"cacheDeleteUrgency"];
    v5->_targetingPurgeAmount = [v4 decodeInt64ForKey:@"targetingPurgeAmount"];
    v5->_simulateOperation = [v4 decodeIntegerForKey:@"simulateOperation"];
    v5->_simulateEnd = [v4 decodeIntegerForKey:@"simulateEnd"];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeBool:-[MAAutoAssetInfoControl clearingAfter](self forKey:{"clearingAfter"), @"clearingAfter"}];
  [v6 encodeBool:-[MAAutoAssetInfoControl forceUnlock](self forKey:{"forceUnlock"), @"forceUnlock"}];
  v4 = [(MAAutoAssetInfoControl *)self limitedToAssetTypes];
  [v6 encodeObject:v4 forKey:@"limitedToAssetTypes"];

  v5 = [(MAAutoAssetInfoControl *)self volumeToReclaim];
  [v6 encodeObject:v5 forKey:@"volumeToReclaim"];

  [v6 encodeInteger:-[MAAutoAssetInfoControl cacheDeleteUrgency](self forKey:{"cacheDeleteUrgency"), @"cacheDeleteUrgency"}];
  [v6 encodeInt64:-[MAAutoAssetInfoControl targetingPurgeAmount](self forKey:{"targetingPurgeAmount"), @"targetingPurgeAmount"}];
  [v6 encodeInteger:-[MAAutoAssetInfoControl simulateOperation](self forKey:{"simulateOperation"), @"simulateOperation"}];
  [v6 encodeInteger:-[MAAutoAssetInfoControl simulateEnd](self forKey:{"simulateEnd"), @"simulateEnd"}];
}

- (id)summary
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(MAAutoAssetInfoControl *)self limitedToAssetTypes];

  v4 = @"N";
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
    [(__CFString *)v5 appendString:@"["];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [(MAAutoAssetInfoControl *)self limitedToAssetTypes];
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      v10 = &stru_1F0C1B388;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(__CFString *)v5 appendFormat:@"%@%@", v10, *(*(&v23 + 1) + 8 * i)];
          v10 = @",";
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v10 = @",";
      }

      while (v8);
    }

    [(__CFString *)v5 appendString:@"]"];
  }

  else
  {
    v5 = @"N";
  }

  v22 = MEMORY[0x1E696AEC0];
  if ([(MAAutoAssetInfoControl *)self clearingAfter])
  {
    v12 = @"Y";
  }

  else
  {
    v12 = @"N";
  }

  if ([(MAAutoAssetInfoControl *)self forceUnlock])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v14 = [(MAAutoAssetInfoControl *)self volumeToReclaim];
  if (v14)
  {
    v4 = [(MAAutoAssetInfoControl *)self volumeToReclaim];
  }

  v15 = [(MAAutoAssetInfoControl *)self cacheDeleteUrgency];
  v16 = [(MAAutoAssetInfoControl *)self targetingPurgeAmount];
  v17 = [MAAutoAssetInfoControl nameOfSimulateOperation:[(MAAutoAssetInfoControl *)self simulateOperation]];
  v18 = [MAAutoAssetInfoControl nameOfSimulateEnd:[(MAAutoAssetInfoControl *)self simulateEnd]];
  v19 = [v22 stringWithFormat:@"clearingAfter:%@, forceUnlock:%@, limitedToAssetTypes:%@, volumeToReclaim:%@, cacheDeleteUrgency:%d, targetingPurgeAmount:%lld, simulateOperation:%@, simulateEnd:%@", v12, v13, v5, v4, v15, v16, v17, v18];

  if (v14)
  {
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)nameOfSimulateOperation:(int64_t)a3
{
  if (a3 > 0xB)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E74CA988[a3];
  }
}

+ (id)nameOfSimulateEnd:(int64_t)a3
{
  v3 = @"UNKNOWN";
  if (a3 == 1)
  {
    v3 = @"CLIENT_REQUEST";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"NONE";
  }
}

@end