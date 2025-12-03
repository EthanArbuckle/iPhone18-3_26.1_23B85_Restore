@interface FBSSceneIdentity
+ (id)identityForIdentifier:(id)identifier workspaceIdentifier:(id)workspaceIdentifier internalWorkspaceIdentifier:(id)internalWorkspaceIdentifier;
- (BOOL)isEqual:(id)equal;
- (FBSSceneIdentity)initWithBSXPCCoder:(id)coder;
- (FBSSceneIdentity)initWithCoder:(id)coder;
- (NSString)description;
- (NSString)internalWorkspaceIdentifier;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

+ (id)identityForIdentifier:(id)identifier workspaceIdentifier:(id)workspaceIdentifier internalWorkspaceIdentifier:(id)internalWorkspaceIdentifier
{
  if (identifier)
  {
    internalWorkspaceIdentifierCopy = internalWorkspaceIdentifier;
    workspaceIdentifierCopy = workspaceIdentifier;
    identifierCopy = identifier;
    v11 = objc_alloc_init(self);
    v12 = [identifierCopy copy];

    v13 = v11[1];
    v11[1] = v12;

    v14 = [workspaceIdentifierCopy copy];
    v15 = v11[2];
    v11[2] = v14;

    v16 = [internalWorkspaceIdentifierCopy copy];
    v17 = v11[3];
    v11[3] = v16;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    if (equalCopy)
    {
      BSEqualStrings();
    }

    v5 = 0;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"i"];
  [coderCopy encodeObject:self->_workspaceIdentifier forKey:@"w"];
  [coderCopy encodeObject:self->_internalWorkspaceIdentifier forKey:@"iw"];
}

- (FBSSceneIdentity)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FBSSceneIdentity *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeStringForKey:@"i"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeStringForKey:@"w"];
    workspaceIdentifier = v5->_workspaceIdentifier;
    v5->_workspaceIdentifier = v8;

    v10 = [coderCopy decodeStringForKey:@"iw"];
    internalWorkspaceIdentifier = v5->_internalWorkspaceIdentifier;
    v5->_internalWorkspaceIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"i"];
  [coderCopy encodeObject:self->_workspaceIdentifier forKey:@"w"];
  [coderCopy encodeObject:self->_internalWorkspaceIdentifier forKey:@"iw"];
}

- (FBSSceneIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FBSSceneIdentity *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"w"];
    workspaceIdentifier = v5->_workspaceIdentifier;
    v5->_workspaceIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iw"];
    internalWorkspaceIdentifier = v5->_internalWorkspaceIdentifier;
    v5->_internalWorkspaceIdentifier = v10;
  }

  return v5;
}

@end