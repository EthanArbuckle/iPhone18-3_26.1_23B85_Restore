@interface MAAutoAssetSetPolicy
- (MAAutoAssetSetPolicy)init;
- (MAAutoAssetSetPolicy)initWithCoder:(id)coder;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSetPolicy

- (id)summary
{
  additionalPolicyControl = [(MAAutoAssetSetPolicy *)self additionalPolicyControl];
  v4 = @"(w/additional)";
  if (!additionalPolicyControl)
  {
    v4 = &stru_1F0C1B388;
  }

  v5 = v4;

  v6 = @"N";
  if ([(MAAutoAssetSetPolicy *)self lockInhibitsEmergencyRemoval]&& [(MAAutoAssetSetPolicy *)self supportingShortTermLocks]&& [(MAAutoAssetSetPolicy *)self allowCheckDownloadOnBattery]&& [(MAAutoAssetSetPolicy *)self allowCheckDownloadWhenBatteryLow]&& [(MAAutoAssetSetPolicy *)self allowCheckDownloadWhenCPUHigh]&& [(MAAutoAssetSetPolicy *)self allowCheckDownloadOverExpensive]&& [(MAAutoAssetSetPolicy *)self allowCheckDownloadOverCellular]&& [(MAAutoAssetSetPolicy *)self blockCheckDownload])
  {
    v7 = @"allOtherBool:Y";
  }

  else if ([(MAAutoAssetSetPolicy *)self lockInhibitsEmergencyRemoval]|| [(MAAutoAssetSetPolicy *)self supportingShortTermLocks]|| [(MAAutoAssetSetPolicy *)self allowCheckDownloadOnBattery]|| [(MAAutoAssetSetPolicy *)self allowCheckDownloadWhenBatteryLow]|| [(MAAutoAssetSetPolicy *)self allowCheckDownloadWhenCPUHigh]|| [(MAAutoAssetSetPolicy *)self allowCheckDownloadOverExpensive]|| [(MAAutoAssetSetPolicy *)self allowCheckDownloadOverCellular]|| [(MAAutoAssetSetPolicy *)self blockCheckDownload])
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    if ([(MAAutoAssetSetPolicy *)self lockInhibitsEmergencyRemoval])
    {
      v8 = @"Y";
    }

    else
    {
      v8 = @"N";
    }

    v19 = v8;
    if ([(MAAutoAssetSetPolicy *)self supportingShortTermLocks])
    {
      v9 = @"Y";
    }

    else
    {
      v9 = @"N";
    }

    if ([(MAAutoAssetSetPolicy *)self allowCheckDownloadOnBattery])
    {
      v10 = @"Y";
    }

    else
    {
      v10 = @"N";
    }

    if ([(MAAutoAssetSetPolicy *)self allowCheckDownloadWhenBatteryLow])
    {
      v11 = @"Y";
    }

    else
    {
      v11 = @"N";
    }

    if ([(MAAutoAssetSetPolicy *)self allowCheckDownloadWhenCPUHigh])
    {
      v12 = @"Y";
    }

    else
    {
      v12 = @"N";
    }

    if ([(MAAutoAssetSetPolicy *)self allowCheckDownloadOverExpensive])
    {
      v13 = @"Y";
    }

    else
    {
      v13 = @"N";
    }

    if ([(MAAutoAssetSetPolicy *)self allowCheckDownloadOverCellular])
    {
      v6 = @"Y";
    }

    if ([(MAAutoAssetSetPolicy *)self blockCheckDownload])
    {
      v14 = @"Y";
    }

    else
    {
      v14 = @"N";
    }

    v7 = [v20 initWithFormat:@"|lockInhibitsRemoval:%@|supportingShortTermLocks:%@|allowCheckDownload(OnBattery:%@, WhenBatteryLow:%@, WhenCPUHigh:%@, OverExpensive:%@, OverCellular:%@)|blockCheckDownload:%@|", v19, v9, v10, v11, v12, v13, v6, v14];
  }

  else
  {
    v7 = @"allOtherBool:N";
  }

  v15 = MEMORY[0x1E696AEC0];
  if ([(MAAutoAssetSetPolicy *)self userInitiated])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v17 = [v15 stringWithFormat:@"user:%@|%@%@", v16, v7, v5];

  return v17;
}

- (MAAutoAssetSetPolicy)init
{
  v6.receiver = self;
  v6.super_class = MAAutoAssetSetPolicy;
  v2 = [(MAAutoAssetSetPolicy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_blockCheckDownload = 0;
    *&v2->_userInitiated = 0;
    additionalPolicyControl = v2->_additionalPolicyControl;
    v2->_additionalPolicyControl = 0;
  }

  return v3;
}

- (MAAutoAssetSetPolicy)initWithCoder:(id)coder
{
  v14[8] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MAAutoAssetSetPolicy;
  v5 = [(MAAutoAssetSetPolicy *)&v13 init];
  if (v5)
  {
    v5->_userInitiated = [coderCopy decodeBoolForKey:@"userInitiated"];
    v5->_lockInhibitsEmergencyRemoval = [coderCopy decodeBoolForKey:@"lockInhibitsEmergencyRemoval"];
    v5->_supportingShortTermLocks = [coderCopy decodeBoolForKey:@"supportingShortTermLocks"];
    v5->_allowCheckDownloadOnBattery = [coderCopy decodeBoolForKey:@"allowCheckDownloadOnBattery"];
    v5->_allowCheckDownloadWhenBatteryLow = [coderCopy decodeBoolForKey:@"allowCheckDownloadWhenBatteryLow"];
    v5->_allowCheckDownloadWhenCPUHigh = [coderCopy decodeBoolForKey:@"allowCheckDownloadWhenCPUHigh"];
    v5->_allowCheckDownloadOverExpensive = [coderCopy decodeBoolForKey:@"allowCheckDownloadOverExpensive"];
    v5->_allowCheckDownloadOverCellular = [coderCopy decodeBoolForKey:@"allowCheckDownloadOverCellular"];
    v5->_blockCheckDownload = [coderCopy decodeBoolForKey:@"blockCheckDownload"];
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v14[3] = objc_opt_class();
    v14[4] = objc_opt_class();
    v14[5] = objc_opt_class();
    v14[6] = objc_opt_class();
    v14[7] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:8];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"additionalPolicyControl"];
    additionalPolicyControl = v5->_additionalPolicyControl;
    v5->_additionalPolicyControl = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[MAAutoAssetSetPolicy userInitiated](self forKey:{"userInitiated"), @"userInitiated"}];
  [coderCopy encodeBool:-[MAAutoAssetSetPolicy lockInhibitsEmergencyRemoval](self forKey:{"lockInhibitsEmergencyRemoval"), @"lockInhibitsEmergencyRemoval"}];
  [coderCopy encodeBool:-[MAAutoAssetSetPolicy supportingShortTermLocks](self forKey:{"supportingShortTermLocks"), @"supportingShortTermLocks"}];
  [coderCopy encodeBool:-[MAAutoAssetSetPolicy allowCheckDownloadOnBattery](self forKey:{"allowCheckDownloadOnBattery"), @"allowCheckDownloadOnBattery"}];
  [coderCopy encodeBool:-[MAAutoAssetSetPolicy allowCheckDownloadWhenBatteryLow](self forKey:{"allowCheckDownloadWhenBatteryLow"), @"allowCheckDownloadWhenBatteryLow"}];
  [coderCopy encodeBool:-[MAAutoAssetSetPolicy allowCheckDownloadWhenCPUHigh](self forKey:{"allowCheckDownloadWhenCPUHigh"), @"allowCheckDownloadWhenCPUHigh"}];
  [coderCopy encodeBool:-[MAAutoAssetSetPolicy allowCheckDownloadOverExpensive](self forKey:{"allowCheckDownloadOverExpensive"), @"allowCheckDownloadOverExpensive"}];
  [coderCopy encodeBool:-[MAAutoAssetSetPolicy allowCheckDownloadOverCellular](self forKey:{"allowCheckDownloadOverCellular"), @"allowCheckDownloadOverCellular"}];
  [coderCopy encodeBool:-[MAAutoAssetSetPolicy blockCheckDownload](self forKey:{"blockCheckDownload"), @"blockCheckDownload"}];
  additionalPolicyControl = [(MAAutoAssetSetPolicy *)self additionalPolicyControl];
  [coderCopy encodeObject:additionalPolicyControl forKey:@"additionalPolicyControl"];
}

- (id)description
{
  additionalPolicyControl = [(MAAutoAssetSetPolicy *)self additionalPolicyControl];

  if (additionalPolicyControl)
  {
    v4 = MEMORY[0x1E696AEC0];
    summary = [(MAAutoAssetSetPolicy *)self summary];
    additionalPolicyControl2 = [(MAAutoAssetSetPolicy *)self additionalPolicyControl];
    v7 = [additionalPolicyControl2 description];
    summary2 = [v4 stringWithFormat:@"%@|additional:\n%@", summary, v7];
  }

  else
  {
    summary2 = [(MAAutoAssetSetPolicy *)self summary];
  }

  return summary2;
}

@end