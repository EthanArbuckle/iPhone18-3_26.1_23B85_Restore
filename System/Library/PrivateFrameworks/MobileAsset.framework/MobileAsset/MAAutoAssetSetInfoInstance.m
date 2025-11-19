@interface MAAutoAssetSetInfoInstance
- (MAAutoAssetSetInfoInstance)initWithCoder:(id)a3;
- (id)description;
- (id)initUsingClientDomain:(id)a3 forClientName:(id)a4 withProcessName:(id)a5 withProcessID:(int64_t)a6 forAssetSetIdentifier:(id)a7 forAtomicInstance:(id)a8 comprisedOfEntries:(id)a9 asEntriesWhenTargeting:(id)a10 associatingFrameworkUUID:(id)a11;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSetInfoInstance

- (id)description
{
  v3 = [(MAAutoAssetSetInfoInstance *)self autoAssetEntries];

  v4 = [(MAAutoAssetSetInfoInstance *)self entriesWhenTargeting];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(MAAutoAssetSetInfoInstance *)self summary];
  v7 = [(MAAutoAssetSetInfoInstance *)self frameworkInstanceUUID];
  v8 = v7;
  if (v3)
  {
    v9 = [(MAAutoAssetSetInfoInstance *)self autoAssetEntries];
    v10 = [v9 description];
    v11 = v10;
    if (v4)
    {
      v12 = [(MAAutoAssetSetInfoInstance *)self entriesWhenTargeting];
      v13 = [v12 description];
      v14 = [v5 stringWithFormat:@"%@|%@\nautoAssetEntries:\n%@\nentriesWhenTargeting:\n%@", v6, v8, v11, v13];
    }

    else
    {
      v14 = [v5 stringWithFormat:@"%@|%@\nautoAssetEntries:\n%@", v6, v8, v10];
    }

    goto LABEL_8;
  }

  if (v4)
  {
    v9 = [(MAAutoAssetSetInfoInstance *)self entriesWhenTargeting];
    v15 = [v9 description];
    v14 = [v5 stringWithFormat:@"%@|%@\nentriesWhenTargeting:\n%@", v6, v8, v15];

LABEL_8:
    goto LABEL_9;
  }

  v14 = [v5 stringWithFormat:@"%@|%@", v6, v7];
LABEL_9:

  return v14;
}

- (id)summary
{
  v20 = MEMORY[0x1E696AEC0];
  v21 = [(MAAutoAssetSetInfoInstance *)self clientDomainName];
  v23 = [(MAAutoAssetSetInfoInstance *)self autoAssetSetClientName];
  v22 = [(MAAutoAssetSetInfoInstance *)self clientProcessName];
  v3 = [(MAAutoAssetSetInfoInstance *)self clientProcessID];
  v4 = [(MAAutoAssetSetInfoInstance *)self assetSetIdentifier];
  v5 = [(MAAutoAssetSetInfoInstance *)self atomicInstance];
  if (v5)
  {
    v6 = [(MAAutoAssetSetInfoInstance *)self atomicInstance];
  }

  else
  {
    v6 = @"N";
  }

  v7 = [(MAAutoAssetSetInfoInstance *)self autoAssetEntries];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v19 = [(MAAutoAssetSetInfoInstance *)self autoAssetEntries];
    v9 = [v8 initWithFormat:@"%ld", objc_msgSend(v19, "count")];
  }

  else
  {
    v9 = @"N";
  }

  v10 = [(MAAutoAssetSetInfoInstance *)self entriesWhenTargeting];
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [(MAAutoAssetSetInfoInstance *)self entriesWhenTargeting];
    v13 = [v11 initWithFormat:@"%ld", objc_msgSend(v12, "count")];
    v17 = v3;
    v14 = v21;
    v15 = [v20 stringWithFormat:@"domainName:%@|clientName:%@|processName:%@|pid:%ld|setIdentifier:%@|atomicInstance:%@|entries:%@(WhenTargeting:%@)", v21, v23, v22, v17, v4, v6, v9, v13];
  }

  else
  {
    v18 = v3;
    v14 = v21;
    v15 = [v20 stringWithFormat:@"domainName:%@|clientName:%@|processName:%@|pid:%ld|setIdentifier:%@|atomicInstance:%@|entries:%@(WhenTargeting:%@)", v21, v23, v22, v18, v4, v6, v9, @"N"];
  }

  if (v7)
  {
  }

  if (v5)
  {
  }

  return v15;
}

- (id)initUsingClientDomain:(id)a3 forClientName:(id)a4 withProcessName:(id)a5 withProcessID:(int64_t)a6 forAssetSetIdentifier:(id)a7 forAtomicInstance:(id)a8 comprisedOfEntries:(id)a9 asEntriesWhenTargeting:(id)a10 associatingFrameworkUUID:(id)a11
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v17 = a10;
  v18 = a11;
  v29.receiver = self;
  v29.super_class = MAAutoAssetSetInfoInstance;
  v19 = [(MAAutoAssetSetInfoInstance *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_clientDomainName, a3);
    objc_storeStrong(&v20->_autoAssetSetClientName, a4);
    objc_storeStrong(&v20->_clientProcessName, a5);
    v20->_clientProcessID = a6;
    objc_storeStrong(&v20->_assetSetIdentifier, a7);
    objc_storeStrong(&v20->_atomicInstance, a8);
    objc_storeStrong(&v20->_autoAssetEntries, a9);
    objc_storeStrong(&v20->_entriesWhenTargeting, a10);
    objc_storeStrong(&v20->_frameworkInstanceUUID, a11);
  }

  return v20;
}

- (MAAutoAssetSetInfoInstance)initWithCoder:(id)a3
{
  v32[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = MAAutoAssetSetInfoInstance;
  v5 = [(MAAutoAssetSetInfoInstance *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetSetClientName"];
    autoAssetSetClientName = v5->_autoAssetSetClientName;
    v5->_autoAssetSetClientName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientProcessName"];
    clientProcessName = v5->_clientProcessName;
    v5->_clientProcessName = v10;

    v5->_clientProcessID = [v4 decodeIntegerForKey:@"clientProcessID"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"atomicInstance"];
    atomicInstance = v5->_atomicInstance;
    v5->_atomicInstance = v14;

    v16 = objc_alloc(MEMORY[0x1E695DFD8]);
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v32[2] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
    v18 = [v16 initWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"autoAssetEntries"];
    autoAssetEntries = v5->_autoAssetEntries;
    v5->_autoAssetEntries = v19;

    v21 = objc_alloc(MEMORY[0x1E695DFD8]);
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v31[2] = objc_opt_class();
    v31[3] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    v23 = [v21 initWithArray:v22];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"entriesWhenTargeting"];
    entriesWhenTargeting = v5->_entriesWhenTargeting;
    v5->_entriesWhenTargeting = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frameworkInstanceUUID"];
    frameworkInstanceUUID = v5->_frameworkInstanceUUID;
    v5->_frameworkInstanceUUID = v26;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetSetInfoInstance *)self clientDomainName];
  [v4 encodeObject:v5 forKey:@"clientDomainName"];

  v6 = [(MAAutoAssetSetInfoInstance *)self autoAssetSetClientName];
  [v4 encodeObject:v6 forKey:@"autoAssetSetClientName"];

  v7 = [(MAAutoAssetSetInfoInstance *)self clientProcessName];
  [v4 encodeObject:v7 forKey:@"clientProcessName"];

  [v4 encodeInteger:-[MAAutoAssetSetInfoInstance clientProcessID](self forKey:{"clientProcessID"), @"clientProcessID"}];
  v8 = [(MAAutoAssetSetInfoInstance *)self assetSetIdentifier];
  [v4 encodeObject:v8 forKey:@"assetSetIdentifier"];

  v9 = [(MAAutoAssetSetInfoInstance *)self atomicInstance];
  [v4 encodeObject:v9 forKey:@"atomicInstance"];

  v10 = [(MAAutoAssetSetInfoInstance *)self autoAssetEntries];
  [v4 encodeObject:v10 forKey:@"autoAssetEntries"];

  v11 = [(MAAutoAssetSetInfoInstance *)self entriesWhenTargeting];
  [v4 encodeObject:v11 forKey:@"entriesWhenTargeting"];

  v12 = [(MAAutoAssetSetInfoInstance *)self frameworkInstanceUUID];
  [v4 encodeObject:v12 forKey:@"frameworkInstanceUUID"];
}

@end