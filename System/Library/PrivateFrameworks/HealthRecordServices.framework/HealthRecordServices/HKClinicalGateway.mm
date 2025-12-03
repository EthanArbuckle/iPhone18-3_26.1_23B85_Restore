@interface HKClinicalGateway
- (BOOL)isEqual:(id)equal;
- (BOOL)isNewerGatewayVersionOfGateway:(id)gateway;
- (HKClinicalGateway)init;
- (HKClinicalGateway)initWithCoder:(id)coder;
- (HKClinicalGateway)initWithExternalID:(id)d title:(id)title subtitle:(id)subtitle displayableDescription:(id)description phoneNumber:(id)number informationURL:(id)l passwordResetURL:(id)rL patientPortalURL:(id)self0 signupURL:(id)self1 status:(int64_t)self2 type:(int64_t)self3 brand:(id)self4 country:(id)self5 baseURL:(id)self6 FHIRVersion:(id)self7 authSchemas:(id)self8 resourceSchemas:(id)self9 features:(id)features gatewayVersions:(id)versions minCompatibleAPIVersion:(int64_t)iVersion;
- (HKClinicalGatewayReference)newerSupportedGatewayVersion;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKClinicalGateway)initWithExternalID:(id)d title:(id)title subtitle:(id)subtitle displayableDescription:(id)description phoneNumber:(id)number informationURL:(id)l passwordResetURL:(id)rL patientPortalURL:(id)self0 signupURL:(id)self1 status:(int64_t)self2 type:(int64_t)self3 brand:(id)self4 country:(id)self5 baseURL:(id)self6 FHIRVersion:(id)self7 authSchemas:(id)self8 resourceSchemas:(id)self9 features:(id)features gatewayVersions:(id)versions minCompatibleAPIVersion:(int64_t)iVersion
{
  dCopy = d;
  titleCopy = title;
  subtitleCopy = subtitle;
  descriptionCopy = description;
  numberCopy = number;
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  signupURLCopy = signupURL;
  brandCopy = brand;
  countryCopy = country;
  baseURLCopy = baseURL;
  versionCopy = version;
  schemasCopy = schemas;
  resourceSchemasCopy = resourceSchemas;
  featuresCopy = features;
  versionsCopy = versions;
  v81.receiver = self;
  v81.super_class = HKClinicalGateway;
  v36 = [(HKClinicalGateway *)&v81 init];
  if (v36)
  {
    v37 = [dCopy copy];
    externalID = v36->_externalID;
    v36->_externalID = v37;

    v39 = [titleCopy copy];
    title = v36->_title;
    v36->_title = v39;

    v41 = [subtitleCopy copy];
    subtitle = v36->_subtitle;
    v36->_subtitle = v41;

    v43 = [descriptionCopy copy];
    displayableDescription = v36->_displayableDescription;
    v36->_displayableDescription = v43;

    v45 = [numberCopy copy];
    phoneNumber = v36->_phoneNumber;
    v36->_phoneNumber = v45;

    v47 = [lCopy copy];
    informationURL = v36->_informationURL;
    v36->_informationURL = v47;

    v49 = [rLCopy copy];
    passwordResetURL = v36->_passwordResetURL;
    v36->_passwordResetURL = v49;

    v51 = [uRLCopy copy];
    patientPortalURL = v36->_patientPortalURL;
    v36->_patientPortalURL = v51;

    v53 = [signupURLCopy copy];
    signupURL = v36->_signupURL;
    v36->_signupURL = v53;

    v36->_status = status;
    v36->_type = type;
    v55 = [brandCopy copy];
    brand = v36->_brand;
    v36->_brand = v55;

    v57 = [countryCopy copy];
    country = v36->_country;
    v36->_country = v57;

    v59 = [baseURLCopy copy];
    baseURL = v36->_baseURL;
    v36->_baseURL = v59;

    v61 = [versionCopy copy];
    FHIRVersion = v36->_FHIRVersion;
    v36->_FHIRVersion = v61;

    v63 = [schemasCopy copy];
    authSchemas = v36->_authSchemas;
    v36->_authSchemas = v63;

    v65 = [resourceSchemasCopy copy];
    resourceSchemas = v36->_resourceSchemas;
    v36->_resourceSchemas = v65;

    v67 = [featuresCopy copy];
    features = v36->_features;
    v36->_features = v67;

    v69 = [versionsCopy copy];
    gatewayVersions = v36->_gatewayVersions;
    v36->_gatewayVersions = v69;

    v36->_minCompatibleAPIVersion = iVersion;
  }

  return v36;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  externalID = [(HKClinicalGateway *)self externalID];
  title = [(HKClinicalGateway *)self title];
  subtitle = [(HKClinicalGateway *)self subtitle];
  displayableDescription = [(HKClinicalGateway *)self displayableDescription];
  v9 = [v3 stringWithFormat:@"<%@:%p externalID: %@ title: %@; subtitle: %@; description: %@; MCAV: %zd; status: %zd;>", v4, self, externalID, title, subtitle, displayableDescription, -[HKClinicalGateway minCompatibleAPIVersion](self, "minCompatibleAPIVersion"), -[HKClinicalGateway status](self, "status"), 0];;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if ([(HKClinicalGateway *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    externalID = [(HKClinicalGateway *)self externalID];
    externalID2 = [(HKClinicalGateway *)v5 externalID];
    if (externalID == externalID2)
    {
      v11 = 1;
    }

    else
    {
      externalID3 = [(HKClinicalGateway *)v5 externalID];
      if (externalID3)
      {
        externalID4 = [(HKClinicalGateway *)self externalID];
        externalID5 = [(HKClinicalGateway *)v5 externalID];
        v11 = [externalID4 isEqualToString:externalID5];
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
  externalID = [(HKClinicalGateway *)self externalID];
  v3 = [externalID hash];

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

- (BOOL)isNewerGatewayVersionOfGateway:(id)gateway
{
  v23 = *MEMORY[0x277D85DE8];
  gatewayCopy = gateway;
  if (!gatewayCopy)
  {
    [(HKClinicalGateway *)a2 isNewerGatewayVersionOfGateway:?];
  }

  if (self == gatewayCopy)
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
          gatewayID = [v11 gatewayID];
          externalID = [(HKClinicalGateway *)gatewayCopy externalID];
          v14 = [gatewayID isEqualToString:externalID];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HKClinicalGateway status](self forKey:{"status"), @"status"}];
  [coderCopy encodeInteger:-[HKClinicalGateway type](self forKey:{"type"), @"type"}];
  brand = [(HKClinicalGateway *)self brand];
  [coderCopy encodeObject:brand forKey:@"brand"];

  displayableDescription = [(HKClinicalGateway *)self displayableDescription];
  [coderCopy encodeObject:displayableDescription forKey:@"displayableDescription"];

  externalID = [(HKClinicalGateway *)self externalID];
  [coderCopy encodeObject:externalID forKey:@"externalID"];

  informationURL = [(HKClinicalGateway *)self informationURL];
  [coderCopy encodeObject:informationURL forKey:@"info"];

  passwordResetURL = [(HKClinicalGateway *)self passwordResetURL];
  [coderCopy encodeObject:passwordResetURL forKey:@"forgot"];

  patientPortalURL = [(HKClinicalGateway *)self patientPortalURL];
  [coderCopy encodeObject:patientPortalURL forKey:@"patientportal"];

  phoneNumber = [(HKClinicalGateway *)self phoneNumber];
  [coderCopy encodeObject:phoneNumber forKey:@"phoneNumber"];

  country = [(HKClinicalGateway *)self country];
  [coderCopy encodeObject:country forKey:@"country"];

  signupURL = [(HKClinicalGateway *)self signupURL];
  [coderCopy encodeObject:signupURL forKey:@"signup"];

  subtitle = [(HKClinicalGateway *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  title = [(HKClinicalGateway *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  baseURL = [(HKClinicalGateway *)self baseURL];
  [coderCopy encodeObject:baseURL forKey:@"baseURL"];

  fHIRVersion = [(HKClinicalGateway *)self FHIRVersion];
  [coderCopy encodeObject:fHIRVersion forKey:@"FHIRVersion"];

  authSchemas = [(HKClinicalGateway *)self authSchemas];
  [coderCopy encodeObject:authSchemas forKey:@"authSchemas"];

  resourceSchemas = [(HKClinicalGateway *)self resourceSchemas];
  [coderCopy encodeObject:resourceSchemas forKey:@"resourceSchemas"];

  features = [(HKClinicalGateway *)self features];
  [coderCopy encodeObject:features forKey:@"features"];

  gatewayVersions = [(HKClinicalGateway *)self gatewayVersions];
  [coderCopy encodeObject:gatewayVersions forKey:@"gatewayVersions"];

  [coderCopy encodeInteger:-[HKClinicalGateway minCompatibleAPIVersion](self forKey:{"minCompatibleAPIVersion"), @"minCompatibleAPIVersion"}];
}

- (HKClinicalGateway)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brand"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalID"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
      if (v7)
      {
        v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"country"];
        if (v8)
        {
          v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
          if (v9)
          {
            v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FHIRVersion"];
            v11 = v10;
            if (v10)
            {
              v30 = v10;
              v31 = v9;
              v12 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
              v28 = [coderCopy decodeObjectOfClasses:v12 forKey:@"authSchemas"];
              v29 = v12;
              v33 = [coderCopy decodeObjectOfClasses:v12 forKey:@"resourceSchemas"];
              v27 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
              v32 = [coderCopy decodeObjectOfClasses:? forKey:?];
              v26 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
              v13 = [coderCopy decodeObjectOfClasses:? forKey:?];
              if ([coderCopy containsValueForKey:@"status"] && objc_msgSend(coderCopy, "containsValueForKey:", @"type") && (objc_msgSend(coderCopy, "containsValueForKey:", @"minCompatibleAPIVersion") & 1) != 0)
              {
                v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
                v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayableDescription"];
                v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
                v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"info"];
                v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"forgot"];
                v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"patientportal"];
                v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signup"];
                v18 = v13;
                v14 = v13;
                v15 = v28;
                v11 = v30;
                self = -[HKClinicalGateway initWithExternalID:title:subtitle:displayableDescription:phoneNumber:informationURL:passwordResetURL:patientPortalURL:signupURL:status:type:brand:country:baseURL:FHIRVersion:authSchemas:resourceSchemas:features:gatewayVersions:minCompatibleAPIVersion:](self, "initWithExternalID:title:subtitle:displayableDescription:phoneNumber:informationURL:passwordResetURL:patientPortalURL:signupURL:status:type:brand:country:baseURL:FHIRVersion:authSchemas:resourceSchemas:features:gatewayVersions:minCompatibleAPIVersion:", v6, v7, v25, v24, v23, v20, v22, v21, v19, [coderCopy decodeIntegerForKey:@"status"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"type"), v5, v8, v31, v30, v28, v33, v32, v18, objc_msgSend(coderCopy, "decodeIntegerForKey:", @"minCompatibleAPIVersion"));

                selfCopy = self;
              }

              else
              {
                v14 = v13;
                [coderCopy hrs_failWithCocoaValueNotFoundError];
                selfCopy = 0;
                v11 = v30;
                v15 = v28;
              }

              v9 = v31;
            }

            else
            {
              [coderCopy hrs_failWithCocoaValueNotFoundError];
              selfCopy = 0;
            }
          }

          else
          {
            [coderCopy hrs_failWithCocoaValueNotFoundError];
            selfCopy = 0;
          }
        }

        else
        {
          [coderCopy hrs_failWithCocoaValueNotFoundError];
          selfCopy = 0;
        }
      }

      else
      {
        [coderCopy hrs_failWithCocoaValueNotFoundError];
        selfCopy = 0;
      }
    }

    else
    {
      [coderCopy hrs_failWithCocoaValueNotFoundError];
      selfCopy = 0;
    }
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)isNewerGatewayVersionOfGateway:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKClinicalGateway.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"otherGateway"}];
}

@end