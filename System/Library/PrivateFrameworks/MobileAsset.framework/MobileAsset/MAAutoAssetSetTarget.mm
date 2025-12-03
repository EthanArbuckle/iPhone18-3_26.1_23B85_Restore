@interface MAAutoAssetSetTarget
- (BOOL)isEqual:(id)equal;
- (MAAutoAssetSetTarget)initWithCoder:(id)coder;
- (id)copy;
- (id)initForMinTargetOSVersion:(id)version toMaxTargetOSVersion:(id)sVersion asEntriesWhenTargeting:(id)targeting;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSetTarget

- (id)initForMinTargetOSVersion:(id)version toMaxTargetOSVersion:(id)sVersion asEntriesWhenTargeting:(id)targeting
{
  versionCopy = version;
  sVersionCopy = sVersion;
  targetingCopy = targeting;
  v15.receiver = self;
  v15.super_class = MAAutoAssetSetTarget;
  v12 = [(MAAutoAssetSetTarget *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_minTargetOSVersion, version);
    objc_storeStrong(p_isa + 2, sVersion);
    objc_storeStrong(p_isa + 3, targeting);
  }

  return p_isa;
}

- (MAAutoAssetSetTarget)initWithCoder:(id)coder
{
  v18[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MAAutoAssetSetTarget;
  v5 = [(MAAutoAssetSetTarget *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minTargetOSVersion"];
    minTargetOSVersion = v5->_minTargetOSVersion;
    v5->_minTargetOSVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxTargetOSVersion"];
    maxTargetOSVersion = v5->_maxTargetOSVersion;
    v5->_maxTargetOSVersion = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
    v12 = [v10 initWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"autoAssetEntries"];
    autoAssetEntries = v5->_autoAssetEntries;
    v5->_autoAssetEntries = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  minTargetOSVersion = [(MAAutoAssetSetTarget *)self minTargetOSVersion];
  [coderCopy encodeObject:minTargetOSVersion forKey:@"minTargetOSVersion"];

  maxTargetOSVersion = [(MAAutoAssetSetTarget *)self maxTargetOSVersion];
  [coderCopy encodeObject:maxTargetOSVersion forKey:@"maxTargetOSVersion"];

  autoAssetEntries = [(MAAutoAssetSetTarget *)self autoAssetEntries];
  [coderCopy encodeObject:autoAssetEntries forKey:@"autoAssetEntries"];
}

- (id)copy
{
  v3 = [MAAutoAssetSetTarget alloc];
  minTargetOSVersion = [(MAAutoAssetSetTarget *)self minTargetOSVersion];
  maxTargetOSVersion = [(MAAutoAssetSetTarget *)self maxTargetOSVersion];
  autoAssetEntries = [(MAAutoAssetSetTarget *)self autoAssetEntries];
  v7 = [(MAAutoAssetSetTarget *)v3 initForMinTargetOSVersion:minTargetOSVersion toMaxTargetOSVersion:maxTargetOSVersion asEntriesWhenTargeting:autoAssetEntries];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(minTargetOSVersion) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      minTargetOSVersion = [(MAAutoAssetSetTarget *)self minTargetOSVersion];
      if (!minTargetOSVersion)
      {
LABEL_21:

        goto LABEL_22;
      }

      maxTargetOSVersion = [(MAAutoAssetSetTarget *)self maxTargetOSVersion];
      if (maxTargetOSVersion)
      {
        v8 = maxTargetOSVersion;
        autoAssetEntries = [(MAAutoAssetSetTarget *)self autoAssetEntries];
        if (autoAssetEntries)
        {
          v10 = autoAssetEntries;
          v11 = MEMORY[0x1E69D3880];
          minTargetOSVersion2 = [(MAAutoAssetSetTarget *)self minTargetOSVersion];
          minTargetOSVersion3 = [(MAAutoAssetSetTarget *)v5 minTargetOSVersion];
          if ([v11 stringIsEqual:minTargetOSVersion2 to:minTargetOSVersion3])
          {
            v29 = MEMORY[0x1E69D3880];
            maxTargetOSVersion2 = [(MAAutoAssetSetTarget *)self maxTargetOSVersion];
            maxTargetOSVersion3 = [(MAAutoAssetSetTarget *)v5 maxTargetOSVersion];
            v16 = v29;
            v30 = maxTargetOSVersion2;
            if ([v16 stringIsEqual:maxTargetOSVersion2 to:maxTargetOSVersion3])
            {
              autoAssetEntries2 = [(MAAutoAssetSetTarget *)v5 autoAssetEntries];

              if (autoAssetEntries2)
              {
                autoAssetEntries3 = [(MAAutoAssetSetTarget *)self autoAssetEntries];
                v19 = [autoAssetEntries3 count];

                autoAssetEntries4 = [(MAAutoAssetSetTarget *)v5 autoAssetEntries];
                v21 = [autoAssetEntries4 count];

                if (v21 == v19)
                {
                  v22 = 0;
                  v23 = v19 & ~(v19 >> 63);
                  do
                  {
                    LOBYTE(minTargetOSVersion) = v23 == v22;
                    if (v23 == v22)
                    {
                      break;
                    }

                    autoAssetEntries5 = [(MAAutoAssetSetTarget *)self autoAssetEntries];
                    v25 = [autoAssetEntries5 objectAtIndex:v22];

                    autoAssetEntries6 = [(MAAutoAssetSetTarget *)v5 autoAssetEntries];
                    v27 = [autoAssetEntries6 objectAtIndex:v22];

                    ++v22;
                    LOBYTE(autoAssetEntries6) = [v27 isEqual:v25];
                  }

                  while ((autoAssetEntries6 & 1) != 0);
                  goto LABEL_21;
                }
              }

              goto LABEL_20;
            }
          }
        }
      }

LABEL_20:
      LOBYTE(minTargetOSVersion) = 0;
      goto LABEL_21;
    }

    LOBYTE(minTargetOSVersion) = 0;
  }

LABEL_22:

  return minTargetOSVersion;
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  minTargetOSVersion = [(MAAutoAssetSetTarget *)self minTargetOSVersion];
  maxTargetOSVersion = [(MAAutoAssetSetTarget *)self maxTargetOSVersion];
  autoAssetEntries = [(MAAutoAssetSetTarget *)self autoAssetEntries];
  v7 = [v3 stringWithFormat:@"targetOSVersion:%@..%@|autoAssetEntries:%ld", minTargetOSVersion, maxTargetOSVersion, objc_msgSend(autoAssetEntries, "count")];

  return v7;
}

@end