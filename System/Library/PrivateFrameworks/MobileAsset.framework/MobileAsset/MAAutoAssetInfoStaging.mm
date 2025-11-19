@interface MAAutoAssetInfoStaging
- (MAAutoAssetInfoStaging)initWithCoder:(id)a3;
- (MAAutoAssetInfoStaging)initWithUpdateAttributes:(id)a3 withByGroupAvailableForStaging:(id)a4 withAvailableForStaging:(id)a5 withByGroupTotalExpectedBytes:(id)a6 withTotalExpectedBytes:(unint64_t)a7;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
- (void)fullDescription:(id)a3 usingLogger:(id)a4;
@end

@implementation MAAutoAssetInfoStaging

- (MAAutoAssetInfoStaging)initWithUpdateAttributes:(id)a3 withByGroupAvailableForStaging:(id)a4 withAvailableForStaging:(id)a5 withByGroupTotalExpectedBytes:(id)a6 withTotalExpectedBytes:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = MAAutoAssetInfoStaging;
  v17 = [(MAAutoAssetInfoStaging *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_updateAttributes, a3);
    objc_storeStrong(&v18->_byGroupAvailableForStagingAttributes, a4);
    objc_storeStrong(&v18->_allAvailableForStagingAttributes, a5);
    objc_storeStrong(&v18->_byGroupTotalExpectedBytes, a6);
    v18->_totalExpectedBytes = a7;
  }

  return v18;
}

- (MAAutoAssetInfoStaging)initWithCoder:(id)a3
{
  v28[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MAAutoAssetInfoStaging;
  v5 = [(MAAutoAssetInfoStaging *)&v25 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v28[2] = objc_opt_class();
    v28[3] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    v8 = [v6 setWithArray:v7];

    v9 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v27[2] = objc_opt_class();
    v27[3] = objc_opt_class();
    v27[4] = objc_opt_class();
    v27[5] = objc_opt_class();
    v27[6] = objc_opt_class();
    v27[7] = objc_opt_class();
    v27[8] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:9];
    v11 = [v9 setWithArray:v10];

    v12 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v26[2] = objc_opt_class();
    v26[3] = objc_opt_class();
    v26[4] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
    v14 = [v12 setWithArray:v13];

    v15 = [v4 decodeObjectOfClasses:v8 forKey:@"updateAttributes"];
    updateAttributes = v5->_updateAttributes;
    v5->_updateAttributes = v15;

    v17 = [v4 decodeObjectOfClasses:v11 forKey:@"byGroupAvailableForStagingAttributes"];
    byGroupAvailableForStagingAttributes = v5->_byGroupAvailableForStagingAttributes;
    v5->_byGroupAvailableForStagingAttributes = v17;

    v19 = [v4 decodeObjectOfClasses:v11 forKey:@"allAvailableForStagingAttributes"];
    allAvailableForStagingAttributes = v5->_allAvailableForStagingAttributes;
    v5->_allAvailableForStagingAttributes = v19;

    v21 = [v4 decodeObjectOfClasses:v14 forKey:@"byGroupTotalExpectedBytes"];
    byGroupTotalExpectedBytes = v5->_byGroupTotalExpectedBytes;
    v5->_byGroupTotalExpectedBytes = v21;

    v5->_totalExpectedBytes = [v4 decodeIntegerForKey:@"totalExpectedBytes"];
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MAAutoAssetInfoStaging *)self updateAttributes];
  [v8 encodeObject:v4 forKey:@"updateAttributes"];

  v5 = [(MAAutoAssetInfoStaging *)self byGroupAvailableForStagingAttributes];
  [v8 encodeObject:v5 forKey:@"byGroupAvailableForStagingAttributes"];

  v6 = [(MAAutoAssetInfoStaging *)self allAvailableForStagingAttributes];
  [v8 encodeObject:v6 forKey:@"allAvailableForStagingAttributes"];

  v7 = [(MAAutoAssetInfoStaging *)self byGroupTotalExpectedBytes];
  [v8 encodeObject:v7 forKey:@"byGroupTotalExpectedBytes"];

  [v8 encodeInteger:-[MAAutoAssetInfoStaging totalExpectedBytes](self forKey:{"totalExpectedBytes"), @"totalExpectedBytes"}];
}

- (id)description
{
  v20 = MEMORY[0x1E696AEC0];
  v22 = [(MAAutoAssetInfoStaging *)self summary];
  v4 = [(MAAutoAssetInfoStaging *)self updateAttributes];
  if (v4)
  {
    v5 = MEMORY[0x1E695DF20];
    v19 = [(MAAutoAssetInfoStaging *)self updateAttributes];
    v21 = [v5 safeSummaryForDictionary:?];
  }

  else
  {
    v21 = @"N";
  }

  v6 = [(MAAutoAssetInfoStaging *)self byGroupAvailableForStagingAttributes];
  if (v6)
  {
    v7 = MEMORY[0x1E695DF20];
    v18 = [(MAAutoAssetInfoStaging *)self byGroupAvailableForStagingAttributes];
    v8 = [v7 safeSummaryForDictionary:?];
  }

  else
  {
    v8 = @"N";
  }

  v9 = [(MAAutoAssetInfoStaging *)self allAvailableForStagingAttributes];
  if (v9)
  {
    v10 = MEMORY[0x1E695DF20];
    v2 = [(MAAutoAssetInfoStaging *)self allAvailableForStagingAttributes];
    v11 = [v10 safeSummaryForDictionary:v2];
  }

  else
  {
    v11 = @"N";
  }

  v12 = [(MAAutoAssetInfoStaging *)self byGroupTotalExpectedBytes];
  if (v12)
  {
    v13 = MEMORY[0x1E695DF20];
    v14 = [(MAAutoAssetInfoStaging *)self byGroupTotalExpectedBytes];
    v15 = [v13 safeSummaryForDictionary:v14];
    v16 = [v20 stringWithFormat:@"%@|updateAttributes:%@|byGroupAvailableForStaging:%@|allAvailableForStaging:%@|byGroupTotalExpectedBytes:%@", v22, v21, v8, v11, v15];
  }

  else
  {
    v16 = [v20 stringWithFormat:@"%@|updateAttributes:%@|byGroupAvailableForStaging:%@|allAvailableForStaging:%@|byGroupTotalExpectedBytes:%@", v22, v21, v8, v11, @"N"];
  }

  if (v9)
  {
  }

  if (v6)
  {
  }

  if (v4)
  {
  }

  return v16;
}

- (id)summary
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [(MAAutoAssetInfoStaging *)self updateAttributes];
  v4 = [v3 safeObjectForKey:@"OSVersion" ofClass:objc_opt_class()];

  v5 = [(MAAutoAssetInfoStaging *)self updateAttributes];
  v6 = [v5 safeObjectForKey:@"Build" ofClass:objc_opt_class()];

  v7 = [(MAAutoAssetInfoStaging *)self updateAttributes];
  v8 = [v7 safeObjectForKey:@"TrainName" ofClass:objc_opt_class()];

  v9 = [(MAAutoAssetInfoStaging *)self updateAttributes];
  v10 = [v9 safeObjectForKey:@"RestoreVersion" ofClass:objc_opt_class()];

  v11 = [(MAAutoAssetInfoStaging *)self updateAttributes];
  v12 = [v11 safeObjectForKey:@"GroupNames" ofClass:objc_opt_class()];

  v35 = v12;
  if (v12)
  {
    v31 = v10;
    v32 = v8;
    v33 = v6;
    v34 = v4;
    v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v14 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v12;
    v15 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 1;
      v37 = *v39;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v39 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          v20 = [(MAAutoAssetInfoStaging *)self byGroupAvailableForStagingAttributes];
          v21 = [v20 safeObjectForKey:v19 ofClass:objc_opt_class()];

          v22 = [(MAAutoAssetInfoStaging *)self byGroupTotalExpectedBytes];
          v23 = [v22 safeObjectForKey:v19 ofClass:objc_opt_class()];

          v24 = v19;
          v25 = @"REQUIRED";
          if (([MEMORY[0x1E69D3880] stringIsEqual:v24 to:@"STAGE_GROUP_REQUIRED"] & 1) != 0 || (v25 = @"OPTIONAL", objc_msgSend(MEMORY[0x1E69D3880], "stringIsEqual:to:", v24, @"STAGE_GROUP_OPTIONAL")))
          {

            v24 = v25;
          }

          if ((v17 & 1) == 0)
          {
            [v13 appendString:{@", "}];
            [v14 appendString:{@", "}];
          }

          [v13 appendFormat:@"%@:%ld", v24, objc_msgSend(v21, "count")];
          [v14 appendFormat:@"%@:%llu", v24, objc_msgSend(v23, "unsignedLongLongValue")];

          v17 = 0;
        }

        v16 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        v17 = 0;
      }

      while (v16);
    }

    v10 = v31;
    v8 = v32;
    v6 = v33;
    v4 = v34;
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"staging[BY-GROUP]|osVersion:%@|build:%@|trainName:%@|restoreVersion:%@|byGroupAttributes:%@|byGroupExpectedBytes:%@", v34, v33, v32, v31, v13, v14];
  }

  else
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = [(MAAutoAssetInfoStaging *)self allAvailableForStagingAttributes];
    v26 = [v27 stringWithFormat:@"staging[ALL]|osVersion:%@|build:%@|trainName:%@|restoreVersion:%@|allAvailableForStaging:%ld|totalExpectedBytes:%llu", v4, v6, v8, v10, objc_msgSend(v28, "count"), -[MAAutoAssetInfoStaging totalExpectedBytes](self, "totalExpectedBytes")];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v26;
}

- (void)fullDescription:(id)a3 usingLogger:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E69D3880] stringIsEqual:v5 to:@"MA-AUTO-STAGE:DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE"])
  {
    v6 = @"DETERMINE-GROUPS-REQUEST";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v5 to:@"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE_FOR_UPDATE"])
  {
    v6 = @"DETERMINE-ALL-REQUEST";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v5 to:@"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE"])
  {
    v6 = @"DETERMINE-ALL-LEGACY-REQUEST";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v5 to:@"MA-AUTO-STAGE:DOWNLOAD_GROUPS"])
  {
    v6 = @"DOWNLOAD-GROUPS-REQUEST";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v5 to:@"MA-AUTO-STAGE:DOWNLOAD_ALL"])
  {
    v6 = @"DOWNLOAD-ALL-REQUEST";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v5 to:@"MA-AUTO-STAGE(REPLY):DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE"])
  {
    v6 = @"DETERMINE-GROUPS-REPLY";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v5 to:@"MA-AUTO-STAGE(REPLY):DETERMINE_ALL_AVAILABLE_FOR_UPDATE"])
  {
    v6 = @"DETERMINE-ALL-REPLY";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:v5 to:@"MA-AUTO-STAGE(REPLY):DETERMINE_ALL_AVAILABLE"])
  {
    v6 = @"DETERMINE-ALL-LEGACY-REPLY";
  }

  else
  {
    v6 = @"STAGING";
  }

  v7 = [(MAAutoAssetInfoStaging *)self updateAttributes];

  if (v7)
  {
    v8 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(MAAutoAssetInfoStaging *)self updateAttributes];
      v29 = 138543618;
      v30 = v6;
      v31 = 2114;
      v32 = v9;
      _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> updateAttributes:\n%{public}@", &v29, 0x16u);
    }
  }

  v10 = [(MAAutoAssetInfoStaging *)self byGroupAvailableForStagingAttributes];

  if (v10)
  {
    v11 = [(MAAutoAssetInfoStaging *)self byGroupAvailableForStagingAttributes];
    v12 = [v11 safeObjectForKey:@"STAGE_GROUP_REQUIRED" ofClass:objc_opt_class()];

    v13 = [(MAAutoAssetInfoStaging *)self byGroupAvailableForStagingAttributes];
    v14 = [v13 safeObjectForKey:@"STAGE_GROUP_OPTIONAL" ofClass:objc_opt_class()];

    if (v12 && [v12 count])
    {
      v15 = _MAClientLog(@"AutoStager");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v12 safeSummary];
        v29 = 138543618;
        v30 = v6;
        v31 = 2114;
        v32 = v16;
        _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> byGroupAvailableForStaging[REQUIRED]:\n%{public}@", &v29, 0x16u);
      }
    }

    else
    {
      v15 = _MAClientLog(@"AutoStager");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138543362;
        v30 = v6;
        _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> byGroupAvailableForStaging[REQUIRED]:NONE", &v29, 0xCu);
      }
    }

    if (v14 && [v14 count])
    {
      v17 = _MAClientLog(@"AutoStager");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v14 safeSummary];
        v29 = 138543618;
        v30 = v6;
        v31 = 2114;
        v32 = v18;
        _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> byGroupAvailableForStaging[OPTIONAL]:\n%{public}@", &v29, 0x16u);
      }
    }

    else
    {
      v17 = _MAClientLog(@"AutoStager");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138543362;
        v30 = v6;
        _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> byGroupAvailableForStaging[OPTIONAL]:NONE", &v29, 0xCu);
      }
    }
  }

  v19 = [(MAAutoAssetInfoStaging *)self allAvailableForStagingAttributes];

  if (v19)
  {
    v20 = _MAClientLog(@"AutoStager");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(MAAutoAssetInfoStaging *)self allAvailableForStagingAttributes];
      v22 = [v21 safeSummary];
      v29 = 138543618;
      v30 = v6;
      v31 = 2114;
      v32 = v22;
      _os_log_impl(&dword_197AD5000, v20, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> allAvailableForStagingAttributes:\n%{public}@", &v29, 0x16u);
    }
  }

  v23 = [(MAAutoAssetInfoStaging *)self byGroupTotalExpectedBytes];

  if (v23)
  {
    v24 = _MAClientLog(@"AutoStager");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(MAAutoAssetInfoStaging *)self byGroupTotalExpectedBytes];
      v29 = 138543618;
      v30 = v6;
      v31 = 2114;
      v32 = v25;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> byGroupTotalExpectedBytes:\n%{public}@", &v29, 0x16u);
    }
  }

  v26 = _MAClientLog(@"AutoStager");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [(MAAutoAssetInfoStaging *)self totalExpectedBytes];
    v29 = 138543618;
    v30 = v6;
    v31 = 2048;
    v32 = v27;
    _os_log_impl(&dword_197AD5000, v26, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> totalExpectedBytes:%llu", &v29, 0x16u);
  }

  v28 = *MEMORY[0x1E69E9840];
}

@end