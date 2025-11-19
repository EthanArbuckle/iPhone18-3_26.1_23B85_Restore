@interface SGSocialProfile
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSGSocialProfile:(id)a3;
- (SGSocialProfile)initWithCoder:(id)a3;
- (SGSocialProfile)initWithUsername:(id)a3 userIdentifier:(id)a4 bundleIdentifier:(id)a5 displayName:(id)a6 service:(id)a7 teamIdentifier:(id)a8 label:(id)a9 extractionInfo:(id)a10 recordId:(id)a11;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGSocialProfile

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SGLabeledObject *)self label];
  v5 = [v4 length];
  if (v5)
  {
    v6 = [(SGLabeledObject *)self label];
  }

  else
  {
    v6 = @"unlabeled";
  }

  displayName = self->_displayName;
  service = self->_service;
  v9 = [v3 initWithFormat:@"%@/[%@ %@:%@:%@:%@:%@]", v6, displayName, self->_bundleIdentifier, self->_username, self->_userIdentifier, service, self->_teamIdentifier];
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

- (BOOL)isEqualToSGSocialProfile:(id)a3
{
  v4 = a3;
  if (![(SGLabeledObject *)self isEqualToLabeledObject:v4])
  {
    goto LABEL_20;
  }

  v5 = self->_username;
  v6 = v5;
  if (v5 == v4[5])
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
  if (v8 == v4[6])
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
  if (v11 == v4[7])
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
  if (v14 == v4[8])
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
  if (v17 == v4[9])
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
  if (v22 == v4[10])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSocialProfile *)self isEqualToSGSocialProfile:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGSocialProfile;
  v4 = a3;
  [(SGLabeledObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_username forKey:{@"username", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_userIdentifier forKey:@"userIdentifier"];
  [v4 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v4 encodeObject:self->_displayName forKey:@"displayName"];
  [v4 encodeObject:self->_service forKey:@"service"];
  [v4 encodeObject:self->_teamIdentifier forKey:@"teamIdentifier"];
}

- (SGSocialProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SGSocialProfile;
  v5 = [(SGLabeledObject *)&v27 initWithCoder:v4];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"username"];
    username = v5->_username;
    v5->_username = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"userIdentifier"];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
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
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v17;

    v19 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"service"];
    service = v5->_service;
    v5->_service = v20;

    v22 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"teamIdentifier"];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v23;
  }

  return v5;
}

- (SGSocialProfile)initWithUsername:(id)a3 userIdentifier:(id)a4 bundleIdentifier:(id)a5 displayName:(id)a6 service:(id)a7 teamIdentifier:(id)a8 label:(id)a9 extractionInfo:(id)a10 recordId:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v37.receiver = self;
  v37.super_class = SGSocialProfile;
  v23 = [(SGLabeledObject *)&v37 initWithLabel:a9 extractionInfo:a10 recordId:a11];
  if (v23)
  {
    v24 = [v17 copy];
    username = v23->_username;
    v23->_username = v24;

    v26 = [v18 copy];
    userIdentifier = v23->_userIdentifier;
    v23->_userIdentifier = v26;

    v28 = [v19 copy];
    bundleIdentifier = v23->_bundleIdentifier;
    v23->_bundleIdentifier = v28;

    v30 = [v20 copy];
    displayName = v23->_displayName;
    v23->_displayName = v30;

    v32 = [v21 copy];
    service = v23->_service;
    v23->_service = v32;

    v34 = [v22 copy];
    teamIdentifier = v23->_teamIdentifier;
    v23->_teamIdentifier = v34;
  }

  return v23;
}

@end