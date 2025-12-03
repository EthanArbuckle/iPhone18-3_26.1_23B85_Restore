@interface MAAutoAssetInfoStaged
- (MAAutoAssetInfoStaged)initWithCoder:(id)coder;
- (MAAutoAssetInfoStaged)initWithTotalStagedBytes:(int64_t)bytes withAssetsSuccessfullyStaged:(unint64_t)staged withByGroupTotalStagedBytes:(id)stagedBytes withByGroupAssetsSuccessfullyStaged:(id)successfullyStaged;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
- (void)fullDescription:(id)description usingLogger:(id)logger;
@end

@implementation MAAutoAssetInfoStaged

- (MAAutoAssetInfoStaged)initWithTotalStagedBytes:(int64_t)bytes withAssetsSuccessfullyStaged:(unint64_t)staged withByGroupTotalStagedBytes:(id)stagedBytes withByGroupAssetsSuccessfullyStaged:(id)successfullyStaged
{
  stagedBytesCopy = stagedBytes;
  successfullyStagedCopy = successfullyStaged;
  v16.receiver = self;
  v16.super_class = MAAutoAssetInfoStaged;
  v13 = [(MAAutoAssetInfoStaged *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_totalStagedBytes = bytes;
    v13->_assetsSuccessfullyStaged = staged;
    objc_storeStrong(&v13->_byGroupTotalStagedBytes, stagedBytes);
    objc_storeStrong(&v14->_byGroupAssetsSuccessfullyStaged, successfullyStaged);
  }

  return v14;
}

- (MAAutoAssetInfoStaged)initWithCoder:(id)coder
{
  v16[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MAAutoAssetInfoStaged;
  v5 = [(MAAutoAssetInfoStaged *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v16[3] = objc_opt_class();
    v16[4] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:5];
    v8 = [v6 setWithArray:v7];

    v5->_totalStagedBytes = [coderCopy decodeIntegerForKey:@"totalStagedBytes"];
    v5->_assetsSuccessfullyStaged = [coderCopy decodeIntegerForKey:@"assetsSuccessfullyStaged"];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"byGroupTotalStagedBytes"];
    byGroupTotalStagedBytes = v5->_byGroupTotalStagedBytes;
    v5->_byGroupTotalStagedBytes = v9;

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"byGroupAssetsSuccessfullyStaged"];
    byGroupAssetsSuccessfullyStaged = v5->_byGroupAssetsSuccessfullyStaged;
    v5->_byGroupAssetsSuccessfullyStaged = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[MAAutoAssetInfoStaged totalStagedBytes](self forKey:{"totalStagedBytes"), @"totalStagedBytes"}];
  [coderCopy encodeInteger:-[MAAutoAssetInfoStaged assetsSuccessfullyStaged](self forKey:{"assetsSuccessfullyStaged"), @"assetsSuccessfullyStaged"}];
  byGroupTotalStagedBytes = [(MAAutoAssetInfoStaged *)self byGroupTotalStagedBytes];
  [coderCopy encodeObject:byGroupTotalStagedBytes forKey:@"byGroupTotalStagedBytes"];

  byGroupAssetsSuccessfullyStaged = [(MAAutoAssetInfoStaged *)self byGroupAssetsSuccessfullyStaged];
  [coderCopy encodeObject:byGroupAssetsSuccessfullyStaged forKey:@"byGroupAssetsSuccessfullyStaged"];
}

- (id)summary
{
  v26 = *MEMORY[0x1E69E9840];
  byGroupTotalStagedBytes = [(MAAutoAssetInfoStaged *)self byGroupTotalStagedBytes];

  if (byGroupTotalStagedBytes)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [(MAAutoAssetInfoStaged *)self byGroupTotalStagedBytes];
    v20 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v20)
    {
      v6 = 1;
      v19 = *v22;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          byGroupTotalStagedBytes2 = [(MAAutoAssetInfoStaged *)self byGroupTotalStagedBytes];
          v10 = [byGroupTotalStagedBytes2 safeObjectForKey:v8 ofClass:objc_opt_class()];

          byGroupAssetsSuccessfullyStaged = [(MAAutoAssetInfoStaged *)self byGroupAssetsSuccessfullyStaged];
          v12 = [byGroupAssetsSuccessfullyStaged safeObjectForKey:v8 ofClass:objc_opt_class()];

          v13 = v8;
          v14 = @"REQUIRED";
          if (([MEMORY[0x1E69D3880] stringIsEqual:v13 to:@"STAGE_GROUP_REQUIRED"] & 1) != 0 || (v14 = @"OPTIONAL", objc_msgSend(MEMORY[0x1E69D3880], "stringIsEqual:to:", v13, @"STAGE_GROUP_OPTIONAL")))
          {

            v13 = v14;
          }

          if ((v6 & 1) == 0)
          {
            [v4 appendString:{@", "}];
            [v5 appendString:{@", "}];
          }

          [v4 appendFormat:@"%@:%llu", v13, objc_msgSend(v10, "unsignedLongLongValue")];
          [v5 appendFormat:@"%@:%llu", v13, objc_msgSend(v12, "unsignedLongLongValue")];

          v6 = 0;
        }

        v6 = 0;
        v20 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v20);
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"staged[BY-GROUP]|byGroupAttributes:%@|byGroupExpectedBytes:%@", v4, v5];
  }

  else
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"staged|totalStagedBytes:%ld|assetsSuccessfullyStaged:%lu", -[MAAutoAssetInfoStaged totalStagedBytes](self, "totalStagedBytes"), -[MAAutoAssetInfoStaged assetsSuccessfullyStaged](self, "assetsSuccessfullyStaged")];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)fullDescription:(id)description usingLogger:(id)logger
{
  v28 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if ([MEMORY[0x1E69D3880] stringIsEqual:descriptionCopy to:@"MA-AUTO-STAGE(REPLY):DOWNLOAD_GROUPS"])
  {
    v6 = @"DOWNLOAD-GROUPS-REPLY";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:descriptionCopy to:@"MA-AUTO-STAGE(REPLY):DOWNLOAD_ALL"])
  {
    v6 = @"DOWNLOAD-ALL-REPLY";
  }

  else
  {
    v6 = @"STAGED";
  }

  v7 = _MAClientLog(@"AutoStager");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543874;
    v23 = v6;
    v24 = 2048;
    totalStagedBytes = [(MAAutoAssetInfoStaged *)self totalStagedBytes];
    v26 = 2048;
    assetsSuccessfullyStaged = [(MAAutoAssetInfoStaged *)self assetsSuccessfullyStaged];
    _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> totalStagedBytes:%llu | assetsSuccessfullyStaged:%llu", &v22, 0x20u);
  }

  byGroupTotalStagedBytes = [(MAAutoAssetInfoStaged *)self byGroupTotalStagedBytes];
  if (byGroupTotalStagedBytes)
  {
    v9 = byGroupTotalStagedBytes;
    byGroupTotalStagedBytes2 = [(MAAutoAssetInfoStaged *)self byGroupTotalStagedBytes];
    v11 = [byGroupTotalStagedBytes2 count];

    if (v11)
    {
      v12 = _MAClientLog(@"AutoStager");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        byGroupTotalStagedBytes3 = [(MAAutoAssetInfoStaged *)self byGroupTotalStagedBytes];
        v22 = 138543618;
        v23 = v6;
        v24 = 2114;
        totalStagedBytes = byGroupTotalStagedBytes3;
        _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> byGroupTotalStagedBytes:\n%{public}@", &v22, 0x16u);
      }
    }
  }

  byGroupAssetsSuccessfullyStaged = [(MAAutoAssetInfoStaged *)self byGroupAssetsSuccessfullyStaged];
  if (byGroupAssetsSuccessfullyStaged)
  {
    v15 = byGroupAssetsSuccessfullyStaged;
    byGroupAssetsSuccessfullyStaged2 = [(MAAutoAssetInfoStaged *)self byGroupAssetsSuccessfullyStaged];
    v17 = [byGroupAssetsSuccessfullyStaged2 count];

    if (v17)
    {
      v18 = _MAClientLog(@"AutoStager");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        byGroupAssetsSuccessfullyStaged3 = [(MAAutoAssetInfoStaged *)self byGroupAssetsSuccessfullyStaged];
        safeSummary = [byGroupAssetsSuccessfullyStaged3 safeSummary];
        v22 = 138543618;
        v23 = v6;
        v24 = 2114;
        totalStagedBytes = safeSummary;
        _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> byGroupAssetsSuccessfullyStaged:\n%{public}@", &v22, 0x16u);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

@end