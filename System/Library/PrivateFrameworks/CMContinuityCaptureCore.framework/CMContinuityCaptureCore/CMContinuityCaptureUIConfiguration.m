@interface CMContinuityCaptureUIConfiguration
- (BOOL)isEqual:(id)a3;
- (CMContinuityCaptureUIConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMContinuityCaptureUIConfiguration

- (CMContinuityCaptureUIConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CMContinuityCaptureUIConfiguration;
  v5 = [(CMContinuityCaptureUIConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientName"];
    clientName = v5->_clientName;
    v5->_clientName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteDisplayIdentifier"];
    remoteDisplayIdentifier = v5->_remoteDisplayIdentifier;
    v5->_remoteDisplayIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"participantInfo"];
    participantInfo = v5->_participantInfo;
    v5->_participantInfo = v12;

    v5->_clientDeviceModel = [v4 decodeIntegerForKey:@"clientDeviceModel"];
    v5->_compositeState = [v4 decodeIntegerForKey:@"compositeState"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placementStepSkipped"];
    placementStepSkipped = v5->_placementStepSkipped;
    v5->_placementStepSkipped = v14;

    v5->_isDedicated = [v4 decodeBoolForKey:@"isDedicated"];
    v5->_micOnly = [v4 decodeBoolForKey:@"micOnly"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(CMContinuityCaptureUIConfiguration *)self applicationIdentifier];
  [v9 encodeObject:v4 forKey:@"applicationIdentifier"];

  v5 = [(CMContinuityCaptureUIConfiguration *)self clientName];
  [v9 encodeObject:v5 forKey:@"clientName"];

  v6 = [(CMContinuityCaptureUIConfiguration *)self remoteDisplayIdentifier];
  [v9 encodeObject:v6 forKey:@"remoteDisplayIdentifier"];

  v7 = [(CMContinuityCaptureUIConfiguration *)self participantInfo];
  [v9 encodeObject:v7 forKey:@"participantInfo"];

  [v9 encodeInteger:-[CMContinuityCaptureUIConfiguration clientDeviceModel](self forKey:{"clientDeviceModel"), @"clientDeviceModel"}];
  [v9 encodeInteger:-[CMContinuityCaptureUIConfiguration compositeState](self forKey:{"compositeState"), @"compositeState"}];
  v8 = [(CMContinuityCaptureUIConfiguration *)self placementStepSkipped];
  [v9 encodeObject:v8 forKey:@"placementStepSkipped"];

  [v9 encodeBool:-[CMContinuityCaptureUIConfiguration isDedicated](self forKey:{"isDedicated"), @"isDedicated"}];
  [v9 encodeBool:-[CMContinuityCaptureUIConfiguration micOnly](self forKey:{"micOnly"), @"micOnly"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  v7 = [(CMContinuityCaptureUIConfiguration *)self applicationIdentifier];
  [v6 appendFormat:@", applicationIdentifier=%@", v7];

  v8 = [(CMContinuityCaptureUIConfiguration *)self clientName];
  [v6 appendFormat:@", clientName=%@", v8];

  v9 = [(CMContinuityCaptureUIConfiguration *)self remoteDisplayIdentifier];
  [v6 appendFormat:@", remoteDisplayIdentifier=%@", v9];

  v10 = [(CMContinuityCaptureUIConfiguration *)self participantInfo];
  [v6 appendFormat:@", participantInfo=%@", v10];

  [v6 appendFormat:@", clientDeviceModel=%ld", -[CMContinuityCaptureUIConfiguration clientDeviceModel](self, "clientDeviceModel")];
  [v6 appendFormat:@", compositeState=%ld", -[CMContinuityCaptureUIConfiguration compositeState](self, "compositeState")];
  v11 = [(CMContinuityCaptureUIConfiguration *)self placementStepSkipped];
  [v6 appendFormat:@", placementSkipped=%@", v11];

  [v6 appendFormat:@", isDedicated=%d", -[CMContinuityCaptureUIConfiguration isDedicated](self, "isDedicated")];
  [v6 appendFormat:@", micOnly=%d", -[CMContinuityCaptureUIConfiguration micOnly](self, "micOnly")];
  [v6 appendString:@">"];
  v12 = [MEMORY[0x277CCACA8] stringWithString:v6];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CMContinuityCaptureUIConfiguration *)self applicationIdentifier];
  [v4 setApplicationIdentifier:v5];

  v6 = [(CMContinuityCaptureUIConfiguration *)self clientName];
  [v4 setClientName:v6];

  v7 = [(CMContinuityCaptureUIConfiguration *)self remoteDisplayIdentifier];
  [v4 setRemoteDisplayIdentifier:v7];

  v8 = [(CMContinuityCaptureUIConfiguration *)self participantInfo];
  v9 = [v8 copy];
  [v4 setParticipantInfo:v9];

  [v4 setClientDeviceModel:{-[CMContinuityCaptureUIConfiguration clientDeviceModel](self, "clientDeviceModel")}];
  [v4 setCompositeState:{-[CMContinuityCaptureUIConfiguration compositeState](self, "compositeState")}];
  v10 = [(CMContinuityCaptureUIConfiguration *)self placementStepSkipped];
  [v4 setPlacementStepSkipped:v10];

  [v4 setIsDedicated:{-[CMContinuityCaptureUIConfiguration isDedicated](self, "isDedicated")}];
  [v4 setMicOnly:{-[CMContinuityCaptureUIConfiguration micOnly](self, "micOnly")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    if ([(CMContinuityCaptureUIConfiguration *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v6 = [(CMContinuityCaptureUIConfiguration *)v5 applicationIdentifier];
      v7 = [(CMContinuityCaptureUIConfiguration *)self applicationIdentifier];
      v8 = [v6 isEqual:v7];

      if (!v8)
      {
        goto LABEL_18;
      }

      v9 = [(CMContinuityCaptureUIConfiguration *)v5 clientName];
      v10 = [(CMContinuityCaptureUIConfiguration *)self clientName];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_18;
      }

      v12 = [(CMContinuityCaptureUIConfiguration *)v5 remoteDisplayIdentifier];
      v13 = [(CMContinuityCaptureUIConfiguration *)self remoteDisplayIdentifier];
      v14 = [v12 isEqualToString:v13];

      if (!v14)
      {
        goto LABEL_18;
      }

      v15 = [(CMContinuityCaptureUIConfiguration *)v5 participantInfo];
      if (v15 || ([(CMContinuityCaptureUIConfiguration *)self participantInfo], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v16 = [(CMContinuityCaptureUIConfiguration *)v5 participantInfo];
        v17 = [(CMContinuityCaptureUIConfiguration *)self participantInfo];
        v18 = [v16 isEqual:v17];

        if (v15)
        {

          if (!v18)
          {
            goto LABEL_18;
          }
        }

        else
        {

          if ((v18 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      v20 = [(CMContinuityCaptureUIConfiguration *)v5 clientDeviceModel];
      if (v20 == [(CMContinuityCaptureUIConfiguration *)self clientDeviceModel])
      {
        v21 = [(CMContinuityCaptureUIConfiguration *)v5 compositeState];
        if (v21 == [(CMContinuityCaptureUIConfiguration *)self compositeState])
        {
          v22 = [(CMContinuityCaptureUIConfiguration *)v5 placementStepSkipped];
          v23 = [(CMContinuityCaptureUIConfiguration *)self placementStepSkipped];

          if (v22 == v23)
          {
            v24 = [(CMContinuityCaptureUIConfiguration *)v5 isDedicated];
            if (v24 == [(CMContinuityCaptureUIConfiguration *)self isDedicated])
            {
              v26 = [(CMContinuityCaptureUIConfiguration *)v5 micOnly];
              v19 = v26 ^ [(CMContinuityCaptureUIConfiguration *)self micOnly]^ 1;
              goto LABEL_19;
            }
          }
        }
      }

LABEL_18:
      LOBYTE(v19) = 0;
LABEL_19:

      goto LABEL_20;
    }

    LOBYTE(v19) = 0;
  }

LABEL_20:

  return v19;
}

@end