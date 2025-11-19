@interface DMCComposedIdentifier
+ (id)newComposedIdentifier:(id)a3;
+ (id)newComposedIdentifierWithBundleID:(id)a3;
+ (id)newComposedIdentifierWithBundleID:(id)a3 requirement:(id)a4;
+ (id)newComposedIdentifierWithBundleID:(id)a3 teamID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToComposedIdentifier:(id)a3;
- (DMCComposedIdentifier)initWithBundleID:(id)a3 teamID:(id)a4 requirement:(id)a5;
- (id)composedIdentifier;
- (id)designatedRequirement;
@end

@implementation DMCComposedIdentifier

+ (id)newComposedIdentifier:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 rangeOfString:@" "];
  v6 = v5;
  v7 = v3;
  v8 = v7;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    v10 = 0;
    v11 = v7;
  }

  else
  {
    v11 = [v7 substringToIndex:v4];

    v10 = [v8 substringFromIndex:v4 + v6];
    if ([v10 hasPrefix:{@"(", "hasSuffix:", @")"}])
    {
      v12 = [v10 substringWithRange:{1, objc_msgSend(v10, "length") - 2}];
      v9 = 0;
    }

    else
    {
      if (![v10 hasPrefix:@"{"] || !objc_msgSend(v10, "hasSuffix:", @"}"))
      {
        v16 = *DMCLogObjects();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v20 = 138543362;
          v21 = v8;
          _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_ERROR, "Invalid composed identifier %{public}@", &v20, 0xCu);
        }

        goto LABEL_25;
      }

      v9 = [v10 substringWithRange:{1, objc_msgSend(v10, "length") - 2}];
      v12 = 0;
    }

    v10 = v12;
  }

  if (![v11 length])
  {
    v17 = *DMCLogObjects();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 138543362;
      v21 = v8;
LABEL_23:
      _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_ERROR, "Invalid composed identifier %{public}@", &v20, 0xCu);
    }

LABEL_24:

LABEL_25:
    v15 = 0;
    goto LABEL_26;
  }

  v13 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"(){}"];
  v14 = [v11 rangeOfCharacterFromSet:v13];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = *DMCLogObjects();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 138543362;
      v21 = v8;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (v10 && ![v10 length])
  {
    v17 = *DMCLogObjects();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v20 = 138543362;
    v21 = v8;
    goto LABEL_23;
  }

  if (v9 && ![v9 length])
  {
    v17 = *DMCLogObjects();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v20 = 138543362;
    v21 = v8;
    goto LABEL_23;
  }

  v15 = [[DMCComposedIdentifier alloc] initWithBundleID:v11 teamID:v10 requirement:v9];

LABEL_26:
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)newComposedIdentifierWithBundleID:(id)a3
{
  v3 = a3;
  v4 = [[DMCComposedIdentifier alloc] initWithBundleID:v3 teamID:0 requirement:0];

  return v4;
}

+ (id)newComposedIdentifierWithBundleID:(id)a3 teamID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[DMCComposedIdentifier alloc] initWithBundleID:v6 teamID:v5 requirement:0];

  return v7;
}

+ (id)newComposedIdentifierWithBundleID:(id)a3 requirement:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[DMCComposedIdentifier alloc] initWithBundleID:v6 teamID:0 requirement:v5];

  return v7;
}

- (DMCComposedIdentifier)initWithBundleID:(id)a3 teamID:(id)a4 requirement:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = DMCComposedIdentifier;
  v12 = [(DMCComposedIdentifier *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleID, a3);
    objc_storeStrong(&v13->_teamID, a4);
    objc_storeStrong(&v13->_requirement, a5);
  }

  return v13;
}

- (id)composedIdentifier
{
  v3 = [(DMCComposedIdentifier *)self teamID];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(DMCComposedIdentifier *)self bundleID];
    v6 = [(DMCComposedIdentifier *)self teamID];
    [v4 stringWithFormat:@"%@ (%@)", v5, v6];
    v9 = LABEL_5:;

    goto LABEL_6;
  }

  v7 = [(DMCComposedIdentifier *)self requirement];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v5 = [(DMCComposedIdentifier *)self bundleID];
    v6 = [(DMCComposedIdentifier *)self requirement];
    [v8 stringWithFormat:@"%@ {%@}", v5, v6];
    goto LABEL_5;
  }

  v9 = [(DMCComposedIdentifier *)self bundleID];
LABEL_6:

  return v9;
}

- (id)designatedRequirement
{
  v3 = [(DMCComposedIdentifier *)self requirement];

  if (v3)
  {
    v4 = [(DMCComposedIdentifier *)self requirement];
  }

  else
  {
    v5 = [(DMCComposedIdentifier *)self teamID];

    v6 = MEMORY[0x1E696AEC0];
    v7 = [(DMCComposedIdentifier *)self bundleID];
    v8 = v7;
    if (v5)
    {
      v9 = [(DMCComposedIdentifier *)self teamID];
      v4 = [v6 stringWithFormat:@"anchor apple generic and identifier %@ and certificate leaf[subject.OU] = %@", v8, v9];
    }

    else
    {
      v4 = [v6 stringWithFormat:@"anchor apple and identifier %@", v7];
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DMCComposedIdentifier *)self isEqualToComposedIdentifier:v4];
  }

  return v5;
}

- (BOOL)isEqualToComposedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DMCComposedIdentifier *)self composedIdentifier];
  v6 = [v4 composedIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

@end