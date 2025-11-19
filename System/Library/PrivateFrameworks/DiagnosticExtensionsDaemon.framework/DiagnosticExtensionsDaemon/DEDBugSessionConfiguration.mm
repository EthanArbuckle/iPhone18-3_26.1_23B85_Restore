@interface DEDBugSessionConfiguration
+ (id)archivedClasses;
+ (id)secureUnarchiveWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfiguration:(id)a3;
- (DEDBugSessionConfiguration)init;
- (DEDBugSessionConfiguration)initWithCoder:(id)a3;
- (NSString)requestedCapabilitiesString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)requestedCapabilities;
- (id)secureArchive;
- (void)encodeWithCoder:(id)a3;
- (void)requestCapabilities:(id)a3;
- (void)requestCapabilitiesSet:(id)a3;
- (void)secureArchive;
@end

@implementation DEDBugSessionConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[DEDBugSessionConfiguration finishingMove](self forKey:{"finishingMove"), @"finishingMove"}];
  [v4 encodeInteger:-[DEDBugSessionConfiguration notifyingMove](self forKey:{"notifyingMove"), @"notifyingMove"}];
  [v4 encodeBool:-[DEDBugSessionConfiguration allowsCellularUpload](self forKey:{"allowsCellularUpload"), @"allowsCellularUpload"}];
  v5 = [(DEDBugSessionConfiguration *)self requestedCapabilitiesString];
  [v4 encodeObject:v5 forKey:@"capabilities"];

  v6 = [(DEDBugSessionConfiguration *)self seedingDeviceToken];
  [v4 encodeObject:v6 forKey:@"seedingDeviceToken"];

  [v4 encodeInteger:-[DEDBugSessionConfiguration seedingSubmissionType](self forKey:{"seedingSubmissionType"), @"seedingSubmissionType"}];
  [v4 encodeInteger:-[DEDBugSessionConfiguration seedingSubmissionID](self forKey:{"seedingSubmissionID"), @"seedingSubmissionID"}];
  [v4 encodeInteger:-[DEDBugSessionConfiguration seedingEnvironment](self forKey:{"seedingEnvironment"), @"seedingEnvironment"}];
  v7 = [(DEDBugSessionConfiguration *)self seedingHost];
  [v4 encodeObject:v7 forKey:@"seedingHost"];

  [v4 encodeBool:-[DEDBugSessionConfiguration isUnauthenticatedSession](self forKey:{"isUnauthenticatedSession"), @"isUnauthenticatedSession"}];
  v8 = [(DEDBugSessionConfiguration *)self radarProblemID];
  [v4 encodeObject:v8 forKey:@"radarProblemID"];

  v9 = [(DEDBugSessionConfiguration *)self radarAuthToken];
  [v4 encodeObject:v9 forKey:@"radarAuthToken"];

  v10 = [(DEDBugSessionConfiguration *)self cloudkitContainer];
  [v4 encodeObject:v10 forKey:@"cloudkitContainer"];

  [v4 encodeBool:-[DEDBugSessionConfiguration cloudkitUseDevelopmentEnvironment](self forKey:{"cloudkitUseDevelopmentEnvironment"), @"cloudkitUseDevelopmentEnvironment"}];
  v11 = [(DEDBugSessionConfiguration *)self cloudkitData];
  [v4 encodeObject:v11 forKey:@"cloudkitData"];

  v12 = [(DEDBugSessionConfiguration *)self notifierConfiguration];
  [v4 encodeObject:v12 forKey:@"notifierConfiguration"];
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

- (DEDBugSessionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = DEDBugSessionConfiguration;
  v5 = [(DEDBugSessionConfiguration *)&v28 init];
  v6 = v5;
  if (v5)
  {
    v5->_bugSessionStartTimeout = 20.0;
    v5->_finishingMove = [v4 decodeIntegerForKey:@"finishingMove"];
    v6->_notifyingMove = [v4 decodeIntegerForKey:@"notifyingMove"];
    v6->_allowsCellularUpload = [v4 decodeBoolForKey:@"allowsCellularUpload"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
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

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seedingDeviceToken"];
    seedingDeviceToken = v6->_seedingDeviceToken;
    v6->_seedingDeviceToken = v11;

    v6->_seedingSubmissionType = [v4 decodeIntegerForKey:@"seedingSubmissionType"];
    v6->_seedingSubmissionID = [v4 decodeIntegerForKey:@"seedingSubmissionID"];
    v6->_seedingEnvironment = [v4 decodeIntegerForKey:@"seedingEnvironment"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seedingHost"];
    seedingHost = v6->_seedingHost;
    v6->_seedingHost = v13;

    v15 = [v4 containsValueForKey:@"isUnauthenticatedSession"];
    if (v15)
    {
      LOBYTE(v15) = [v4 decodeBoolForKey:@"isUnauthenticatedSession"];
    }

    v6->_isUnauthenticatedSession = v15;
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"radarProblemID"];
    radarProblemID = v6->_radarProblemID;
    v6->_radarProblemID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"radarAuthToken"];
    radarAuthToken = v6->_radarAuthToken;
    v6->_radarAuthToken = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudkitContainer"];
    cloudkitContainer = v6->_cloudkitContainer;
    v6->_cloudkitContainer = v20;

    v6->_cloudkitUseDevelopmentEnvironment = [v4 decodeBoolForKey:@"cloudkitUseDevelopmentEnvironment"];
    v22 = [objc_opt_class() archivedClasses];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"cloudkitData"];
    cloudkitData = v6->_cloudkitData;
    v6->_cloudkitData = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notifierConfiguration"];
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

- (void)requestCapabilitiesSet:(id)a3
{
  v4 = [a3 setByAddingObject:@"classic"];
  requestedCapabilities = self->_requestedCapabilities;
  self->_requestedCapabilities = v4;

  MEMORY[0x2821F96F8]();
}

- (void)requestCapabilities:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] setWithObject:@"classic"];
  v12 = &v13;
  v6 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(DEDBugSessionConfiguration *)self secureArchive];
  v4 = [DEDBugSessionConfiguration secureUnarchiveWithData:v3];

  return v4;
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
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DEDBugSessionConfiguration *)self isEqualToConfiguration:v4];
  }

  return v5;
}

- (BOOL)isEqualToConfiguration:(id)a3
{
  v7 = a3;
  if (!v7 || (v8 = -[DEDBugSessionConfiguration finishingMove](self, "finishingMove"), v8 != [v7 finishingMove]) || (v9 = -[DEDBugSessionConfiguration notifyingMove](self, "notifyingMove"), v9 != objc_msgSend(v7, "notifyingMove")) || (v10 = -[DEDBugSessionConfiguration allowsCellularUpload](self, "allowsCellularUpload"), v10 != objc_msgSend(v7, "allowsCellularUpload")))
  {
    v11 = 0;
    goto LABEL_6;
  }

  v13 = [(DEDBugSessionConfiguration *)self seedingDeviceToken];
  if (v13 || ([v7 seedingDeviceToken], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(DEDBugSessionConfiguration *)self seedingDeviceToken];
    v5 = [v7 seedingDeviceToken];
    if (([v4 isEqualToString:v5] & 1) == 0)
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

  v15 = [(DEDBugSessionConfiguration *)self seedingSubmissionID];
  if (v15 == [v7 seedingSubmissionID])
  {
    v16 = [(DEDBugSessionConfiguration *)self seedingSubmissionType];
    if (v16 == [v7 seedingSubmissionType])
    {
      v17 = [(DEDBugSessionConfiguration *)self seedingEnvironment];
      if (v17 == [v7 seedingEnvironment])
      {
        v18 = [(DEDBugSessionConfiguration *)self seedingHost];
        if (v18 || ([v7 seedingHost], (v60 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v19 = [(DEDBugSessionConfiguration *)self seedingHost];
          v65 = [v7 seedingHost];
          if (![v19 isEqualToString:?])
          {
            v11 = 0;
            goto LABEL_87;
          }

          v58 = v19;
          v64 = 1;
        }

        else
        {
          v60 = 0;
          v64 = 0;
        }

        v20 = [(DEDBugSessionConfiguration *)self radarProblemID];
        if (v20 || ([v7 radarProblemID], (v54 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v21 = [(DEDBugSessionConfiguration *)self radarProblemID];
          v61 = [v7 radarProblemID];
          v62 = v21;
          if (![v21 isEqualToNumber:?])
          {
            v11 = 0;
LABEL_82:

LABEL_83:
            if (!v20)
            {
            }

            if (!v64)
            {
LABEL_88:
              if (!v18)
              {
              }

              if (!v14)
              {
                goto LABEL_22;
              }

              goto LABEL_21;
            }

            v19 = v58;
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

        v59 = [(DEDBugSessionConfiguration *)self radarAuthToken];
        if (v59 || ([v7 radarAuthToken], (v50 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v22 = [(DEDBugSessionConfiguration *)self radarAuthToken];
          v55 = [v7 radarAuthToken];
          v56 = v22;
          if (![v22 isEqualToString:?])
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

        v51 = v20;
        v53 = [(DEDBugSessionConfiguration *)self cloudkitContainer];
        v52 = v23;
        if (v53 || ([v7 cloudkitContainer], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v24 = [(DEDBugSessionConfiguration *)self cloudkitContainer];
          v20 = [v7 cloudkitContainer];
          if (([v24 isEqualToString:v20] & 1) == 0)
          {

            v25 = v53;
            if (!v53)
            {
              v25 = v48;
            }

            v11 = 0;
            v20 = v51;
            if (v52)
            {
              goto LABEL_78;
            }

            goto LABEL_79;
          }

          v46 = v20;
          v47 = v24;
          v49 = 1;
        }

        else
        {
          v48 = 0;
          v49 = 0;
        }

        v26 = [(DEDBugSessionConfiguration *)self cloudkitUseDevelopmentEnvironment];
        if (v26 != [v7 cloudkitUseDevelopmentEnvironment])
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
        if (v45 || ([v7 cloudkitData], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v28 = [(DEDBugSessionConfiguration *)self cloudkitData];
          v29 = [v7 cloudkitData];
          v44 = v28;
          v30 = v28;
          v20 = v29;
          if (![v30 isEqualToDictionary:v29])
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

        v31 = [(DEDBugSessionConfiguration *)self requestedCapabilitiesString];
        v41 = [v7 requestedCapabilitiesString];
        v42 = v31;
        if ([v31 isEqualToString:?])
        {
          v39 = v20;
          v63 = v18;
          v32 = [(DEDBugSessionConfiguration *)self notifierConfiguration];
          if (v32 || ([v7 notifierConfiguration], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v33 = [(DEDBugSessionConfiguration *)self notifierConfiguration];
            v34 = [v7 notifierConfiguration];
            v11 = [v33 isEqual:v34];

            if (v32)
            {

LABEL_66:
              if (v43)
              {
                v18 = v63;
                v27 = v52;
                v20 = v39;
                goto LABEL_68;
              }

              v18 = v63;
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
                v36 = v53;
                v20 = v51;
                if (!v53)
                {

                  v36 = 0;
                }

                if (v27)
                {
                  goto LABEL_78;
                }

LABEL_79:
                v37 = v59;
                if (!v59)
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
  if (!v13)
  {

    v13 = 0;
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

+ (id)secureUnarchiveWithData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = +[DEDBugSessionConfiguration archivedClasses];
    v11 = 0;
    v6 = [v4 unarchivedObjectOfClasses:v5 fromData:v3 error:&v11];
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
  v4 = a1;
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