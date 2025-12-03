@interface MAAutoAssetPolicy
- (MAAutoAssetPolicy)init;
- (MAAutoAssetPolicy)initWithCoder:(id)coder;
- (id)description;
- (id)newSummaryDictionary;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetPolicy

- (MAAutoAssetPolicy)init
{
  v6.receiver = self;
  v6.super_class = MAAutoAssetPolicy;
  v2 = [(MAAutoAssetPolicy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2[8] = 0;
    *(v2 + 9) = 0;
    v2[13] = 0;
    *(v2 + 2) = -1;
    *(v2 + 3) = 0;
    v4 = *(v2 + 5);
    *(v2 + 4) = 0;
    *(v2 + 5) = 0;
  }

  return v3;
}

- (MAAutoAssetPolicy)initWithCoder:(id)coder
{
  v14[8] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MAAutoAssetPolicy;
  v5 = [(MAAutoAssetPolicy *)&v13 init];
  if (v5)
  {
    v5->_userInitiated = [coderCopy decodeBoolForKey:@"userInitiated"];
    v5->_waitForNewestSecs = [coderCopy decodeIntegerForKey:@"waitForNewestSecs"];
    v5->_interestAcrossTermination = [coderCopy decodeBoolForKey:@"interestAcrossTermination"];
    v5->_lockAcrossTermination = [coderCopy decodeBoolForKey:@"lockAcrossTermination"];
    v5->_lockAcrossReboot = [coderCopy decodeBoolForKey:@"lockAcrossReboot"];
    v5->_lockAcrossOTAUpdate = [coderCopy decodeBoolForKey:@"lockAcrossOTAUpdate"];
    v5->_lockInhibitsEmergencyRemoval = [coderCopy decodeBoolForKey:@"lockInhibitsEmergencyRemoval"];
    v5->_unlockAfterUsageSecs = [coderCopy decodeIntegerForKey:@"unlockAfterUsageSecs"];
    v5->_preventGarbageCollectionSecs = [coderCopy decodeIntegerForKey:@"preventGarbageCollectionSecs"];
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
  [coderCopy encodeBool:-[MAAutoAssetPolicy userInitiated](self forKey:{"userInitiated"), @"userInitiated"}];
  [coderCopy encodeInteger:-[MAAutoAssetPolicy waitForNewestSecs](self forKey:{"waitForNewestSecs"), @"waitForNewestSecs"}];
  [coderCopy encodeBool:-[MAAutoAssetPolicy interestAcrossTermination](self forKey:{"interestAcrossTermination"), @"interestAcrossTermination"}];
  [coderCopy encodeBool:-[MAAutoAssetPolicy lockAcrossTermination](self forKey:{"lockAcrossTermination"), @"lockAcrossTermination"}];
  [coderCopy encodeBool:-[MAAutoAssetPolicy lockAcrossReboot](self forKey:{"lockAcrossReboot"), @"lockAcrossReboot"}];
  [coderCopy encodeBool:-[MAAutoAssetPolicy lockAcrossOTAUpdate](self forKey:{"lockAcrossOTAUpdate"), @"lockAcrossOTAUpdate"}];
  [coderCopy encodeBool:-[MAAutoAssetPolicy lockInhibitsEmergencyRemoval](self forKey:{"lockInhibitsEmergencyRemoval"), @"lockInhibitsEmergencyRemoval"}];
  [coderCopy encodeInteger:-[MAAutoAssetPolicy unlockAfterUsageSecs](self forKey:{"unlockAfterUsageSecs"), @"unlockAfterUsageSecs"}];
  [coderCopy encodeInteger:-[MAAutoAssetPolicy preventGarbageCollectionSecs](self forKey:{"preventGarbageCollectionSecs"), @"preventGarbageCollectionSecs"}];
  additionalPolicyControl = [(MAAutoAssetPolicy *)self additionalPolicyControl];
  [coderCopy encodeObject:additionalPolicyControl forKey:@"additionalPolicyControl"];
}

- (id)description
{
  additionalPolicyControl = [(MAAutoAssetPolicy *)self additionalPolicyControl];

  if (additionalPolicyControl)
  {
    v4 = MEMORY[0x1E696AEC0];
    summary = [(MAAutoAssetPolicy *)self summary];
    additionalPolicyControl2 = [(MAAutoAssetPolicy *)self additionalPolicyControl];
    summary2 = [v4 stringWithFormat:@"%@|additional:\n%@", summary, additionalPolicyControl2];
  }

  else
  {
    summary2 = [(MAAutoAssetPolicy *)self summary];
  }

  return summary2;
}

- (id)summary
{
  additionalPolicyControl = [(MAAutoAssetPolicy *)self additionalPolicyControl];
  v4 = @"(w/additional)";
  if (!additionalPolicyControl)
  {
    v4 = &stru_1F0C1B388;
  }

  v5 = v4;

  if ([(MAAutoAssetPolicy *)self interestAcrossTermination]&& [(MAAutoAssetPolicy *)self lockAcrossTermination]&& [(MAAutoAssetPolicy *)self lockAcrossReboot]&& [(MAAutoAssetPolicy *)self lockAcrossOTAUpdate]&& [(MAAutoAssetPolicy *)self lockInhibitsEmergencyRemoval])
  {
    v6 = @"allOtherBool:Y";
  }

  else if ([(MAAutoAssetPolicy *)self interestAcrossTermination]|| [(MAAutoAssetPolicy *)self lockAcrossTermination]|| [(MAAutoAssetPolicy *)self lockAcrossReboot]|| [(MAAutoAssetPolicy *)self lockAcrossOTAUpdate]|| [(MAAutoAssetPolicy *)self lockInhibitsEmergencyRemoval])
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    if ([(MAAutoAssetPolicy *)self interestAcrossTermination])
    {
      v8 = @"Y";
    }

    else
    {
      v8 = @"N";
    }

    if ([(MAAutoAssetPolicy *)self lockAcrossTermination])
    {
      v9 = @"Y";
    }

    else
    {
      v9 = @"N";
    }

    if ([(MAAutoAssetPolicy *)self lockAcrossReboot])
    {
      v10 = @"Y";
    }

    else
    {
      v10 = @"N";
    }

    if ([(MAAutoAssetPolicy *)self lockAcrossOTAUpdate])
    {
      v11 = @"Y";
    }

    else
    {
      v11 = @"N";
    }

    if ([(MAAutoAssetPolicy *)self lockInhibitsEmergencyRemoval])
    {
      v12 = @"Y";
    }

    else
    {
      v12 = @"N";
    }

    v6 = [v7 initWithFormat:@"interestAcrossTerm:%@|lock(AcrossTerm:%@|AcrossReboot:%@|AcrossOTA:%@|InhibitsRemoval:%@)", v8, v9, v10, v11, v12];
  }

  else
  {
    v6 = @"allOtherBool:N";
  }

  v13 = MEMORY[0x1E696AEC0];
  if ([(MAAutoAssetPolicy *)self userInitiated])
  {
    v14 = @"Y";
  }

  else
  {
    v14 = @"N";
  }

  v15 = [v13 stringWithFormat:@"user:%@|waitNewestSecs:%ld|%@|unlockAfterSecs:%ld|preventGCSecs:%ld%@", v14, -[MAAutoAssetPolicy waitForNewestSecs](self, "waitForNewestSecs"), v6, -[MAAutoAssetPolicy unlockAfterUsageSecs](self, "unlockAfterUsageSecs"), -[MAAutoAssetPolicy preventGarbageCollectionSecs](self, "preventGarbageCollectionSecs"), v5];

  return v15;
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(MAAutoAssetPolicy *)self userInitiated])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 setSafeObject:v4 forKey:@"userInitiated"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetPolicy waitForNewestSecs](self, "waitForNewestSecs")}];
  [v3 setSafeObject:v5 forKey:@"waitForNewestSecs"];

  if ([(MAAutoAssetPolicy *)self interestAcrossTermination])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 setSafeObject:v6 forKey:@"interestAcrossTermination"];
  if ([(MAAutoAssetPolicy *)self lockAcrossTermination])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 setSafeObject:v7 forKey:@"lockAcrossTermination"];
  if ([(MAAutoAssetPolicy *)self lockAcrossReboot])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 setSafeObject:v8 forKey:@"lockAcrossReboot"];
  if ([(MAAutoAssetPolicy *)self lockAcrossOTAUpdate])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 setSafeObject:v9 forKey:@"lockAcrossOTAUpdate"];
  if ([(MAAutoAssetPolicy *)self lockInhibitsEmergencyRemoval])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v3 setSafeObject:v10 forKey:@"lockInhibitsEmergencyRemoval"];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetPolicy unlockAfterUsageSecs](self, "unlockAfterUsageSecs")}];
  [v3 setSafeObject:v11 forKey:@"unlockAfterUsageSecs"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetPolicy preventGarbageCollectionSecs](self, "preventGarbageCollectionSecs")}];
  [v3 setSafeObject:v12 forKey:@"preventGarbageCollectionSecs"];

  additionalPolicyControl = [(MAAutoAssetPolicy *)self additionalPolicyControl];
  if (additionalPolicyControl)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v3 setSafeObject:v14 forKey:@"additionalPolicyControl"];

  return v3;
}

@end