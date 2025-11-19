@interface FBSSceneIdentity
+ (id)identityForIdentifier:(id)a3 workspaceIdentifier:(id)a4 internalWorkspaceIdentifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (FBSSceneIdentity)initWithBSXPCCoder:(id)a3;
- (FBSSceneIdentity)initWithCoder:(id)a3;
- (NSString)description;
- (NSString)internalWorkspaceIdentifier;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FBSSceneIdentity

- (NSString)description
{
  workspaceIdentifier = self->_workspaceIdentifier;
  internalWorkspaceIdentifier = self->_internalWorkspaceIdentifier;
  if (internalWorkspaceIdentifier)
  {
    identifier = self->_identifier;
    if (workspaceIdentifier)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@):%@", workspaceIdentifier, internalWorkspaceIdentifier, identifier];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@):%@", internalWorkspaceIdentifier, identifier, v7];
    }

    goto LABEL_7;
  }

  if (workspaceIdentifier)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", workspaceIdentifier, self->_identifier, v7];
    v5 = LABEL_7:;
    goto LABEL_8;
  }

  v5 = self->_identifier;
LABEL_8:

  return v5;
}

- (NSString)internalWorkspaceIdentifier
{
  internalWorkspaceIdentifier = self->_internalWorkspaceIdentifier;
  if (!internalWorkspaceIdentifier)
  {
    internalWorkspaceIdentifier = self->_workspaceIdentifier;
  }

  return internalWorkspaceIdentifier;
}

+ (id)identityForIdentifier:(id)a3 workspaceIdentifier:(id)a4 internalWorkspaceIdentifier:(id)a5
{
  if (a3)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = objc_alloc_init(a1);
    v12 = [v10 copy];

    v13 = v11[1];
    v11[1] = v12;

    v14 = [v9 copy];
    v15 = v11[2];
    v11[2] = v14;

    v16 = [v8 copy];
    v17 = v11[3];
    v11[3] = v16;
  }

  else
  {
    v11 = 0;
  }

  return v11;
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
    if (v4)
    {
      BSEqualStrings();
    }

    v5 = 0;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"i"];
  [v5 encodeObject:self->_workspaceIdentifier forKey:@"w"];
  [v5 encodeObject:self->_internalWorkspaceIdentifier forKey:@"iw"];
}

- (FBSSceneIdentity)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneIdentity *)self init];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"i"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeStringForKey:@"w"];
    workspaceIdentifier = v5->_workspaceIdentifier;
    v5->_workspaceIdentifier = v8;

    v10 = [v4 decodeStringForKey:@"iw"];
    internalWorkspaceIdentifier = v5->_internalWorkspaceIdentifier;
    v5->_internalWorkspaceIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"i"];
  [v5 encodeObject:self->_workspaceIdentifier forKey:@"w"];
  [v5 encodeObject:self->_internalWorkspaceIdentifier forKey:@"iw"];
}

- (FBSSceneIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneIdentity *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"w"];
    workspaceIdentifier = v5->_workspaceIdentifier;
    v5->_workspaceIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iw"];
    internalWorkspaceIdentifier = v5->_internalWorkspaceIdentifier;
    v5->_internalWorkspaceIdentifier = v10;
  }

  return v5;
}

@end