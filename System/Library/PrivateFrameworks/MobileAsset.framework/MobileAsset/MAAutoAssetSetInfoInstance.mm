@interface MAAutoAssetSetInfoInstance
- (MAAutoAssetSetInfoInstance)initWithCoder:(id)coder;
- (id)description;
- (id)initUsingClientDomain:(id)domain forClientName:(id)name withProcessName:(id)processName withProcessID:(int64_t)d forAssetSetIdentifier:(id)identifier forAtomicInstance:(id)instance comprisedOfEntries:(id)entries asEntriesWhenTargeting:(id)self0 associatingFrameworkUUID:(id)self1;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSetInfoInstance

- (id)description
{
  autoAssetEntries = [(MAAutoAssetSetInfoInstance *)self autoAssetEntries];

  entriesWhenTargeting = [(MAAutoAssetSetInfoInstance *)self entriesWhenTargeting];

  v5 = MEMORY[0x1E696AEC0];
  summary = [(MAAutoAssetSetInfoInstance *)self summary];
  frameworkInstanceUUID = [(MAAutoAssetSetInfoInstance *)self frameworkInstanceUUID];
  v8 = frameworkInstanceUUID;
  if (autoAssetEntries)
  {
    autoAssetEntries2 = [(MAAutoAssetSetInfoInstance *)self autoAssetEntries];
    v10 = [autoAssetEntries2 description];
    v11 = v10;
    if (entriesWhenTargeting)
    {
      entriesWhenTargeting2 = [(MAAutoAssetSetInfoInstance *)self entriesWhenTargeting];
      v13 = [entriesWhenTargeting2 description];
      v14 = [v5 stringWithFormat:@"%@|%@\nautoAssetEntries:\n%@\nentriesWhenTargeting:\n%@", summary, v8, v11, v13];
    }

    else
    {
      v14 = [v5 stringWithFormat:@"%@|%@\nautoAssetEntries:\n%@", summary, v8, v10];
    }

    goto LABEL_8;
  }

  if (entriesWhenTargeting)
  {
    autoAssetEntries2 = [(MAAutoAssetSetInfoInstance *)self entriesWhenTargeting];
    v15 = [autoAssetEntries2 description];
    v14 = [v5 stringWithFormat:@"%@|%@\nentriesWhenTargeting:\n%@", summary, v8, v15];

LABEL_8:
    goto LABEL_9;
  }

  v14 = [v5 stringWithFormat:@"%@|%@", summary, frameworkInstanceUUID];
LABEL_9:

  return v14;
}

- (id)summary
{
  v20 = MEMORY[0x1E696AEC0];
  clientDomainName = [(MAAutoAssetSetInfoInstance *)self clientDomainName];
  autoAssetSetClientName = [(MAAutoAssetSetInfoInstance *)self autoAssetSetClientName];
  clientProcessName = [(MAAutoAssetSetInfoInstance *)self clientProcessName];
  clientProcessID = [(MAAutoAssetSetInfoInstance *)self clientProcessID];
  assetSetIdentifier = [(MAAutoAssetSetInfoInstance *)self assetSetIdentifier];
  atomicInstance = [(MAAutoAssetSetInfoInstance *)self atomicInstance];
  if (atomicInstance)
  {
    atomicInstance2 = [(MAAutoAssetSetInfoInstance *)self atomicInstance];
  }

  else
  {
    atomicInstance2 = @"N";
  }

  autoAssetEntries = [(MAAutoAssetSetInfoInstance *)self autoAssetEntries];
  if (autoAssetEntries)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    autoAssetEntries2 = [(MAAutoAssetSetInfoInstance *)self autoAssetEntries];
    v9 = [v8 initWithFormat:@"%ld", objc_msgSend(autoAssetEntries2, "count")];
  }

  else
  {
    v9 = @"N";
  }

  entriesWhenTargeting = [(MAAutoAssetSetInfoInstance *)self entriesWhenTargeting];
  if (entriesWhenTargeting)
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    entriesWhenTargeting2 = [(MAAutoAssetSetInfoInstance *)self entriesWhenTargeting];
    v13 = [v11 initWithFormat:@"%ld", objc_msgSend(entriesWhenTargeting2, "count")];
    v17 = clientProcessID;
    v14 = clientDomainName;
    v15 = [v20 stringWithFormat:@"domainName:%@|clientName:%@|processName:%@|pid:%ld|setIdentifier:%@|atomicInstance:%@|entries:%@(WhenTargeting:%@)", clientDomainName, autoAssetSetClientName, clientProcessName, v17, assetSetIdentifier, atomicInstance2, v9, v13];
  }

  else
  {
    v18 = clientProcessID;
    v14 = clientDomainName;
    v15 = [v20 stringWithFormat:@"domainName:%@|clientName:%@|processName:%@|pid:%ld|setIdentifier:%@|atomicInstance:%@|entries:%@(WhenTargeting:%@)", clientDomainName, autoAssetSetClientName, clientProcessName, v18, assetSetIdentifier, atomicInstance2, v9, @"N"];
  }

  if (autoAssetEntries)
  {
  }

  if (atomicInstance)
  {
  }

  return v15;
}

- (id)initUsingClientDomain:(id)domain forClientName:(id)name withProcessName:(id)processName withProcessID:(int64_t)d forAssetSetIdentifier:(id)identifier forAtomicInstance:(id)instance comprisedOfEntries:(id)entries asEntriesWhenTargeting:(id)self0 associatingFrameworkUUID:(id)self1
{
  domainCopy = domain;
  nameCopy = name;
  processNameCopy = processName;
  identifierCopy = identifier;
  instanceCopy = instance;
  entriesCopy = entries;
  targetingCopy = targeting;
  iDCopy = iD;
  v29.receiver = self;
  v29.super_class = MAAutoAssetSetInfoInstance;
  v19 = [(MAAutoAssetSetInfoInstance *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_clientDomainName, domain);
    objc_storeStrong(&v20->_autoAssetSetClientName, name);
    objc_storeStrong(&v20->_clientProcessName, processName);
    v20->_clientProcessID = d;
    objc_storeStrong(&v20->_assetSetIdentifier, identifier);
    objc_storeStrong(&v20->_atomicInstance, instance);
    objc_storeStrong(&v20->_autoAssetEntries, entries);
    objc_storeStrong(&v20->_entriesWhenTargeting, targeting);
    objc_storeStrong(&v20->_frameworkInstanceUUID, iD);
  }

  return v20;
}

- (MAAutoAssetSetInfoInstance)initWithCoder:(id)coder
{
  v32[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = MAAutoAssetSetInfoInstance;
  v5 = [(MAAutoAssetSetInfoInstance *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetSetClientName"];
    autoAssetSetClientName = v5->_autoAssetSetClientName;
    v5->_autoAssetSetClientName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientProcessName"];
    clientProcessName = v5->_clientProcessName;
    v5->_clientProcessName = v10;

    v5->_clientProcessID = [coderCopy decodeIntegerForKey:@"clientProcessID"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"atomicInstance"];
    atomicInstance = v5->_atomicInstance;
    v5->_atomicInstance = v14;

    v16 = objc_alloc(MEMORY[0x1E695DFD8]);
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v32[2] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
    v18 = [v16 initWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"autoAssetEntries"];
    autoAssetEntries = v5->_autoAssetEntries;
    v5->_autoAssetEntries = v19;

    v21 = objc_alloc(MEMORY[0x1E695DFD8]);
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v31[2] = objc_opt_class();
    v31[3] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    v23 = [v21 initWithArray:v22];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"entriesWhenTargeting"];
    entriesWhenTargeting = v5->_entriesWhenTargeting;
    v5->_entriesWhenTargeting = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"frameworkInstanceUUID"];
    frameworkInstanceUUID = v5->_frameworkInstanceUUID;
    v5->_frameworkInstanceUUID = v26;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientDomainName = [(MAAutoAssetSetInfoInstance *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  autoAssetSetClientName = [(MAAutoAssetSetInfoInstance *)self autoAssetSetClientName];
  [coderCopy encodeObject:autoAssetSetClientName forKey:@"autoAssetSetClientName"];

  clientProcessName = [(MAAutoAssetSetInfoInstance *)self clientProcessName];
  [coderCopy encodeObject:clientProcessName forKey:@"clientProcessName"];

  [coderCopy encodeInteger:-[MAAutoAssetSetInfoInstance clientProcessID](self forKey:{"clientProcessID"), @"clientProcessID"}];
  assetSetIdentifier = [(MAAutoAssetSetInfoInstance *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];

  atomicInstance = [(MAAutoAssetSetInfoInstance *)self atomicInstance];
  [coderCopy encodeObject:atomicInstance forKey:@"atomicInstance"];

  autoAssetEntries = [(MAAutoAssetSetInfoInstance *)self autoAssetEntries];
  [coderCopy encodeObject:autoAssetEntries forKey:@"autoAssetEntries"];

  entriesWhenTargeting = [(MAAutoAssetSetInfoInstance *)self entriesWhenTargeting];
  [coderCopy encodeObject:entriesWhenTargeting forKey:@"entriesWhenTargeting"];

  frameworkInstanceUUID = [(MAAutoAssetSetInfoInstance *)self frameworkInstanceUUID];
  [coderCopy encodeObject:frameworkInstanceUUID forKey:@"frameworkInstanceUUID"];
}

@end