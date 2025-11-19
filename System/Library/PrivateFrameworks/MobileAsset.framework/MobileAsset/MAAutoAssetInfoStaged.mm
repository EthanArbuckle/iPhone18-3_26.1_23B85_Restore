@interface MAAutoAssetInfoStaged
- (MAAutoAssetInfoStaged)initWithCoder:(id)a3;
- (MAAutoAssetInfoStaged)initWithTotalStagedBytes:(int64_t)a3 withAssetsSuccessfullyStaged:(unint64_t)a4 withByGroupTotalStagedBytes:(id)a5 withByGroupAssetsSuccessfullyStaged:(id)a6;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
- (void)fullDescription:(id)a3 usingLogger:(id)a4;
@end

@implementation MAAutoAssetInfoStaged

- (MAAutoAssetInfoStaged)initWithTotalStagedBytes:(int64_t)a3 withAssetsSuccessfullyStaged:(unint64_t)a4 withByGroupTotalStagedBytes:(id)a5 withByGroupAssetsSuccessfullyStaged:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = MAAutoAssetInfoStaged;
  v13 = [(MAAutoAssetInfoStaged *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_totalStagedBytes = a3;
    v13->_assetsSuccessfullyStaged = a4;
    objc_storeStrong(&v13->_byGroupTotalStagedBytes, a5);
    objc_storeStrong(&v14->_byGroupAssetsSuccessfullyStaged, a6);
  }

  return v14;
}

- (MAAutoAssetInfoStaged)initWithCoder:(id)a3
{
  v16[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
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

    v5->_totalStagedBytes = [v4 decodeIntegerForKey:@"totalStagedBytes"];
    v5->_assetsSuccessfullyStaged = [v4 decodeIntegerForKey:@"assetsSuccessfullyStaged"];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"byGroupTotalStagedBytes"];
    byGroupTotalStagedBytes = v5->_byGroupTotalStagedBytes;
    v5->_byGroupTotalStagedBytes = v9;

    v11 = [v4 decodeObjectOfClasses:v8 forKey:@"byGroupAssetsSuccessfullyStaged"];
    byGroupAssetsSuccessfullyStaged = v5->_byGroupAssetsSuccessfullyStaged;
    v5->_byGroupAssetsSuccessfullyStaged = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[MAAutoAssetInfoStaged totalStagedBytes](self forKey:{"totalStagedBytes"), @"totalStagedBytes"}];
  [v4 encodeInteger:-[MAAutoAssetInfoStaged assetsSuccessfullyStaged](self forKey:{"assetsSuccessfullyStaged"), @"assetsSuccessfullyStaged"}];
  v5 = [(MAAutoAssetInfoStaged *)self byGroupTotalStagedBytes];
  [v4 encodeObject:v5 forKey:@"byGroupTotalStagedBytes"];

  v6 = [(MAAutoAssetInfoStaged *)self byGroupAssetsSuccessfullyStaged];
  [v4 encodeObject:v6 forKey:@"byGroupAssetsSuccessfullyStaged"];
}

- (id)summary
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(MAAutoAssetInfoStaged *)self byGroupTotalStagedBytes];

  if (v3)
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
          v9 = [(MAAutoAssetInfoStaged *)self byGroupTotalStagedBytes];
          v10 = [v9 safeObjectForKey:v8 ofClass:objc_opt_class()];

          v11 = [(MAAutoAssetInfoStaged *)self byGroupAssetsSuccessfullyStaged];
          v12 = [v11 safeObjectForKey:v8 ofClass:objc_opt_class()];

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

- (void)fullDescription:(id)a3 usingLogger:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E69D3880] stringIsEqual:v5 to:@"MA-AUTO-STAGE(REPLY):DOWNLOAD_GROUPS"])
  {
    v6 = @"DOWNLOAD-GROUPS-REPLY";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v5 to:@"MA-AUTO-STAGE(REPLY):DOWNLOAD_ALL"])
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
    v25 = [(MAAutoAssetInfoStaged *)self totalStagedBytes];
    v26 = 2048;
    v27 = [(MAAutoAssetInfoStaged *)self assetsSuccessfullyStaged];
    _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> totalStagedBytes:%llu | assetsSuccessfullyStaged:%llu", &v22, 0x20u);
  }

  v8 = [(MAAutoAssetInfoStaged *)self byGroupTotalStagedBytes];
  if (v8)
  {
    v9 = v8;
    v10 = [(MAAutoAssetInfoStaged *)self byGroupTotalStagedBytes];
    v11 = [v10 count];

    if (v11)
    {
      v12 = _MAClientLog(@"AutoStager");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(MAAutoAssetInfoStaged *)self byGroupTotalStagedBytes];
        v22 = 138543618;
        v23 = v6;
        v24 = 2114;
        v25 = v13;
        _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> byGroupTotalStagedBytes:\n%{public}@", &v22, 0x16u);
      }
    }
  }

  v14 = [(MAAutoAssetInfoStaged *)self byGroupAssetsSuccessfullyStaged];
  if (v14)
  {
    v15 = v14;
    v16 = [(MAAutoAssetInfoStaged *)self byGroupAssetsSuccessfullyStaged];
    v17 = [v16 count];

    if (v17)
    {
      v18 = _MAClientLog(@"AutoStager");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(MAAutoAssetInfoStaged *)self byGroupAssetsSuccessfullyStaged];
        v20 = [v19 safeSummary];
        v22 = 138543618;
        v23 = v6;
        v24 = 2114;
        v25 = v20;
        _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> byGroupAssetsSuccessfullyStaged:\n%{public}@", &v22, 0x16u);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

@end