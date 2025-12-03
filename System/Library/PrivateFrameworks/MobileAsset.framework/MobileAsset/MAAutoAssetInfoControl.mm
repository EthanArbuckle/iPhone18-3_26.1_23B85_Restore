@interface MAAutoAssetInfoControl
+ (id)nameOfSimulateEnd:(int64_t)end;
+ (id)nameOfSimulateOperation:(int64_t)operation;
- (MAAutoAssetInfoControl)initWithCoder:(id)coder;
- (id)initClearingAfter:(BOOL)after forcingUnlock:(BOOL)unlock limitedToAssetTypes:(id)types withVolumeToReclaim:(id)reclaim withUrgency:(int)urgency targetingPurgeAmount:(int64_t)amount simulateOperation:(int64_t)operation simulateEnd:(int64_t)self0;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetInfoControl

- (id)initClearingAfter:(BOOL)after forcingUnlock:(BOOL)unlock limitedToAssetTypes:(id)types withVolumeToReclaim:(id)reclaim withUrgency:(int)urgency targetingPurgeAmount:(int64_t)amount simulateOperation:(int64_t)operation simulateEnd:(int64_t)self0
{
  typesCopy = types;
  reclaimCopy = reclaim;
  v22.receiver = self;
  v22.super_class = MAAutoAssetInfoControl;
  v19 = [(MAAutoAssetInfoControl *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->_clearingAfter = after;
    v19->_forceUnlock = unlock;
    objc_storeStrong(&v19->_limitedToAssetTypes, types);
    objc_storeStrong(&v20->_volumeToReclaim, reclaim);
    v20->_cacheDeleteUrgency = urgency;
    v20->_targetingPurgeAmount = amount;
    v20->_simulateOperation = operation;
    v20->_simulateEnd = end;
  }

  return v20;
}

- (MAAutoAssetInfoControl)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MAAutoAssetInfoControl;
  v5 = [(MAAutoAssetInfoControl *)&v15 init];
  if (v5)
  {
    v5->_clearingAfter = [coderCopy decodeBoolForKey:@"clearingAfter"];
    v5->_forceUnlock = [coderCopy decodeBoolForKey:@"forceUnlock"];
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v8 = [v6 initWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"limitedToAssetTypes"];
    limitedToAssetTypes = v5->_limitedToAssetTypes;
    v5->_limitedToAssetTypes = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"volumeToReclaim"];
    volumeToReclaim = v5->_volumeToReclaim;
    v5->_volumeToReclaim = v11;

    v5->_cacheDeleteUrgency = [coderCopy decodeIntegerForKey:@"cacheDeleteUrgency"];
    v5->_targetingPurgeAmount = [coderCopy decodeInt64ForKey:@"targetingPurgeAmount"];
    v5->_simulateOperation = [coderCopy decodeIntegerForKey:@"simulateOperation"];
    v5->_simulateEnd = [coderCopy decodeIntegerForKey:@"simulateEnd"];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[MAAutoAssetInfoControl clearingAfter](self forKey:{"clearingAfter"), @"clearingAfter"}];
  [coderCopy encodeBool:-[MAAutoAssetInfoControl forceUnlock](self forKey:{"forceUnlock"), @"forceUnlock"}];
  limitedToAssetTypes = [(MAAutoAssetInfoControl *)self limitedToAssetTypes];
  [coderCopy encodeObject:limitedToAssetTypes forKey:@"limitedToAssetTypes"];

  volumeToReclaim = [(MAAutoAssetInfoControl *)self volumeToReclaim];
  [coderCopy encodeObject:volumeToReclaim forKey:@"volumeToReclaim"];

  [coderCopy encodeInteger:-[MAAutoAssetInfoControl cacheDeleteUrgency](self forKey:{"cacheDeleteUrgency"), @"cacheDeleteUrgency"}];
  [coderCopy encodeInt64:-[MAAutoAssetInfoControl targetingPurgeAmount](self forKey:{"targetingPurgeAmount"), @"targetingPurgeAmount"}];
  [coderCopy encodeInteger:-[MAAutoAssetInfoControl simulateOperation](self forKey:{"simulateOperation"), @"simulateOperation"}];
  [coderCopy encodeInteger:-[MAAutoAssetInfoControl simulateEnd](self forKey:{"simulateEnd"), @"simulateEnd"}];
}

- (id)summary
{
  v28 = *MEMORY[0x1E69E9840];
  limitedToAssetTypes = [(MAAutoAssetInfoControl *)self limitedToAssetTypes];

  volumeToReclaim2 = @"N";
  if (limitedToAssetTypes)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
    [(__CFString *)v5 appendString:@"["];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    limitedToAssetTypes2 = [(MAAutoAssetInfoControl *)self limitedToAssetTypes];
    v7 = [limitedToAssetTypes2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(limitedToAssetTypes2);
          }

          [(__CFString *)v5 appendFormat:@"%@%@", v10, *(*(&v23 + 1) + 8 * i)];
          v10 = @",";
        }

        v8 = [limitedToAssetTypes2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

  volumeToReclaim = [(MAAutoAssetInfoControl *)self volumeToReclaim];
  if (volumeToReclaim)
  {
    volumeToReclaim2 = [(MAAutoAssetInfoControl *)self volumeToReclaim];
  }

  cacheDeleteUrgency = [(MAAutoAssetInfoControl *)self cacheDeleteUrgency];
  targetingPurgeAmount = [(MAAutoAssetInfoControl *)self targetingPurgeAmount];
  v17 = [MAAutoAssetInfoControl nameOfSimulateOperation:[(MAAutoAssetInfoControl *)self simulateOperation]];
  v18 = [MAAutoAssetInfoControl nameOfSimulateEnd:[(MAAutoAssetInfoControl *)self simulateEnd]];
  v19 = [v22 stringWithFormat:@"clearingAfter:%@, forceUnlock:%@, limitedToAssetTypes:%@, volumeToReclaim:%@, cacheDeleteUrgency:%d, targetingPurgeAmount:%lld, simulateOperation:%@, simulateEnd:%@", v12, v13, v5, volumeToReclaim2, cacheDeleteUrgency, targetingPurgeAmount, v17, v18];

  if (volumeToReclaim)
  {
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)nameOfSimulateOperation:(int64_t)operation
{
  if (operation > 0xB)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E74CA988[operation];
  }
}

+ (id)nameOfSimulateEnd:(int64_t)end
{
  v3 = @"UNKNOWN";
  if (end == 1)
  {
    v3 = @"CLIENT_REQUEST";
  }

  if (end)
  {
    return v3;
  }

  else
  {
    return @"NONE";
  }
}

@end