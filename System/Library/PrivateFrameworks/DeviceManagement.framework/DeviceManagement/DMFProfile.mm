@interface DMFProfile
- (BOOL)isEqual:(id)equal;
- (DMFProfile)initWithCoder:(id)coder;
- (DMFProfile)initWithUUID:(id)d type:(unint64_t)type identifier:(id)identifier profileVersion:(int64_t)version displayName:(id)name organization:(id)organization profileDescription:(id)description isManaged:(BOOL)self0 isLocked:(BOOL)self1 hasRemovalPasscode:(BOOL)self2 isEncrypted:(BOOL)self3 signerCertificates:(id)self4 payloads:(id)self5 restrictions:(id)self6;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFProfile

- (DMFProfile)initWithUUID:(id)d type:(unint64_t)type identifier:(id)identifier profileVersion:(int64_t)version displayName:(id)name organization:(id)organization profileDescription:(id)description isManaged:(BOOL)self0 isLocked:(BOOL)self1 hasRemovalPasscode:(BOOL)self2 isEncrypted:(BOOL)self3 signerCertificates:(id)self4 payloads:(id)self5 restrictions:(id)self6
{
  dCopy = d;
  identifierCopy = identifier;
  nameCopy = name;
  organizationCopy = organization;
  descriptionCopy = description;
  certificatesCopy = certificates;
  payloadsCopy = payloads;
  restrictionsCopy = restrictions;
  v40.receiver = self;
  v40.super_class = DMFProfile;
  v26 = [(DMFProfile *)&v40 init];
  if (v26)
  {
    v27 = [dCopy copy];
    UUID = v26->_UUID;
    v26->_UUID = v27;

    v26->_type = type;
    v29 = [identifierCopy copy];
    identifier = v26->_identifier;
    v26->_identifier = v29;

    v26->_profileVersion = version;
    objc_storeStrong(&v26->_displayName, name);
    v31 = [organizationCopy copy];
    organization = v26->_organization;
    v26->_organization = v31;

    v33 = [descriptionCopy copy];
    profileDescription = v26->_profileDescription;
    v26->_profileDescription = v33;

    v26->_isManaged = managed;
    v26->_isLocked = locked;
    v26->_hasRemovalPasscode = passcode;
    v26->_isEncrypted = encrypted;
    objc_storeStrong(&v26->_signerCertificates, certificates);
    objc_storeStrong(&v26->_payloads, payloads);
    objc_storeStrong(&v26->_restrictions, restrictions);
  }

  return v26;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = objc_alloc(objc_opt_class());
  uUID = [(DMFProfile *)self UUID];
  type = [(DMFProfile *)self type];
  identifier = [(DMFProfile *)self identifier];
  profileVersion = [(DMFProfile *)self profileVersion];
  displayName = [(DMFProfile *)self displayName];
  organization = [(DMFProfile *)self organization];
  profileDescription = [(DMFProfile *)self profileDescription];
  isManaged = [(DMFProfile *)self isManaged];
  isLocked = [(DMFProfile *)self isLocked];
  hasRemovalPasscode = [(DMFProfile *)self hasRemovalPasscode];
  isEncrypted = [(DMFProfile *)self isEncrypted];
  signerCertificates = [(DMFProfile *)self signerCertificates];
  payloads = [(DMFProfile *)self payloads];
  restrictions = [(DMFProfile *)self restrictions];
  BYTE3(v16) = isEncrypted;
  BYTE2(v16) = hasRemovalPasscode;
  BYTE1(v16) = isLocked;
  LOBYTE(v16) = isManaged;
  v14 = [v21 initWithUUID:uUID type:type identifier:identifier profileVersion:profileVersion displayName:displayName organization:organization profileDescription:profileDescription isManaged:v16 isLocked:signerCertificates hasRemovalPasscode:payloads isEncrypted:restrictions signerCertificates:? payloads:? restrictions:?];

  return v14;
}

- (DMFProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v52.receiver = self;
  v52.super_class = DMFProfile;
  v5 = [(DMFProfile *)&v52 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v9 unsignedIntegerValue];

    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"profileVersion"];
    v5->_profileVersion = [v13 integerValue];

    v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v15;

    v17 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"organization"];
    organization = v5->_organization;
    v5->_organization = v18;

    v20 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"profileDescription"];
    profileDescription = v5->_profileDescription;
    v5->_profileDescription = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isManaged"];
    v5->_isManaged = [v23 BOOLValue];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isLocked"];
    v5->_isLocked = [v24 BOOLValue];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasRemovalPasscode"];
    v5->_hasRemovalPasscode = [v25 BOOLValue];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isEncrypted"];
    v5->_isEncrypted = [v26 BOOLValue];

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"signerCertificates"];
    signerCertificates = v5->_signerCertificates;
    v5->_signerCertificates = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"payloads"];
    payloads = v5->_payloads;
    v5->_payloads = v35;

    v51 = MEMORY[0x1E695DFD8];
    v50 = objc_opt_class();
    v49 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v45 = [v51 setWithObjects:{v50, v49, v37, v38, v39, v40, v41, v42, v43, v44, objc_opt_class(), 0}];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"restrictions"];
    restrictions = v5->_restrictions;
    v5->_restrictions = v46;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(DMFProfile *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"UUID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFProfile type](self, "type")}];
  [coderCopy encodeObject:v6 forKey:@"type"];

  identifier = [(DMFProfile *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[DMFProfile profileVersion](self, "profileVersion")}];
  [coderCopy encodeObject:v8 forKey:@"profileVersion"];

  displayName = [(DMFProfile *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  organization = [(DMFProfile *)self organization];
  [coderCopy encodeObject:organization forKey:@"organization"];

  profileDescription = [(DMFProfile *)self profileDescription];
  [coderCopy encodeObject:profileDescription forKey:@"profileDescription"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFProfile isManaged](self, "isManaged")}];
  [coderCopy encodeObject:v12 forKey:@"isManaged"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFProfile isLocked](self, "isLocked")}];
  [coderCopy encodeObject:v13 forKey:@"isLocked"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFProfile hasRemovalPasscode](self, "hasRemovalPasscode")}];
  [coderCopy encodeObject:v14 forKey:@"hasRemovalPasscode"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFProfile isEncrypted](self, "isEncrypted")}];
  [coderCopy encodeObject:v15 forKey:@"isEncrypted"];

  signerCertificates = [(DMFProfile *)self signerCertificates];
  [coderCopy encodeObject:signerCertificates forKey:@"signerCertificates"];

  payloads = [(DMFProfile *)self payloads];
  [coderCopy encodeObject:payloads forKey:@"payloads"];

  restrictions = [(DMFProfile *)self restrictions];
  [coderCopy encodeObject:restrictions forKey:@"restrictions"];
}

- (unint64_t)hash
{
  uUID = [(DMFProfile *)self UUID];
  v4 = [uUID hash];
  v5 = [(DMFProfile *)self type]^ v4;
  identifier = [(DMFProfile *)self identifier];
  v7 = [identifier hash];
  v8 = v5 ^ v7 ^ [(DMFProfile *)self profileVersion];
  displayName = [(DMFProfile *)self displayName];
  v10 = [displayName hash];
  organization = [(DMFProfile *)self organization];
  v12 = v10 ^ [organization hash];
  profileDescription = [(DMFProfile *)self profileDescription];
  v14 = v8 ^ v12 ^ [profileDescription hash];
  isManaged = [(DMFProfile *)self isManaged];
  v16 = isManaged ^ [(DMFProfile *)self isLocked];
  v17 = v14 ^ v16 ^ [(DMFProfile *)self hasRemovalPasscode];
  isEncrypted = [(DMFProfile *)self isEncrypted];
  signerCertificates = [(DMFProfile *)self signerCertificates];
  v20 = isEncrypted ^ [signerCertificates hash];
  payloads = [(DMFProfile *)self payloads];
  v22 = v20 ^ [payloads hash];
  restrictions = [(DMFProfile *)self restrictions];
  v24 = v22 ^ [restrictions hash];

  return v17 ^ v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v43 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uUID = [(DMFProfile *)self UUID];
      uUID2 = [(DMFProfile *)v5 UUID];
      v8 = uUID;
      v9 = uUID2;
      if ((!(v8 | v9) || (v10 = [v8 isEqual:v9], v9, v8, v10)) && (v11 = -[DMFProfile type](self, "type"), v11 == -[DMFProfile type](v5, "type")))
      {
        identifier = [(DMFProfile *)self identifier];
        identifier2 = [(DMFProfile *)v5 identifier];
        v14 = identifier;
        v15 = identifier2;
        if (v14 | v15 && (v16 = [v14 isEqual:v15], v15, v14, !v16))
        {
          v43 = 0;
        }

        else
        {
          displayName = [(DMFProfile *)self displayName];
          displayName2 = [(DMFProfile *)v5 displayName];
          v19 = displayName;
          v58 = displayName2;
          if (v19 | v58 && (v20 = [v19 isEqual:v58], v58, v19, !v20))
          {
            v43 = 0;
          }

          else
          {
            v56 = v19;
            organization = [(DMFProfile *)self organization];
            organization2 = [(DMFProfile *)v5 organization];
            v23 = organization;
            v57 = organization2;
            if (v23 | v57 && (v24 = [v23 isEqual:v57], v57, v23, !v24))
            {
              v43 = 0;
              v19 = v56;
            }

            else
            {
              v53 = v23;
              profileDescription = [(DMFProfile *)self profileDescription];
              profileDescription2 = [(DMFProfile *)v5 profileDescription];
              v27 = profileDescription;
              v54 = profileDescription2;
              v55 = v27;
              if (v27 | v54 && (v28 = [v27 isEqual:v54], v54, v55, !v28))
              {
                v43 = 0;
                v19 = v56;
              }

              else
              {
                signerCertificates = [(DMFProfile *)self signerCertificates];
                signerCertificates2 = [(DMFProfile *)v5 signerCertificates];
                v31 = signerCertificates;
                v32 = signerCertificates2;
                if (v31 | v32 && (v33 = [v31 isEqual:v32], v32, v31, !v33))
                {
                  v43 = 0;
                  v19 = v56;
                }

                else
                {
                  v50 = v32;
                  payloads = [(DMFProfile *)self payloads];
                  payloads2 = [(DMFProfile *)v5 payloads];
                  v36 = payloads;
                  v51 = payloads2;
                  v52 = v36;
                  if (v36 | v51 && (v37 = [v36 isEqual:v51], v51, v52, !v37))
                  {
                    v43 = 0;
                    v19 = v56;
                    v32 = v50;
                  }

                  else
                  {
                    profileVersion = [(DMFProfile *)self profileVersion];
                    v32 = v50;
                    if (profileVersion == [(DMFProfile *)v5 profileVersion])
                    {
                      isManaged = [(DMFProfile *)self isManaged];
                      if (isManaged == [(DMFProfile *)v5 isManaged]&& (v40 = [(DMFProfile *)self isLocked], v40 == [(DMFProfile *)v5 isLocked]) && (v41 = [(DMFProfile *)self hasRemovalPasscode], v41 == [(DMFProfile *)v5 hasRemovalPasscode]) && (v42 = [(DMFProfile *)self isEncrypted], v42 == [(DMFProfile *)v5 isEncrypted]))
                      {
                        restrictions = [(DMFProfile *)self restrictions];
                        restrictions2 = [(DMFProfile *)v5 restrictions];
                        v19 = v56;
                        v49 = restrictions;
                        if (restrictions | restrictions2)
                        {
                          v48 = restrictions2;
                          v47 = [restrictions isEqual:restrictions2];
                          restrictions2 = v48;
                          v43 = v47;
                        }

                        else
                        {
                          v43 = 1;
                        }
                      }

                      else
                      {
                        v43 = 0;
                        v19 = v56;
                      }
                    }

                    else
                    {
                      v43 = 0;
                      v19 = v56;
                    }
                  }
                }
              }

              v23 = v53;
            }
          }
        }
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
    }
  }

  return v43;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\n\tVersion      : %zd", objc_opt_class(), self, -[DMFProfile profileVersion](self, "profileVersion")];
  displayName = [(DMFProfile *)self displayName];
  v5 = [displayName length];

  if (v5)
  {
    displayName2 = [(DMFProfile *)self displayName];
    [v3 appendFormat:@"\n\tDisplay Name : “%@”", displayName2];
  }

  profileDescription = [(DMFProfile *)self profileDescription];
  v8 = [profileDescription length];

  if (v8)
  {
    profileDescription2 = [(DMFProfile *)self profileDescription];
    [v3 appendFormat:@"\n\tDescription  : “%@”", profileDescription2];
  }

  if ([(DMFProfile *)self type])
  {
    v10 = @"\n\tType         : User";
  }

  else
  {
    v10 = @"\n\tType         : System";
  }

  [v3 appendFormat:v10];
  identifier = [(DMFProfile *)self identifier];
  v12 = [identifier length];

  if (v12)
  {
    identifier2 = [(DMFProfile *)self identifier];
    [v3 appendFormat:@"\n\tIdentifier   : %@", identifier2];
  }

  uUID = [(DMFProfile *)self UUID];
  v15 = [uUID length];

  if (v15)
  {
    uUID2 = [(DMFProfile *)self UUID];
    [v3 appendFormat:@"\n\tUUID         : %@", uUID2];
  }

  organization = [(DMFProfile *)self organization];
  v18 = [organization length];

  if (v18)
  {
    organization2 = [(DMFProfile *)self organization];
    [v3 appendFormat:@"\n\tOrganization : %@", organization2];
  }

  if ([(DMFProfile *)self isLocked])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  [v3 appendFormat:@"\n\tLocked       : %@", v20];
  if ([(DMFProfile *)self hasRemovalPasscode])
  {
    [v3 appendFormat:@"\n\tRemoval passcode present"];
  }

  if ([(DMFProfile *)self isEncrypted])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v3 appendFormat:@"\n\tEncrypted    : %@", v21];
  signerCertificates = [(DMFProfile *)self signerCertificates];
  if ([signerCertificates count])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  [v3 appendFormat:@"\n\tSigned       : %@", v23];

  restrictions = [(DMFProfile *)self restrictions];
  [v3 appendFormat:@"\n\tRestrictions : %@", restrictions];

  [v3 appendString:@"\n}>"];
  v25 = [v3 copy];

  return v25;
}

@end