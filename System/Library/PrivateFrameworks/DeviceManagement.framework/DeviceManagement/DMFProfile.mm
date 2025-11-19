@interface DMFProfile
- (BOOL)isEqual:(id)a3;
- (DMFProfile)initWithCoder:(id)a3;
- (DMFProfile)initWithUUID:(id)a3 type:(unint64_t)a4 identifier:(id)a5 profileVersion:(int64_t)a6 displayName:(id)a7 organization:(id)a8 profileDescription:(id)a9 isManaged:(BOOL)a10 isLocked:(BOOL)a11 hasRemovalPasscode:(BOOL)a12 isEncrypted:(BOOL)a13 signerCertificates:(id)a14 payloads:(id)a15 restrictions:(id)a16;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFProfile

- (DMFProfile)initWithUUID:(id)a3 type:(unint64_t)a4 identifier:(id)a5 profileVersion:(int64_t)a6 displayName:(id)a7 organization:(id)a8 profileDescription:(id)a9 isManaged:(BOOL)a10 isLocked:(BOOL)a11 hasRemovalPasscode:(BOOL)a12 isEncrypted:(BOOL)a13 signerCertificates:(id)a14 payloads:(id)a15 restrictions:(id)a16
{
  v39 = a3;
  v20 = a5;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a14;
  v38 = a15;
  v25 = a16;
  v40.receiver = self;
  v40.super_class = DMFProfile;
  v26 = [(DMFProfile *)&v40 init];
  if (v26)
  {
    v27 = [v39 copy];
    UUID = v26->_UUID;
    v26->_UUID = v27;

    v26->_type = a4;
    v29 = [v20 copy];
    identifier = v26->_identifier;
    v26->_identifier = v29;

    v26->_profileVersion = a6;
    objc_storeStrong(&v26->_displayName, a7);
    v31 = [v22 copy];
    organization = v26->_organization;
    v26->_organization = v31;

    v33 = [v23 copy];
    profileDescription = v26->_profileDescription;
    v26->_profileDescription = v33;

    v26->_isManaged = a10;
    v26->_isLocked = a11;
    v26->_hasRemovalPasscode = a12;
    v26->_isEncrypted = a13;
    objc_storeStrong(&v26->_signerCertificates, a14);
    objc_storeStrong(&v26->_payloads, a15);
    objc_storeStrong(&v26->_restrictions, a16);
  }

  return v26;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = objc_alloc(objc_opt_class());
  v20 = [(DMFProfile *)self UUID];
  v19 = [(DMFProfile *)self type];
  v18 = [(DMFProfile *)self identifier];
  v17 = [(DMFProfile *)self profileVersion];
  v4 = [(DMFProfile *)self displayName];
  v5 = [(DMFProfile *)self organization];
  v6 = [(DMFProfile *)self profileDescription];
  v7 = [(DMFProfile *)self isManaged];
  v8 = [(DMFProfile *)self isLocked];
  v9 = [(DMFProfile *)self hasRemovalPasscode];
  v10 = [(DMFProfile *)self isEncrypted];
  v11 = [(DMFProfile *)self signerCertificates];
  v12 = [(DMFProfile *)self payloads];
  v13 = [(DMFProfile *)self restrictions];
  BYTE3(v16) = v10;
  BYTE2(v16) = v9;
  BYTE1(v16) = v8;
  LOBYTE(v16) = v7;
  v14 = [v21 initWithUUID:v20 type:v19 identifier:v18 profileVersion:v17 displayName:v4 organization:v5 profileDescription:v6 isManaged:v16 isLocked:v11 hasRemovalPasscode:v12 isEncrypted:v13 signerCertificates:? payloads:? restrictions:?];

  return v14;
}

- (DMFProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = DMFProfile;
  v5 = [(DMFProfile *)&v52 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v9 unsignedIntegerValue];

    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profileVersion"];
    v5->_profileVersion = [v13 integerValue];

    v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v15;

    v17 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"organization"];
    organization = v5->_organization;
    v5->_organization = v18;

    v20 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"profileDescription"];
    profileDescription = v5->_profileDescription;
    v5->_profileDescription = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isManaged"];
    v5->_isManaged = [v23 BOOLValue];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isLocked"];
    v5->_isLocked = [v24 BOOLValue];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasRemovalPasscode"];
    v5->_hasRemovalPasscode = [v25 BOOLValue];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isEncrypted"];
    v5->_isEncrypted = [v26 BOOLValue];

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"signerCertificates"];
    signerCertificates = v5->_signerCertificates;
    v5->_signerCertificates = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"payloads"];
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
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"restrictions"];
    restrictions = v5->_restrictions;
    v5->_restrictions = v46;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMFProfile *)self UUID];
  [v4 encodeObject:v5 forKey:@"UUID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFProfile type](self, "type")}];
  [v4 encodeObject:v6 forKey:@"type"];

  v7 = [(DMFProfile *)self identifier];
  [v4 encodeObject:v7 forKey:@"identifier"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[DMFProfile profileVersion](self, "profileVersion")}];
  [v4 encodeObject:v8 forKey:@"profileVersion"];

  v9 = [(DMFProfile *)self displayName];
  [v4 encodeObject:v9 forKey:@"displayName"];

  v10 = [(DMFProfile *)self organization];
  [v4 encodeObject:v10 forKey:@"organization"];

  v11 = [(DMFProfile *)self profileDescription];
  [v4 encodeObject:v11 forKey:@"profileDescription"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFProfile isManaged](self, "isManaged")}];
  [v4 encodeObject:v12 forKey:@"isManaged"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFProfile isLocked](self, "isLocked")}];
  [v4 encodeObject:v13 forKey:@"isLocked"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFProfile hasRemovalPasscode](self, "hasRemovalPasscode")}];
  [v4 encodeObject:v14 forKey:@"hasRemovalPasscode"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFProfile isEncrypted](self, "isEncrypted")}];
  [v4 encodeObject:v15 forKey:@"isEncrypted"];

  v16 = [(DMFProfile *)self signerCertificates];
  [v4 encodeObject:v16 forKey:@"signerCertificates"];

  v17 = [(DMFProfile *)self payloads];
  [v4 encodeObject:v17 forKey:@"payloads"];

  v18 = [(DMFProfile *)self restrictions];
  [v4 encodeObject:v18 forKey:@"restrictions"];
}

- (unint64_t)hash
{
  v3 = [(DMFProfile *)self UUID];
  v4 = [v3 hash];
  v5 = [(DMFProfile *)self type]^ v4;
  v6 = [(DMFProfile *)self identifier];
  v7 = [v6 hash];
  v8 = v5 ^ v7 ^ [(DMFProfile *)self profileVersion];
  v9 = [(DMFProfile *)self displayName];
  v10 = [v9 hash];
  v11 = [(DMFProfile *)self organization];
  v12 = v10 ^ [v11 hash];
  v13 = [(DMFProfile *)self profileDescription];
  v14 = v8 ^ v12 ^ [v13 hash];
  v15 = [(DMFProfile *)self isManaged];
  v16 = v15 ^ [(DMFProfile *)self isLocked];
  v17 = v14 ^ v16 ^ [(DMFProfile *)self hasRemovalPasscode];
  v18 = [(DMFProfile *)self isEncrypted];
  v19 = [(DMFProfile *)self signerCertificates];
  v20 = v18 ^ [v19 hash];
  v21 = [(DMFProfile *)self payloads];
  v22 = v20 ^ [v21 hash];
  v23 = [(DMFProfile *)self restrictions];
  v24 = v22 ^ [v23 hash];

  return v17 ^ v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v43 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DMFProfile *)self UUID];
      v7 = [(DMFProfile *)v5 UUID];
      v8 = v6;
      v9 = v7;
      if ((!(v8 | v9) || (v10 = [v8 isEqual:v9], v9, v8, v10)) && (v11 = -[DMFProfile type](self, "type"), v11 == -[DMFProfile type](v5, "type")))
      {
        v12 = [(DMFProfile *)self identifier];
        v13 = [(DMFProfile *)v5 identifier];
        v14 = v12;
        v15 = v13;
        if (v14 | v15 && (v16 = [v14 isEqual:v15], v15, v14, !v16))
        {
          v43 = 0;
        }

        else
        {
          v17 = [(DMFProfile *)self displayName];
          v18 = [(DMFProfile *)v5 displayName];
          v19 = v17;
          v58 = v18;
          if (v19 | v58 && (v20 = [v19 isEqual:v58], v58, v19, !v20))
          {
            v43 = 0;
          }

          else
          {
            v56 = v19;
            v21 = [(DMFProfile *)self organization];
            v22 = [(DMFProfile *)v5 organization];
            v23 = v21;
            v57 = v22;
            if (v23 | v57 && (v24 = [v23 isEqual:v57], v57, v23, !v24))
            {
              v43 = 0;
              v19 = v56;
            }

            else
            {
              v53 = v23;
              v25 = [(DMFProfile *)self profileDescription];
              v26 = [(DMFProfile *)v5 profileDescription];
              v27 = v25;
              v54 = v26;
              v55 = v27;
              if (v27 | v54 && (v28 = [v27 isEqual:v54], v54, v55, !v28))
              {
                v43 = 0;
                v19 = v56;
              }

              else
              {
                v29 = [(DMFProfile *)self signerCertificates];
                v30 = [(DMFProfile *)v5 signerCertificates];
                v31 = v29;
                v32 = v30;
                if (v31 | v32 && (v33 = [v31 isEqual:v32], v32, v31, !v33))
                {
                  v43 = 0;
                  v19 = v56;
                }

                else
                {
                  v50 = v32;
                  v34 = [(DMFProfile *)self payloads];
                  v35 = [(DMFProfile *)v5 payloads];
                  v36 = v34;
                  v51 = v35;
                  v52 = v36;
                  if (v36 | v51 && (v37 = [v36 isEqual:v51], v51, v52, !v37))
                  {
                    v43 = 0;
                    v19 = v56;
                    v32 = v50;
                  }

                  else
                  {
                    v38 = [(DMFProfile *)self profileVersion];
                    v32 = v50;
                    if (v38 == [(DMFProfile *)v5 profileVersion])
                    {
                      v39 = [(DMFProfile *)self isManaged];
                      if (v39 == [(DMFProfile *)v5 isManaged]&& (v40 = [(DMFProfile *)self isLocked], v40 == [(DMFProfile *)v5 isLocked]) && (v41 = [(DMFProfile *)self hasRemovalPasscode], v41 == [(DMFProfile *)v5 hasRemovalPasscode]) && (v42 = [(DMFProfile *)self isEncrypted], v42 == [(DMFProfile *)v5 isEncrypted]))
                      {
                        v45 = [(DMFProfile *)self restrictions];
                        v46 = [(DMFProfile *)v5 restrictions];
                        v19 = v56;
                        v49 = v45;
                        if (v45 | v46)
                        {
                          v48 = v46;
                          v47 = [v45 isEqual:v46];
                          v46 = v48;
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
  v4 = [(DMFProfile *)self displayName];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(DMFProfile *)self displayName];
    [v3 appendFormat:@"\n\tDisplay Name : “%@”", v6];
  }

  v7 = [(DMFProfile *)self profileDescription];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(DMFProfile *)self profileDescription];
    [v3 appendFormat:@"\n\tDescription  : “%@”", v9];
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
  v11 = [(DMFProfile *)self identifier];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [(DMFProfile *)self identifier];
    [v3 appendFormat:@"\n\tIdentifier   : %@", v13];
  }

  v14 = [(DMFProfile *)self UUID];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [(DMFProfile *)self UUID];
    [v3 appendFormat:@"\n\tUUID         : %@", v16];
  }

  v17 = [(DMFProfile *)self organization];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [(DMFProfile *)self organization];
    [v3 appendFormat:@"\n\tOrganization : %@", v19];
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
  v22 = [(DMFProfile *)self signerCertificates];
  if ([v22 count])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  [v3 appendFormat:@"\n\tSigned       : %@", v23];

  v24 = [(DMFProfile *)self restrictions];
  [v3 appendFormat:@"\n\tRestrictions : %@", v24];

  [v3 appendString:@"\n}>"];
  v25 = [v3 copy];

  return v25;
}

@end