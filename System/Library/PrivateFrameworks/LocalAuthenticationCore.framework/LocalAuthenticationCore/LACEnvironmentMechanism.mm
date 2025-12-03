@interface LACEnvironmentMechanism
+ (id)environmentMechanismForUser:(unsigned int)user auditToken:(id *)token dependencies:(id)dependencies error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (LACEnvironmentMechanism)initWithAvailabilityError:(id)error localizedName:(id)name iconSystemName:(id)systemName;
- (LACEnvironmentMechanism)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LACEnvironmentMechanism

- (LACEnvironmentMechanism)initWithAvailabilityError:(id)error localizedName:(id)name iconSystemName:(id)systemName
{
  errorCopy = error;
  nameCopy = name;
  systemNameCopy = systemName;
  v15.receiver = self;
  v15.super_class = LACEnvironmentMechanism;
  v12 = [(LACEnvironmentMechanism *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_availabilityError, error);
    objc_storeStrong(&v13->_localizedName, name);
    objc_storeStrong(&v13->_iconSystemName, systemName);
  }

  return v13;
}

+ (id)environmentMechanismForUser:(unsigned int)user auditToken:(id *)token dependencies:(id)dependencies error:(id *)error
{
  if (error)
  {
    *error = [LACError errorWithCode:-1000 debugDescription:@"Call must be made on a subclass", dependencies];
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  availabilityError = [(LACEnvironmentMechanism *)self availabilityError];
  v6 = NSStringFromSelector(sel_availabilityError);
  [coderCopy encodeObject:availabilityError forKey:v6];

  localizedName = [(LACEnvironmentMechanism *)self localizedName];
  v8 = NSStringFromSelector(sel_localizedName);
  [coderCopy encodeObject:localizedName forKey:v8];

  iconSystemName = [(LACEnvironmentMechanism *)self iconSystemName];
  v9 = NSStringFromSelector(sel_iconSystemName);
  [coderCopy encodeObject:iconSystemName forKey:v9];
}

- (LACEnvironmentMechanism)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_availabilityError);
  v6 = [coderCopy decodeObjectForKey:v5];
  v7 = NSStringFromSelector(sel_localizedName);
  v8 = [coderCopy decodeObjectForKey:v7];
  v9 = NSStringFromSelector(sel_iconSystemName);
  v10 = [coderCopy decodeObjectForKey:v9];

  v11 = [(LACEnvironmentMechanism *)self initWithAvailabilityError:v6 localizedName:v8 iconSystemName:v10];
  return v11;
}

- (id)description
{
  descriptionDetails = [(LACEnvironmentMechanism *)self descriptionDetails];
  availabilityError = [(LACEnvironmentMechanism *)self availabilityError];
  if ([LACError error:availabilityError hasCode:-1004])
  {
    v5 = @"usable";
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    availabilityError2 = [(LACEnvironmentMechanism *)self availabilityError];
    domain = [availabilityError2 domain];
    availabilityError3 = [(LACEnvironmentMechanism *)self availabilityError];
    v5 = [v6 stringWithFormat:@"%@ error %d", domain, objc_msgSend(availabilityError3, "code")];
  }

  v10 = MEMORY[0x1E696AEC0];
  localizedName = [(LACEnvironmentMechanism *)self localizedName];
  v12 = [descriptionDetails componentsJoinedByString:{@", "}];
  v13 = [v10 stringWithFormat:@"<'%@' %@ (%@)>", localizedName, v5, v12];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      availabilityError = [(LACEnvironmentMechanism *)self availabilityError];
      availabilityError2 = [(LACEnvironmentMechanism *)v5 availabilityError];
      v8 = availabilityError2;
      if (availabilityError == availabilityError2)
      {
      }

      else
      {
        availabilityError3 = [(LACEnvironmentMechanism *)self availabilityError];
        availabilityError4 = [(LACEnvironmentMechanism *)v5 availabilityError];
        v11 = [availabilityError3 isEqual:availabilityError4];

        if (!v11)
        {
          goto LABEL_11;
        }
      }

      localizedName = [(LACEnvironmentMechanism *)self localizedName];
      localizedName2 = [(LACEnvironmentMechanism *)v5 localizedName];
      v15 = localizedName2;
      if (localizedName == localizedName2)
      {
      }

      else
      {
        localizedName3 = [(LACEnvironmentMechanism *)self localizedName];
        localizedName4 = [(LACEnvironmentMechanism *)v5 localizedName];
        v18 = [localizedName3 isEqualToString:localizedName4];

        if (!v18)
        {
LABEL_11:
          v12 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      iconSystemName = [(LACEnvironmentMechanism *)self iconSystemName];
      iconSystemName2 = [(LACEnvironmentMechanism *)v5 iconSystemName];
      if (iconSystemName == iconSystemName2)
      {
        v12 = 1;
      }

      else
      {
        iconSystemName3 = [(LACEnvironmentMechanism *)self iconSystemName];
        iconSystemName4 = [(LACEnvironmentMechanism *)v5 iconSystemName];
        v12 = [iconSystemName3 isEqualToString:iconSystemName4];
      }

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_18:

  return v12 & 1;
}

@end