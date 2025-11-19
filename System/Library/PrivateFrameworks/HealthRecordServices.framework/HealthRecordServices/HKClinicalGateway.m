@interface HKClinicalGateway
- (BOOL)isEqual:(id)a3;
- (BOOL)isNewerGatewayVersionOfGateway:(id)a3;
- (HKClinicalGateway)init;
- (HKClinicalGateway)initWithCoder:(id)a3;
- (HKClinicalGateway)initWithExternalID:(id)a3 title:(id)a4 subtitle:(id)a5 displayableDescription:(id)a6 phoneNumber:(id)a7 informationURL:(id)a8 passwordResetURL:(id)a9 patientPortalURL:(id)a10 signupURL:(id)a11 status:(int64_t)a12 type:(int64_t)a13 brand:(id)a14 country:(id)a15 baseURL:(id)a16 FHIRVersion:(id)a17 authSchemas:(id)a18 resourceSchemas:(id)a19 features:(id)a20 gatewayVersions:(id)a21 minCompatibleAPIVersion:(int64_t)a22;
- (HKClinicalGatewayReference)newerSupportedGatewayVersion;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalGateway

- (HKClinicalGateway)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalGateway)initWithExternalID:(id)a3 title:(id)a4 subtitle:(id)a5 displayableDescription:(id)a6 phoneNumber:(id)a7 informationURL:(id)a8 passwordResetURL:(id)a9 patientPortalURL:(id)a10 signupURL:(id)a11 status:(int64_t)a12 type:(int64_t)a13 brand:(id)a14 country:(id)a15 baseURL:(id)a16 FHIRVersion:(id)a17 authSchemas:(id)a18 resourceSchemas:(id)a19 features:(id)a20 gatewayVersions:(id)a21 minCompatibleAPIVersion:(int64_t)a22
{
  v80 = a3;
  v79 = a4;
  v78 = a5;
  v77 = a6;
  v76 = a7;
  v75 = a8;
  v74 = a9;
  v73 = a10;
  v27 = a11;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v32 = a18;
  v33 = a19;
  v34 = a20;
  v35 = a21;
  v81.receiver = self;
  v81.super_class = HKClinicalGateway;
  v36 = [(HKClinicalGateway *)&v81 init];
  if (v36)
  {
    v37 = [v80 copy];
    externalID = v36->_externalID;
    v36->_externalID = v37;

    v39 = [v79 copy];
    title = v36->_title;
    v36->_title = v39;

    v41 = [v78 copy];
    subtitle = v36->_subtitle;
    v36->_subtitle = v41;

    v43 = [v77 copy];
    displayableDescription = v36->_displayableDescription;
    v36->_displayableDescription = v43;

    v45 = [v76 copy];
    phoneNumber = v36->_phoneNumber;
    v36->_phoneNumber = v45;

    v47 = [v75 copy];
    informationURL = v36->_informationURL;
    v36->_informationURL = v47;

    v49 = [v74 copy];
    passwordResetURL = v36->_passwordResetURL;
    v36->_passwordResetURL = v49;

    v51 = [v73 copy];
    patientPortalURL = v36->_patientPortalURL;
    v36->_patientPortalURL = v51;

    v53 = [v27 copy];
    signupURL = v36->_signupURL;
    v36->_signupURL = v53;

    v36->_status = a12;
    v36->_type = a13;
    v55 = [v28 copy];
    brand = v36->_brand;
    v36->_brand = v55;

    v57 = [v29 copy];
    country = v36->_country;
    v36->_country = v57;

    v59 = [v30 copy];
    baseURL = v36->_baseURL;
    v36->_baseURL = v59;

    v61 = [v31 copy];
    FHIRVersion = v36->_FHIRVersion;
    v36->_FHIRVersion = v61;

    v63 = [v32 copy];
    authSchemas = v36->_authSchemas;
    v36->_authSchemas = v63;

    v65 = [v33 copy];
    resourceSchemas = v36->_resourceSchemas;
    v36->_resourceSchemas = v65;

    v67 = [v34 copy];
    features = v36->_features;
    v36->_features = v67;

    v69 = [v35 copy];
    gatewayVersions = v36->_gatewayVersions;
    v36->_gatewayVersions = v69;

    v36->_minCompatibleAPIVersion = a22;
  }

  return v36;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HKClinicalGateway *)self externalID];
  v6 = [(HKClinicalGateway *)self title];
  v7 = [(HKClinicalGateway *)self subtitle];
  v8 = [(HKClinicalGateway *)self displayableDescription];
  v9 = [v3 stringWithFormat:@"<%@:%p externalID: %@ title: %@; subtitle: %@; description: %@; MCAV: %zd; status: %zd;>", v4, self, v5, v6, v7, v8, -[HKClinicalGateway minCompatibleAPIVersion](self, "minCompatibleAPIVersion"), -[HKClinicalGateway status](self, "status"), 0];;

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if ([(HKClinicalGateway *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(HKClinicalGateway *)self externalID];
    v7 = [(HKClinicalGateway *)v5 externalID];
    if (v6 == v7)
    {
      v11 = 1;
    }

    else
    {
      v8 = [(HKClinicalGateway *)v5 externalID];
      if (v8)
      {
        v9 = [(HKClinicalGateway *)self externalID];
        v10 = [(HKClinicalGateway *)v5 externalID];
        v11 = [v9 isEqualToString:v10];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v2 = [(HKClinicalGateway *)self externalID];
  v3 = [v2 hash];

  return v3;
}

- (HKClinicalGatewayReference)newerSupportedGatewayVersion
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = HKProviderServiceMaximumCompatibleAPIVersion();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  minCompatibleAPIVersion = self->_minCompatibleAPIVersion;
  v5 = self->_gatewayVersions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 minCompatibleAPIVersion] <= v3 && objc_msgSend(v11, "minCompatibleAPIVersion") > minCompatibleAPIVersion)
        {
          v12 = v11;

          v8 = v12;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)isNewerGatewayVersionOfGateway:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(HKClinicalGateway *)a2 isNewerGatewayVersionOfGateway:?];
  }

  if (self == v5)
  {
    v15 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_gatewayVersions;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [v11 gatewayID];
          v13 = [(HKClinicalGateway *)v5 externalID];
          v14 = [v12 isEqualToString:v13];

          if (v14)
          {
            v15 = [v11 minCompatibleAPIVersion] < self->_minCompatibleAPIVersion;
            goto LABEL_14;
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_14:
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v21 = a3;
  [v21 encodeInteger:-[HKClinicalGateway status](self forKey:{"status"), @"status"}];
  [v21 encodeInteger:-[HKClinicalGateway type](self forKey:{"type"), @"type"}];
  v4 = [(HKClinicalGateway *)self brand];
  [v21 encodeObject:v4 forKey:@"brand"];

  v5 = [(HKClinicalGateway *)self displayableDescription];
  [v21 encodeObject:v5 forKey:@"displayableDescription"];

  v6 = [(HKClinicalGateway *)self externalID];
  [v21 encodeObject:v6 forKey:@"externalID"];

  v7 = [(HKClinicalGateway *)self informationURL];
  [v21 encodeObject:v7 forKey:@"info"];

  v8 = [(HKClinicalGateway *)self passwordResetURL];
  [v21 encodeObject:v8 forKey:@"forgot"];

  v9 = [(HKClinicalGateway *)self patientPortalURL];
  [v21 encodeObject:v9 forKey:@"patientportal"];

  v10 = [(HKClinicalGateway *)self phoneNumber];
  [v21 encodeObject:v10 forKey:@"phoneNumber"];

  v11 = [(HKClinicalGateway *)self country];
  [v21 encodeObject:v11 forKey:@"country"];

  v12 = [(HKClinicalGateway *)self signupURL];
  [v21 encodeObject:v12 forKey:@"signup"];

  v13 = [(HKClinicalGateway *)self subtitle];
  [v21 encodeObject:v13 forKey:@"subtitle"];

  v14 = [(HKClinicalGateway *)self title];
  [v21 encodeObject:v14 forKey:@"title"];

  v15 = [(HKClinicalGateway *)self baseURL];
  [v21 encodeObject:v15 forKey:@"baseURL"];

  v16 = [(HKClinicalGateway *)self FHIRVersion];
  [v21 encodeObject:v16 forKey:@"FHIRVersion"];

  v17 = [(HKClinicalGateway *)self authSchemas];
  [v21 encodeObject:v17 forKey:@"authSchemas"];

  v18 = [(HKClinicalGateway *)self resourceSchemas];
  [v21 encodeObject:v18 forKey:@"resourceSchemas"];

  v19 = [(HKClinicalGateway *)self features];
  [v21 encodeObject:v19 forKey:@"features"];

  v20 = [(HKClinicalGateway *)self gatewayVersions];
  [v21 encodeObject:v20 forKey:@"gatewayVersions"];

  [v21 encodeInteger:-[HKClinicalGateway minCompatibleAPIVersion](self forKey:{"minCompatibleAPIVersion"), @"minCompatibleAPIVersion"}];
}

- (HKClinicalGateway)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brand"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalID"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
      if (v7)
      {
        v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"country"];
        if (v8)
        {
          v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
          if (v9)
          {
            v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FHIRVersion"];
            v11 = v10;
            if (v10)
            {
              v30 = v10;
              v31 = v9;
              v12 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
              v28 = [v4 decodeObjectOfClasses:v12 forKey:@"authSchemas"];
              v29 = v12;
              v33 = [v4 decodeObjectOfClasses:v12 forKey:@"resourceSchemas"];
              v27 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
              v32 = [v4 decodeObjectOfClasses:? forKey:?];
              v26 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
              v13 = [v4 decodeObjectOfClasses:? forKey:?];
              if ([v4 containsValueForKey:@"status"] && objc_msgSend(v4, "containsValueForKey:", @"type") && (objc_msgSend(v4, "containsValueForKey:", @"minCompatibleAPIVersion") & 1) != 0)
              {
                v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
                v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayableDescription"];
                v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
                v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"info"];
                v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"forgot"];
                v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"patientportal"];
                v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signup"];
                v18 = v13;
                v14 = v13;
                v15 = v28;
                v11 = v30;
                self = -[HKClinicalGateway initWithExternalID:title:subtitle:displayableDescription:phoneNumber:informationURL:passwordResetURL:patientPortalURL:signupURL:status:type:brand:country:baseURL:FHIRVersion:authSchemas:resourceSchemas:features:gatewayVersions:minCompatibleAPIVersion:](self, "initWithExternalID:title:subtitle:displayableDescription:phoneNumber:informationURL:passwordResetURL:patientPortalURL:signupURL:status:type:brand:country:baseURL:FHIRVersion:authSchemas:resourceSchemas:features:gatewayVersions:minCompatibleAPIVersion:", v6, v7, v25, v24, v23, v20, v22, v21, v19, [v4 decodeIntegerForKey:@"status"], objc_msgSend(v4, "decodeIntegerForKey:", @"type"), v5, v8, v31, v30, v28, v33, v32, v18, objc_msgSend(v4, "decodeIntegerForKey:", @"minCompatibleAPIVersion"));

                v16 = self;
              }

              else
              {
                v14 = v13;
                [v4 hrs_failWithCocoaValueNotFoundError];
                v16 = 0;
                v11 = v30;
                v15 = v28;
              }

              v9 = v31;
            }

            else
            {
              [v4 hrs_failWithCocoaValueNotFoundError];
              v16 = 0;
            }
          }

          else
          {
            [v4 hrs_failWithCocoaValueNotFoundError];
            v16 = 0;
          }
        }

        else
        {
          [v4 hrs_failWithCocoaValueNotFoundError];
          v16 = 0;
        }
      }

      else
      {
        [v4 hrs_failWithCocoaValueNotFoundError];
        v16 = 0;
      }
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v16 = 0;
    }
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v16 = 0;
  }

  return v16;
}

- (void)isNewerGatewayVersionOfGateway:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKClinicalGateway.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"otherGateway"}];
}

@end