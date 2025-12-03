@interface DEDBugSessionConfiguration
+ (id)archivedClasses;
+ (id)secureUnarchiveWithData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (DEDBugSessionConfiguration)init;
- (DEDBugSessionConfiguration)initWithCoder:(id)coder;
- (NSString)requestedCapabilitiesString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)requestedCapabilities;
- (id)secureArchive;
- (void)encodeWithCoder:(id)coder;
- (void)requestCapabilities:(id)capabilities;
- (void)requestCapabilitiesSet:(id)set;
- (void)secureArchive;
@end

@implementation DEDBugSessionConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DEDBugSessionConfiguration finishingMove](self forKey:{"finishingMove"), @"finishingMove"}];
  [coderCopy encodeInteger:-[DEDBugSessionConfiguration notifyingMove](self forKey:{"notifyingMove"), @"notifyingMove"}];
  [coderCopy encodeBool:-[DEDBugSessionConfiguration allowsCellularUpload](self forKey:{"allowsCellularUpload"), @"allowsCellularUpload"}];
  requestedCapabilitiesString = [(DEDBugSessionConfiguration *)self requestedCapabilitiesString];
  [coderCopy encodeObject:requestedCapabilitiesString forKey:@"capabilities"];

  seedingDeviceToken = [(DEDBugSessionConfiguration *)self seedingDeviceToken];
  [coderCopy encodeObject:seedingDeviceToken forKey:@"seedingDeviceToken"];

  [coderCopy encodeInteger:-[DEDBugSessionConfiguration seedingSubmissionType](self forKey:{"seedingSubmissionType"), @"seedingSubmissionType"}];
  [coderCopy encodeInteger:-[DEDBugSessionConfiguration seedingSubmissionID](self forKey:{"seedingSubmissionID"), @"seedingSubmissionID"}];
  [coderCopy encodeInteger:-[DEDBugSessionConfiguration seedingEnvironment](self forKey:{"seedingEnvironment"), @"seedingEnvironment"}];
  seedingHost = [(DEDBugSessionConfiguration *)self seedingHost];
  [coderCopy encodeObject:seedingHost forKey:@"seedingHost"];

  [coderCopy encodeBool:-[DEDBugSessionConfiguration isUnauthenticatedSession](self forKey:{"isUnauthenticatedSession"), @"isUnauthenticatedSession"}];
  radarProblemID = [(DEDBugSessionConfiguration *)self radarProblemID];
  [coderCopy encodeObject:radarProblemID forKey:@"radarProblemID"];

  radarAuthToken = [(DEDBugSessionConfiguration *)self radarAuthToken];
  [coderCopy encodeObject:radarAuthToken forKey:@"radarAuthToken"];

  cloudkitContainer = [(DEDBugSessionConfiguration *)self cloudkitContainer];
  [coderCopy encodeObject:cloudkitContainer forKey:@"cloudkitContainer"];

  [coderCopy encodeBool:-[DEDBugSessionConfiguration cloudkitUseDevelopmentEnvironment](self forKey:{"cloudkitUseDevelopmentEnvironment"), @"cloudkitUseDevelopmentEnvironment"}];
  cloudkitData = [(DEDBugSessionConfiguration *)self cloudkitData];
  [coderCopy encodeObject:cloudkitData forKey:@"cloudkitData"];

  notifierConfiguration = [(DEDBugSessionConfiguration *)self notifierConfiguration];
  [coderCopy encodeObject:notifierConfiguration forKey:@"notifierConfiguration"];
}

- (DEDBugSessionConfiguration)init
{
  v3.receiver = self;
  v3.super_class = DEDBugSessionConfiguration;
  result = [(DEDBugSessionConfiguration *)&v3 init];
  if (result)
  {
    result->_bugSessionStartTimeout = 20.0;
  }

  return result;
}

- (DEDBugSessionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = DEDBugSessionConfiguration;
  v5 = [(DEDBugSessionConfiguration *)&v28 init];
  v6 = v5;
  if (v5)
  {
    v5->_bugSessionStartTimeout = 20.0;
    v5->_finishingMove = [coderCopy decodeIntegerForKey:@"finishingMove"];
    v6->_notifyingMove = [coderCopy decodeIntegerForKey:@"notifyingMove"];
    v6->_allowsCellularUpload = [coderCopy decodeBoolForKey:@"allowsCellularUpload"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
    v8 = v7;
    if (v7 && ![v7 isEqualToString:&stru_285B72378])
    {
      v9 = [DEDCapability decodeCapabilitiesString:v8];
    }

    else
    {
      v9 = +[DEDCapability defaultCapabilities];
    }

    requestedCapabilities = v6->_requestedCapabilities;
    v6->_requestedCapabilities = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seedingDeviceToken"];
    seedingDeviceToken = v6->_seedingDeviceToken;
    v6->_seedingDeviceToken = v11;

    v6->_seedingSubmissionType = [coderCopy decodeIntegerForKey:@"seedingSubmissionType"];
    v6->_seedingSubmissionID = [coderCopy decodeIntegerForKey:@"seedingSubmissionID"];
    v6->_seedingEnvironment = [coderCopy decodeIntegerForKey:@"seedingEnvironment"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seedingHost"];
    seedingHost = v6->_seedingHost;
    v6->_seedingHost = v13;

    v15 = [coderCopy containsValueForKey:@"isUnauthenticatedSession"];
    if (v15)
    {
      LOBYTE(v15) = [coderCopy decodeBoolForKey:@"isUnauthenticatedSession"];
    }

    v6->_isUnauthenticatedSession = v15;
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"radarProblemID"];
    radarProblemID = v6->_radarProblemID;
    v6->_radarProblemID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"radarAuthToken"];
    radarAuthToken = v6->_radarAuthToken;
    v6->_radarAuthToken = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudkitContainer"];
    cloudkitContainer = v6->_cloudkitContainer;
    v6->_cloudkitContainer = v20;

    v6->_cloudkitUseDevelopmentEnvironment = [coderCopy decodeBoolForKey:@"cloudkitUseDevelopmentEnvironment"];
    archivedClasses = [objc_opt_class() archivedClasses];
    v23 = [coderCopy decodeObjectOfClasses:archivedClasses forKey:@"cloudkitData"];
    cloudkitData = v6->_cloudkitData;
    v6->_cloudkitData = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notifierConfiguration"];
    notifierConfiguration = v6->_notifierConfiguration;
    v6->_notifierConfiguration = v25;
  }

  return v6;
}

- (NSString)requestedCapabilitiesString
{
  requestedCapabilities = self->_requestedCapabilities;
  if (!requestedCapabilities)
  {
    v4 = +[DEDCapability defaultCapabilities];
    v5 = self->_requestedCapabilities;
    self->_requestedCapabilities = v4;

    requestedCapabilities = self->_requestedCapabilities;
  }

  return [DEDCapability encodeCapabilitySet:requestedCapabilities];
}

- (void)requestCapabilitiesSet:(id)set
{
  v4 = [set setByAddingObject:@"classic"];
  requestedCapabilities = self->_requestedCapabilities;
  self->_requestedCapabilities = v4;

  MEMORY[0x2821F96F8]();
}

- (void)requestCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v5 = [MEMORY[0x277CBEB58] setWithObject:@"classic"];
  v12 = &v13;
  v6 = capabilitiesCopy;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    do
    {
      [(NSSet *)v5 addObject:v7];
      v9 = v12++;
      v10 = *v9;

      v8 = v10;
    }

    while (v10);
  }

  requestedCapabilities = self->_requestedCapabilities;
  self->_requestedCapabilities = v5;
}

- (id)requestedCapabilities
{
  requestedCapabilities = self->_requestedCapabilities;
  if (!requestedCapabilities)
  {
    v4 = +[DEDCapability defaultCapabilities];
    v5 = self->_requestedCapabilities;
    self->_requestedCapabilities = v4;

    requestedCapabilities = self->_requestedCapabilities;
  }

  v6 = [(NSSet *)requestedCapabilities copy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  secureArchive = [(DEDBugSessionConfiguration *)self secureArchive];
  v4 = [DEDBugSessionConfiguration secureUnarchiveWithData:secureArchive];

  return v4;
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
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DEDBugSessionConfiguration *)self isEqualToConfiguration:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy || (v8 = -[DEDBugSessionConfiguration finishingMove](self, "finishingMove"), v8 != [configurationCopy finishingMove]) || (v9 = -[DEDBugSessionConfiguration notifyingMove](self, "notifyingMove"), v9 != objc_msgSend(configurationCopy, "notifyingMove")) || (v10 = -[DEDBugSessionConfiguration allowsCellularUpload](self, "allowsCellularUpload"), v10 != objc_msgSend(configurationCopy, "allowsCellularUpload")))
  {
    v11 = 0;
    goto LABEL_6;
  }

  seedingDeviceToken = [(DEDBugSessionConfiguration *)self seedingDeviceToken];
  if (seedingDeviceToken || ([configurationCopy seedingDeviceToken], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    seedingDeviceToken2 = [(DEDBugSessionConfiguration *)self seedingDeviceToken];
    seedingDeviceToken3 = [configurationCopy seedingDeviceToken];
    if (([seedingDeviceToken2 isEqualToString:seedingDeviceToken3] & 1) == 0)
    {

      v11 = 0;
      goto LABEL_22;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  seedingSubmissionID = [(DEDBugSessionConfiguration *)self seedingSubmissionID];
  if (seedingSubmissionID == [configurationCopy seedingSubmissionID])
  {
    seedingSubmissionType = [(DEDBugSessionConfiguration *)self seedingSubmissionType];
    if (seedingSubmissionType == [configurationCopy seedingSubmissionType])
    {
      seedingEnvironment = [(DEDBugSessionConfiguration *)self seedingEnvironment];
      if (seedingEnvironment == [configurationCopy seedingEnvironment])
      {
        seedingHost = [(DEDBugSessionConfiguration *)self seedingHost];
        if (seedingHost || ([configurationCopy seedingHost], (v60 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          seedingHost2 = [(DEDBugSessionConfiguration *)self seedingHost];
          seedingHost3 = [configurationCopy seedingHost];
          if (![seedingHost2 isEqualToString:?])
          {
            v11 = 0;
            goto LABEL_87;
          }

          v58 = seedingHost2;
          v64 = 1;
        }

        else
        {
          v60 = 0;
          v64 = 0;
        }

        radarProblemID = [(DEDBugSessionConfiguration *)self radarProblemID];
        if (radarProblemID || ([configurationCopy radarProblemID], (v54 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          radarProblemID2 = [(DEDBugSessionConfiguration *)self radarProblemID];
          radarProblemID3 = [configurationCopy radarProblemID];
          v62 = radarProblemID2;
          if (![radarProblemID2 isEqualToNumber:?])
          {
            v11 = 0;
LABEL_82:

LABEL_83:
            if (!radarProblemID)
            {
            }

            if (!v64)
            {
LABEL_88:
              if (!seedingHost)
              {
              }

              if (!v14)
              {
                goto LABEL_22;
              }

              goto LABEL_21;
            }

            seedingHost2 = v58;
LABEL_87:

            goto LABEL_88;
          }

          v57 = 1;
        }

        else
        {
          v54 = 0;
          v57 = 0;
        }

        radarAuthToken = [(DEDBugSessionConfiguration *)self radarAuthToken];
        if (radarAuthToken || ([configurationCopy radarAuthToken], (v50 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          radarAuthToken2 = [(DEDBugSessionConfiguration *)self radarAuthToken];
          radarAuthToken3 = [configurationCopy radarAuthToken];
          v56 = radarAuthToken2;
          if (![radarAuthToken2 isEqualToString:?])
          {
            v11 = 0;
LABEL_78:

            goto LABEL_79;
          }

          v23 = 1;
        }

        else
        {
          v50 = 0;
          v23 = 0;
        }

        v51 = radarProblemID;
        cloudkitContainer = [(DEDBugSessionConfiguration *)self cloudkitContainer];
        v52 = v23;
        if (cloudkitContainer || ([configurationCopy cloudkitContainer], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          cloudkitContainer2 = [(DEDBugSessionConfiguration *)self cloudkitContainer];
          radarProblemID = [configurationCopy cloudkitContainer];
          if (([cloudkitContainer2 isEqualToString:radarProblemID] & 1) == 0)
          {

            v25 = cloudkitContainer;
            if (!cloudkitContainer)
            {
              v25 = v48;
            }

            v11 = 0;
            radarProblemID = v51;
            if (v52)
            {
              goto LABEL_78;
            }

            goto LABEL_79;
          }

          v46 = radarProblemID;
          v47 = cloudkitContainer2;
          v49 = 1;
        }

        else
        {
          v48 = 0;
          v49 = 0;
        }

        cloudkitUseDevelopmentEnvironment = [(DEDBugSessionConfiguration *)self cloudkitUseDevelopmentEnvironment];
        if (cloudkitUseDevelopmentEnvironment != [configurationCopy cloudkitUseDevelopmentEnvironment])
        {
          v11 = 0;
          v27 = v52;
          if ((v49 & 1) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        }

        [(DEDBugSessionConfiguration *)self cloudkitData];
        v45 = v27 = v52;
        if (v45 || ([configurationCopy cloudkitData], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          cloudkitData = [(DEDBugSessionConfiguration *)self cloudkitData];
          cloudkitData2 = [configurationCopy cloudkitData];
          v44 = cloudkitData;
          v30 = cloudkitData;
          radarProblemID = cloudkitData2;
          if (![v30 isEqualToDictionary:cloudkitData2])
          {
            v11 = 0;
            goto LABEL_68;
          }

          v43 = 1;
        }

        else
        {
          v40 = 0;
          v43 = 0;
        }

        requestedCapabilitiesString = [(DEDBugSessionConfiguration *)self requestedCapabilitiesString];
        requestedCapabilitiesString2 = [configurationCopy requestedCapabilitiesString];
        v42 = requestedCapabilitiesString;
        if ([requestedCapabilitiesString isEqualToString:?])
        {
          v39 = radarProblemID;
          v63 = seedingHost;
          notifierConfiguration = [(DEDBugSessionConfiguration *)self notifierConfiguration];
          if (notifierConfiguration || ([configurationCopy notifierConfiguration], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            notifierConfiguration2 = [(DEDBugSessionConfiguration *)self notifierConfiguration];
            notifierConfiguration3 = [configurationCopy notifierConfiguration];
            v11 = [notifierConfiguration2 isEqual:notifierConfiguration3];

            if (notifierConfiguration)
            {

LABEL_66:
              if (v43)
              {
                seedingHost = v63;
                v27 = v52;
                radarProblemID = v39;
                goto LABEL_68;
              }

              seedingHost = v63;
LABEL_70:
              v27 = v52;
LABEL_71:
              v35 = v45;
              if (!v45)
              {

                v35 = 0;
              }

              if (!v49)
              {
LABEL_75:
                v36 = cloudkitContainer;
                radarProblemID = v51;
                if (!cloudkitContainer)
                {

                  v36 = 0;
                }

                if (v27)
                {
                  goto LABEL_78;
                }

LABEL_79:
                v37 = radarAuthToken;
                if (!radarAuthToken)
                {

                  v37 = 0;
                }

                if (!v57)
                {
                  goto LABEL_83;
                }

                goto LABEL_82;
              }

LABEL_74:

              goto LABEL_75;
            }
          }

          else
          {
            v38 = 0;
            v11 = 1;
          }

          goto LABEL_66;
        }

        v11 = 0;
        if ((v43 & 1) == 0)
        {
          goto LABEL_70;
        }

        v27 = v52;
LABEL_68:

        goto LABEL_71;
      }
    }
  }

  v11 = 0;
  if (v14)
  {
LABEL_21:
  }

LABEL_22:
  if (!seedingDeviceToken)
  {

    seedingDeviceToken = 0;
  }

LABEL_6:
  return v11;
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB58];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v2 setWithObjects:{v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  v9 = +[DEDNotifierConfiguration archivedClasses];
  [v8 unionSet:v9];

  return v8;
}

- (id)secureArchive
{
  v7 = 0;
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(DEDBugSessionConfiguration *)v3 secureArchive];
    }

    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

+ (id)secureUnarchiveWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = +[DEDBugSessionConfiguration archivedClasses];
    v11 = 0;
    v6 = [v4 unarchivedObjectOfClasses:v5 fromData:dataCopy error:&v11];
    v7 = v11;

    if (v7)
    {
      v8 = +[DEDUtils sharedLog];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(DEDBugSessionConfiguration *)v7 secureUnarchiveWithData:v8];
      }

      v9 = 0;
    }

    else
    {
      v9 = v6;
    }
  }

  else
  {
    v7 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DEDBugSessionConfiguration secureUnarchiveWithData:v7];
    }

    v9 = 0;
  }

  return v9;
}

- (void)secureArchive
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "failed to archive config with error: [%{public}@]", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)secureUnarchiveWithData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "failed to unarchive config data with error: [%{public}@]", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end