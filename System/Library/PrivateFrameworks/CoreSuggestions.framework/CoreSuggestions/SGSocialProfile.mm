@interface SGSocialProfile
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSGSocialProfile:(id)profile;
- (SGSocialProfile)initWithCoder:(id)coder;
- (SGSocialProfile)initWithUsername:(id)username userIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier displayName:(id)name service:(id)service teamIdentifier:(id)teamIdentifier label:(id)label extractionInfo:(id)self0 recordId:(id)self1;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGSocialProfile

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  label = [(SGLabeledObject *)self label];
  v5 = [label length];
  if (v5)
  {
    label2 = [(SGLabeledObject *)self label];
  }

  else
  {
    label2 = @"unlabeled";
  }

  displayName = self->_displayName;
  service = self->_service;
  v9 = [v3 initWithFormat:@"%@/[%@ %@:%@:%@:%@:%@]", label2, displayName, self->_bundleIdentifier, self->_username, self->_userIdentifier, service, self->_teamIdentifier];
  if (v5)
  {
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleIdentifier hash];
  p_userIdentifier = &self->_userIdentifier;
  if (![(NSString *)self->_userIdentifier length])
  {
    p_userIdentifier = &self->_username;
  }

  return [(NSString *)*p_userIdentifier hash]- v3 + 32 * v3;
}

- (BOOL)isEqualToSGSocialProfile:(id)profile
{
  profileCopy = profile;
  if (![(SGLabeledObject *)self isEqualToLabeledObject:profileCopy])
  {
    goto LABEL_20;
  }

  v5 = self->_username;
  v6 = v5;
  if (v5 == profileCopy[5])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v8 = self->_userIdentifier;
  v9 = v8;
  if (v8 == profileCopy[6])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v11 = self->_bundleIdentifier;
  v12 = v11;
  if (v11 == profileCopy[7])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v14 = self->_displayName;
  v15 = v14;
  if (v14 == profileCopy[8])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v17 = self->_service;
  v18 = v17;
  if (v17 == profileCopy[9])
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
LABEL_20:
      v20 = 0;
      goto LABEL_21;
    }
  }

  v22 = self->_teamIdentifier;
  v23 = v22;
  if (v22 == profileCopy[10])
  {
    v20 = 1;
  }

  else
  {
    v20 = [(NSString *)v22 isEqual:?];
  }

LABEL_21:
  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSocialProfile *)self isEqualToSGSocialProfile:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGSocialProfile;
  coderCopy = coder;
  [(SGLabeledObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_username forKey:{@"username", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_userIdentifier forKey:@"userIdentifier"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_service forKey:@"service"];
  [coderCopy encodeObject:self->_teamIdentifier forKey:@"teamIdentifier"];
}

- (SGSocialProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = SGSocialProfile;
  v5 = [(SGLabeledObject *)&v27 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"username"];
    username = v5->_username;
    v5->_username = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"userIdentifier"];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    if (!v12)
    {
      v13 = sgLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA729000, v13, OS_LOG_TYPE_FAULT, "Nil bundle id used in SGSocialProfile", buf, 2u);
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        abort();
      }

      v12 = &stru_1F385B250;
    }

    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = &v12->isa;
    v15 = v12;

    v16 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v17;

    v19 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"service"];
    service = v5->_service;
    v5->_service = v20;

    v22 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"teamIdentifier"];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v23;
  }

  return v5;
}

- (SGSocialProfile)initWithUsername:(id)username userIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier displayName:(id)name service:(id)service teamIdentifier:(id)teamIdentifier label:(id)label extractionInfo:(id)self0 recordId:(id)self1
{
  usernameCopy = username;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  serviceCopy = service;
  teamIdentifierCopy = teamIdentifier;
  v37.receiver = self;
  v37.super_class = SGSocialProfile;
  v23 = [(SGLabeledObject *)&v37 initWithLabel:label extractionInfo:info recordId:id];
  if (v23)
  {
    v24 = [usernameCopy copy];
    username = v23->_username;
    v23->_username = v24;

    v26 = [identifierCopy copy];
    userIdentifier = v23->_userIdentifier;
    v23->_userIdentifier = v26;

    v28 = [bundleIdentifierCopy copy];
    bundleIdentifier = v23->_bundleIdentifier;
    v23->_bundleIdentifier = v28;

    v30 = [nameCopy copy];
    displayName = v23->_displayName;
    v23->_displayName = v30;

    v32 = [serviceCopy copy];
    service = v23->_service;
    v23->_service = v32;

    v34 = [teamIdentifierCopy copy];
    teamIdentifier = v23->_teamIdentifier;
    v23->_teamIdentifier = v34;
  }

  return v23;
}

@end