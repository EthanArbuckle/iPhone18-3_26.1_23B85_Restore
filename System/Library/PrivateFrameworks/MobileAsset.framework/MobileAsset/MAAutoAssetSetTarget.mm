@interface MAAutoAssetSetTarget
- (BOOL)isEqual:(id)a3;
- (MAAutoAssetSetTarget)initWithCoder:(id)a3;
- (id)copy;
- (id)initForMinTargetOSVersion:(id)a3 toMaxTargetOSVersion:(id)a4 asEntriesWhenTargeting:(id)a5;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSetTarget

- (id)initForMinTargetOSVersion:(id)a3 toMaxTargetOSVersion:(id)a4 asEntriesWhenTargeting:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MAAutoAssetSetTarget;
  v12 = [(MAAutoAssetSetTarget *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_minTargetOSVersion, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (MAAutoAssetSetTarget)initWithCoder:(id)a3
{
  v18[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MAAutoAssetSetTarget;
  v5 = [(MAAutoAssetSetTarget *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minTargetOSVersion"];
    minTargetOSVersion = v5->_minTargetOSVersion;
    v5->_minTargetOSVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxTargetOSVersion"];
    maxTargetOSVersion = v5->_maxTargetOSVersion;
    v5->_maxTargetOSVersion = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
    v12 = [v10 initWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"autoAssetEntries"];
    autoAssetEntries = v5->_autoAssetEntries;
    v5->_autoAssetEntries = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetSetTarget *)self minTargetOSVersion];
  [v4 encodeObject:v5 forKey:@"minTargetOSVersion"];

  v6 = [(MAAutoAssetSetTarget *)self maxTargetOSVersion];
  [v4 encodeObject:v6 forKey:@"maxTargetOSVersion"];

  v7 = [(MAAutoAssetSetTarget *)self autoAssetEntries];
  [v4 encodeObject:v7 forKey:@"autoAssetEntries"];
}

- (id)copy
{
  v3 = [MAAutoAssetSetTarget alloc];
  v4 = [(MAAutoAssetSetTarget *)self minTargetOSVersion];
  v5 = [(MAAutoAssetSetTarget *)self maxTargetOSVersion];
  v6 = [(MAAutoAssetSetTarget *)self autoAssetEntries];
  v7 = [(MAAutoAssetSetTarget *)v3 initForMinTargetOSVersion:v4 toMaxTargetOSVersion:v5 asEntriesWhenTargeting:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MAAutoAssetSetTarget *)self minTargetOSVersion];
      if (!v6)
      {
LABEL_21:

        goto LABEL_22;
      }

      v7 = [(MAAutoAssetSetTarget *)self maxTargetOSVersion];
      if (v7)
      {
        v8 = v7;
        v9 = [(MAAutoAssetSetTarget *)self autoAssetEntries];
        if (v9)
        {
          v10 = v9;
          v11 = MEMORY[0x1E69D3880];
          v12 = [(MAAutoAssetSetTarget *)self minTargetOSVersion];
          v13 = [(MAAutoAssetSetTarget *)v5 minTargetOSVersion];
          if ([v11 stringIsEqual:v12 to:v13])
          {
            v29 = MEMORY[0x1E69D3880];
            v14 = [(MAAutoAssetSetTarget *)self maxTargetOSVersion];
            v15 = [(MAAutoAssetSetTarget *)v5 maxTargetOSVersion];
            v16 = v29;
            v30 = v14;
            if ([v16 stringIsEqual:v14 to:v15])
            {
              v17 = [(MAAutoAssetSetTarget *)v5 autoAssetEntries];

              if (v17)
              {
                v18 = [(MAAutoAssetSetTarget *)self autoAssetEntries];
                v19 = [v18 count];

                v20 = [(MAAutoAssetSetTarget *)v5 autoAssetEntries];
                v21 = [v20 count];

                if (v21 == v19)
                {
                  v22 = 0;
                  v23 = v19 & ~(v19 >> 63);
                  do
                  {
                    LOBYTE(v6) = v23 == v22;
                    if (v23 == v22)
                    {
                      break;
                    }

                    v24 = [(MAAutoAssetSetTarget *)self autoAssetEntries];
                    v25 = [v24 objectAtIndex:v22];

                    v26 = [(MAAutoAssetSetTarget *)v5 autoAssetEntries];
                    v27 = [v26 objectAtIndex:v22];

                    ++v22;
                    LOBYTE(v26) = [v27 isEqual:v25];
                  }

                  while ((v26 & 1) != 0);
                  goto LABEL_21;
                }
              }

              goto LABEL_20;
            }
          }
        }
      }

LABEL_20:
      LOBYTE(v6) = 0;
      goto LABEL_21;
    }

    LOBYTE(v6) = 0;
  }

LABEL_22:

  return v6;
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MAAutoAssetSetTarget *)self minTargetOSVersion];
  v5 = [(MAAutoAssetSetTarget *)self maxTargetOSVersion];
  v6 = [(MAAutoAssetSetTarget *)self autoAssetEntries];
  v7 = [v3 stringWithFormat:@"targetOSVersion:%@..%@|autoAssetEntries:%ld", v4, v5, objc_msgSend(v6, "count")];

  return v7;
}

@end