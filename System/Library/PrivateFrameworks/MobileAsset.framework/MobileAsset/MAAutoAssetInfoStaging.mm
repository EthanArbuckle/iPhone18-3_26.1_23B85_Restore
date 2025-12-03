@interface MAAutoAssetInfoStaging
- (MAAutoAssetInfoStaging)initWithCoder:(id)coder;
- (MAAutoAssetInfoStaging)initWithUpdateAttributes:(id)attributes withByGroupAvailableForStaging:(id)staging withAvailableForStaging:(id)forStaging withByGroupTotalExpectedBytes:(id)bytes withTotalExpectedBytes:(unint64_t)expectedBytes;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
- (void)fullDescription:(id)description usingLogger:(id)logger;
@end

@implementation MAAutoAssetInfoStaging

- (MAAutoAssetInfoStaging)initWithUpdateAttributes:(id)attributes withByGroupAvailableForStaging:(id)staging withAvailableForStaging:(id)forStaging withByGroupTotalExpectedBytes:(id)bytes withTotalExpectedBytes:(unint64_t)expectedBytes
{
  attributesCopy = attributes;
  stagingCopy = staging;
  forStagingCopy = forStaging;
  bytesCopy = bytes;
  v20.receiver = self;
  v20.super_class = MAAutoAssetInfoStaging;
  v17 = [(MAAutoAssetInfoStaging *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_updateAttributes, attributes);
    objc_storeStrong(&v18->_byGroupAvailableForStagingAttributes, staging);
    objc_storeStrong(&v18->_allAvailableForStagingAttributes, forStaging);
    objc_storeStrong(&v18->_byGroupTotalExpectedBytes, bytes);
    v18->_totalExpectedBytes = expectedBytes;
  }

  return v18;
}

- (MAAutoAssetInfoStaging)initWithCoder:(id)coder
{
  v28[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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

    v15 = [coderCopy decodeObjectOfClasses:v8 forKey:@"updateAttributes"];
    updateAttributes = v5->_updateAttributes;
    v5->_updateAttributes = v15;

    v17 = [coderCopy decodeObjectOfClasses:v11 forKey:@"byGroupAvailableForStagingAttributes"];
    byGroupAvailableForStagingAttributes = v5->_byGroupAvailableForStagingAttributes;
    v5->_byGroupAvailableForStagingAttributes = v17;

    v19 = [coderCopy decodeObjectOfClasses:v11 forKey:@"allAvailableForStagingAttributes"];
    allAvailableForStagingAttributes = v5->_allAvailableForStagingAttributes;
    v5->_allAvailableForStagingAttributes = v19;

    v21 = [coderCopy decodeObjectOfClasses:v14 forKey:@"byGroupTotalExpectedBytes"];
    byGroupTotalExpectedBytes = v5->_byGroupTotalExpectedBytes;
    v5->_byGroupTotalExpectedBytes = v21;

    v5->_totalExpectedBytes = [coderCopy decodeIntegerForKey:@"totalExpectedBytes"];
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  updateAttributes = [(MAAutoAssetInfoStaging *)self updateAttributes];
  [coderCopy encodeObject:updateAttributes forKey:@"updateAttributes"];

  byGroupAvailableForStagingAttributes = [(MAAutoAssetInfoStaging *)self byGroupAvailableForStagingAttributes];
  [coderCopy encodeObject:byGroupAvailableForStagingAttributes forKey:@"byGroupAvailableForStagingAttributes"];

  allAvailableForStagingAttributes = [(MAAutoAssetInfoStaging *)self allAvailableForStagingAttributes];
  [coderCopy encodeObject:allAvailableForStagingAttributes forKey:@"allAvailableForStagingAttributes"];

  byGroupTotalExpectedBytes = [(MAAutoAssetInfoStaging *)self byGroupTotalExpectedBytes];
  [coderCopy encodeObject:byGroupTotalExpectedBytes forKey:@"byGroupTotalExpectedBytes"];

  [coderCopy encodeInteger:-[MAAutoAssetInfoStaging totalExpectedBytes](self forKey:{"totalExpectedBytes"), @"totalExpectedBytes"}];
}

- (id)description
{
  v20 = MEMORY[0x1E696AEC0];
  summary = [(MAAutoAssetInfoStaging *)self summary];
  updateAttributes = [(MAAutoAssetInfoStaging *)self updateAttributes];
  if (updateAttributes)
  {
    v5 = MEMORY[0x1E695DF20];
    updateAttributes2 = [(MAAutoAssetInfoStaging *)self updateAttributes];
    v21 = [v5 safeSummaryForDictionary:?];
  }

  else
  {
    v21 = @"N";
  }

  byGroupAvailableForStagingAttributes = [(MAAutoAssetInfoStaging *)self byGroupAvailableForStagingAttributes];
  if (byGroupAvailableForStagingAttributes)
  {
    v7 = MEMORY[0x1E695DF20];
    byGroupAvailableForStagingAttributes2 = [(MAAutoAssetInfoStaging *)self byGroupAvailableForStagingAttributes];
    v8 = [v7 safeSummaryForDictionary:?];
  }

  else
  {
    v8 = @"N";
  }

  allAvailableForStagingAttributes = [(MAAutoAssetInfoStaging *)self allAvailableForStagingAttributes];
  if (allAvailableForStagingAttributes)
  {
    v10 = MEMORY[0x1E695DF20];
    allAvailableForStagingAttributes2 = [(MAAutoAssetInfoStaging *)self allAvailableForStagingAttributes];
    v11 = [v10 safeSummaryForDictionary:allAvailableForStagingAttributes2];
  }

  else
  {
    v11 = @"N";
  }

  byGroupTotalExpectedBytes = [(MAAutoAssetInfoStaging *)self byGroupTotalExpectedBytes];
  if (byGroupTotalExpectedBytes)
  {
    v13 = MEMORY[0x1E695DF20];
    byGroupTotalExpectedBytes2 = [(MAAutoAssetInfoStaging *)self byGroupTotalExpectedBytes];
    v15 = [v13 safeSummaryForDictionary:byGroupTotalExpectedBytes2];
    v16 = [v20 stringWithFormat:@"%@|updateAttributes:%@|byGroupAvailableForStaging:%@|allAvailableForStaging:%@|byGroupTotalExpectedBytes:%@", summary, v21, v8, v11, v15];
  }

  else
  {
    v16 = [v20 stringWithFormat:@"%@|updateAttributes:%@|byGroupAvailableForStaging:%@|allAvailableForStaging:%@|byGroupTotalExpectedBytes:%@", summary, v21, v8, v11, @"N"];
  }

  if (allAvailableForStagingAttributes)
  {
  }

  if (byGroupAvailableForStagingAttributes)
  {
  }

  if (updateAttributes)
  {
  }

  return v16;
}

- (id)summary
{
  v43 = *MEMORY[0x1E69E9840];
  updateAttributes = [(MAAutoAssetInfoStaging *)self updateAttributes];
  v4 = [updateAttributes safeObjectForKey:@"OSVersion" ofClass:objc_opt_class()];

  updateAttributes2 = [(MAAutoAssetInfoStaging *)self updateAttributes];
  v6 = [updateAttributes2 safeObjectForKey:@"Build" ofClass:objc_opt_class()];

  updateAttributes3 = [(MAAutoAssetInfoStaging *)self updateAttributes];
  v8 = [updateAttributes3 safeObjectForKey:@"TrainName" ofClass:objc_opt_class()];

  updateAttributes4 = [(MAAutoAssetInfoStaging *)self updateAttributes];
  v10 = [updateAttributes4 safeObjectForKey:@"RestoreVersion" ofClass:objc_opt_class()];

  updateAttributes5 = [(MAAutoAssetInfoStaging *)self updateAttributes];
  v12 = [updateAttributes5 safeObjectForKey:@"GroupNames" ofClass:objc_opt_class()];

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
          byGroupAvailableForStagingAttributes = [(MAAutoAssetInfoStaging *)self byGroupAvailableForStagingAttributes];
          v21 = [byGroupAvailableForStagingAttributes safeObjectForKey:v19 ofClass:objc_opt_class()];

          byGroupTotalExpectedBytes = [(MAAutoAssetInfoStaging *)self byGroupTotalExpectedBytes];
          v23 = [byGroupTotalExpectedBytes safeObjectForKey:v19 ofClass:objc_opt_class()];

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
    allAvailableForStagingAttributes = [(MAAutoAssetInfoStaging *)self allAvailableForStagingAttributes];
    v26 = [v27 stringWithFormat:@"staging[ALL]|osVersion:%@|build:%@|trainName:%@|restoreVersion:%@|allAvailableForStaging:%ld|totalExpectedBytes:%llu", v4, v6, v8, v10, objc_msgSend(allAvailableForStagingAttributes, "count"), -[MAAutoAssetInfoStaging totalExpectedBytes](self, "totalExpectedBytes")];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v26;
}

- (void)fullDescription:(id)description usingLogger:(id)logger
{
  v33 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if ([MEMORY[0x1E69D3880] stringIsEqual:descriptionCopy to:@"MA-AUTO-STAGE:DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE"])
  {
    v6 = @"DETERMINE-GROUPS-REQUEST";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:descriptionCopy to:@"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE_FOR_UPDATE"])
  {
    v6 = @"DETERMINE-ALL-REQUEST";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:descriptionCopy to:@"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE"])
  {
    v6 = @"DETERMINE-ALL-LEGACY-REQUEST";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:descriptionCopy to:@"MA-AUTO-STAGE:DOWNLOAD_GROUPS"])
  {
    v6 = @"DOWNLOAD-GROUPS-REQUEST";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:descriptionCopy to:@"MA-AUTO-STAGE:DOWNLOAD_ALL"])
  {
    v6 = @"DOWNLOAD-ALL-REQUEST";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:descriptionCopy to:@"MA-AUTO-STAGE(REPLY):DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE"])
  {
    v6 = @"DETERMINE-GROUPS-REPLY";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:descriptionCopy to:@"MA-AUTO-STAGE(REPLY):DETERMINE_ALL_AVAILABLE_FOR_UPDATE"])
  {
    v6 = @"DETERMINE-ALL-REPLY";
  }

  else if ([MEMORY[0x1E69D3880] stringIsEqual:descriptionCopy to:@"MA-AUTO-STAGE(REPLY):DETERMINE_ALL_AVAILABLE"])
  {
    v6 = @"DETERMINE-ALL-LEGACY-REPLY";
  }

  else
  {
    v6 = @"STAGING";
  }

  updateAttributes = [(MAAutoAssetInfoStaging *)self updateAttributes];

  if (updateAttributes)
  {
    v8 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      updateAttributes2 = [(MAAutoAssetInfoStaging *)self updateAttributes];
      v29 = 138543618;
      v30 = v6;
      v31 = 2114;
      v32 = updateAttributes2;
      _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> updateAttributes:\n%{public}@", &v29, 0x16u);
    }
  }

  byGroupAvailableForStagingAttributes = [(MAAutoAssetInfoStaging *)self byGroupAvailableForStagingAttributes];

  if (byGroupAvailableForStagingAttributes)
  {
    byGroupAvailableForStagingAttributes2 = [(MAAutoAssetInfoStaging *)self byGroupAvailableForStagingAttributes];
    v12 = [byGroupAvailableForStagingAttributes2 safeObjectForKey:@"STAGE_GROUP_REQUIRED" ofClass:objc_opt_class()];

    byGroupAvailableForStagingAttributes3 = [(MAAutoAssetInfoStaging *)self byGroupAvailableForStagingAttributes];
    v14 = [byGroupAvailableForStagingAttributes3 safeObjectForKey:@"STAGE_GROUP_OPTIONAL" ofClass:objc_opt_class()];

    if (v12 && [v12 count])
    {
      v15 = _MAClientLog(@"AutoStager");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        safeSummary = [v12 safeSummary];
        v29 = 138543618;
        v30 = v6;
        v31 = 2114;
        v32 = safeSummary;
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
        safeSummary2 = [v14 safeSummary];
        v29 = 138543618;
        v30 = v6;
        v31 = 2114;
        v32 = safeSummary2;
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

  allAvailableForStagingAttributes = [(MAAutoAssetInfoStaging *)self allAvailableForStagingAttributes];

  if (allAvailableForStagingAttributes)
  {
    v20 = _MAClientLog(@"AutoStager");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      allAvailableForStagingAttributes2 = [(MAAutoAssetInfoStaging *)self allAvailableForStagingAttributes];
      safeSummary3 = [allAvailableForStagingAttributes2 safeSummary];
      v29 = 138543618;
      v30 = v6;
      v31 = 2114;
      v32 = safeSummary3;
      _os_log_impl(&dword_197AD5000, v20, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> allAvailableForStagingAttributes:\n%{public}@", &v29, 0x16u);
    }
  }

  byGroupTotalExpectedBytes = [(MAAutoAssetInfoStaging *)self byGroupTotalExpectedBytes];

  if (byGroupTotalExpectedBytes)
  {
    v24 = _MAClientLog(@"AutoStager");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      byGroupTotalExpectedBytes2 = [(MAAutoAssetInfoStaging *)self byGroupTotalExpectedBytes];
      v29 = 138543618;
      v30 = v6;
      v31 = 2114;
      v32 = byGroupTotalExpectedBytes2;
      _os_log_impl(&dword_197AD5000, v24, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> byGroupTotalExpectedBytes:\n%{public}@", &v29, 0x16u);
    }
  }

  v26 = _MAClientLog(@"AutoStager");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    totalExpectedBytes = [(MAAutoAssetInfoStaging *)self totalExpectedBytes];
    v29 = 138543618;
    v30 = v6;
    v31 = 2048;
    v32 = totalExpectedBytes;
    _os_log_impl(&dword_197AD5000, v26, OS_LOG_TYPE_DEFAULT, "\n>%{public}@> totalExpectedBytes:%llu", &v29, 0x16u);
  }

  v28 = *MEMORY[0x1E69E9840];
}

@end