@interface CMContinuityCaptureUIConfiguration
- (BOOL)isEqual:(id)equal;
- (CMContinuityCaptureUIConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMContinuityCaptureUIConfiguration

- (CMContinuityCaptureUIConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CMContinuityCaptureUIConfiguration;
  v5 = [(CMContinuityCaptureUIConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientName"];
    clientName = v5->_clientName;
    v5->_clientName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteDisplayIdentifier"];
    remoteDisplayIdentifier = v5->_remoteDisplayIdentifier;
    v5->_remoteDisplayIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"participantInfo"];
    participantInfo = v5->_participantInfo;
    v5->_participantInfo = v12;

    v5->_clientDeviceModel = [coderCopy decodeIntegerForKey:@"clientDeviceModel"];
    v5->_compositeState = [coderCopy decodeIntegerForKey:@"compositeState"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placementStepSkipped"];
    placementStepSkipped = v5->_placementStepSkipped;
    v5->_placementStepSkipped = v14;

    v5->_isDedicated = [coderCopy decodeBoolForKey:@"isDedicated"];
    v5->_micOnly = [coderCopy decodeBoolForKey:@"micOnly"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  applicationIdentifier = [(CMContinuityCaptureUIConfiguration *)self applicationIdentifier];
  [coderCopy encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];

  clientName = [(CMContinuityCaptureUIConfiguration *)self clientName];
  [coderCopy encodeObject:clientName forKey:@"clientName"];

  remoteDisplayIdentifier = [(CMContinuityCaptureUIConfiguration *)self remoteDisplayIdentifier];
  [coderCopy encodeObject:remoteDisplayIdentifier forKey:@"remoteDisplayIdentifier"];

  participantInfo = [(CMContinuityCaptureUIConfiguration *)self participantInfo];
  [coderCopy encodeObject:participantInfo forKey:@"participantInfo"];

  [coderCopy encodeInteger:-[CMContinuityCaptureUIConfiguration clientDeviceModel](self forKey:{"clientDeviceModel"), @"clientDeviceModel"}];
  [coderCopy encodeInteger:-[CMContinuityCaptureUIConfiguration compositeState](self forKey:{"compositeState"), @"compositeState"}];
  placementStepSkipped = [(CMContinuityCaptureUIConfiguration *)self placementStepSkipped];
  [coderCopy encodeObject:placementStepSkipped forKey:@"placementStepSkipped"];

  [coderCopy encodeBool:-[CMContinuityCaptureUIConfiguration isDedicated](self forKey:{"isDedicated"), @"isDedicated"}];
  [coderCopy encodeBool:-[CMContinuityCaptureUIConfiguration micOnly](self forKey:{"micOnly"), @"micOnly"}];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  applicationIdentifier = [(CMContinuityCaptureUIConfiguration *)self applicationIdentifier];
  [v6 appendFormat:@", applicationIdentifier=%@", applicationIdentifier];

  clientName = [(CMContinuityCaptureUIConfiguration *)self clientName];
  [v6 appendFormat:@", clientName=%@", clientName];

  remoteDisplayIdentifier = [(CMContinuityCaptureUIConfiguration *)self remoteDisplayIdentifier];
  [v6 appendFormat:@", remoteDisplayIdentifier=%@", remoteDisplayIdentifier];

  participantInfo = [(CMContinuityCaptureUIConfiguration *)self participantInfo];
  [v6 appendFormat:@", participantInfo=%@", participantInfo];

  [v6 appendFormat:@", clientDeviceModel=%ld", -[CMContinuityCaptureUIConfiguration clientDeviceModel](self, "clientDeviceModel")];
  [v6 appendFormat:@", compositeState=%ld", -[CMContinuityCaptureUIConfiguration compositeState](self, "compositeState")];
  placementStepSkipped = [(CMContinuityCaptureUIConfiguration *)self placementStepSkipped];
  [v6 appendFormat:@", placementSkipped=%@", placementStepSkipped];

  [v6 appendFormat:@", isDedicated=%d", -[CMContinuityCaptureUIConfiguration isDedicated](self, "isDedicated")];
  [v6 appendFormat:@", micOnly=%d", -[CMContinuityCaptureUIConfiguration micOnly](self, "micOnly")];
  [v6 appendString:@">"];
  v12 = [MEMORY[0x277CCACA8] stringWithString:v6];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  applicationIdentifier = [(CMContinuityCaptureUIConfiguration *)self applicationIdentifier];
  [v4 setApplicationIdentifier:applicationIdentifier];

  clientName = [(CMContinuityCaptureUIConfiguration *)self clientName];
  [v4 setClientName:clientName];

  remoteDisplayIdentifier = [(CMContinuityCaptureUIConfiguration *)self remoteDisplayIdentifier];
  [v4 setRemoteDisplayIdentifier:remoteDisplayIdentifier];

  participantInfo = [(CMContinuityCaptureUIConfiguration *)self participantInfo];
  v9 = [participantInfo copy];
  [v4 setParticipantInfo:v9];

  [v4 setClientDeviceModel:{-[CMContinuityCaptureUIConfiguration clientDeviceModel](self, "clientDeviceModel")}];
  [v4 setCompositeState:{-[CMContinuityCaptureUIConfiguration compositeState](self, "compositeState")}];
  placementStepSkipped = [(CMContinuityCaptureUIConfiguration *)self placementStepSkipped];
  [v4 setPlacementStepSkipped:placementStepSkipped];

  [v4 setIsDedicated:{-[CMContinuityCaptureUIConfiguration isDedicated](self, "isDedicated")}];
  [v4 setMicOnly:{-[CMContinuityCaptureUIConfiguration micOnly](self, "micOnly")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    if ([(CMContinuityCaptureUIConfiguration *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      applicationIdentifier = [(CMContinuityCaptureUIConfiguration *)v5 applicationIdentifier];
      applicationIdentifier2 = [(CMContinuityCaptureUIConfiguration *)self applicationIdentifier];
      v8 = [applicationIdentifier isEqual:applicationIdentifier2];

      if (!v8)
      {
        goto LABEL_18;
      }

      clientName = [(CMContinuityCaptureUIConfiguration *)v5 clientName];
      clientName2 = [(CMContinuityCaptureUIConfiguration *)self clientName];
      v11 = [clientName isEqual:clientName2];

      if (!v11)
      {
        goto LABEL_18;
      }

      remoteDisplayIdentifier = [(CMContinuityCaptureUIConfiguration *)v5 remoteDisplayIdentifier];
      remoteDisplayIdentifier2 = [(CMContinuityCaptureUIConfiguration *)self remoteDisplayIdentifier];
      v14 = [remoteDisplayIdentifier isEqualToString:remoteDisplayIdentifier2];

      if (!v14)
      {
        goto LABEL_18;
      }

      participantInfo = [(CMContinuityCaptureUIConfiguration *)v5 participantInfo];
      if (participantInfo || ([(CMContinuityCaptureUIConfiguration *)self participantInfo], (remoteDisplayIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        participantInfo2 = [(CMContinuityCaptureUIConfiguration *)v5 participantInfo];
        participantInfo3 = [(CMContinuityCaptureUIConfiguration *)self participantInfo];
        v18 = [participantInfo2 isEqual:participantInfo3];

        if (participantInfo)
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

      clientDeviceModel = [(CMContinuityCaptureUIConfiguration *)v5 clientDeviceModel];
      if (clientDeviceModel == [(CMContinuityCaptureUIConfiguration *)self clientDeviceModel])
      {
        compositeState = [(CMContinuityCaptureUIConfiguration *)v5 compositeState];
        if (compositeState == [(CMContinuityCaptureUIConfiguration *)self compositeState])
        {
          placementStepSkipped = [(CMContinuityCaptureUIConfiguration *)v5 placementStepSkipped];
          placementStepSkipped2 = [(CMContinuityCaptureUIConfiguration *)self placementStepSkipped];

          if (placementStepSkipped == placementStepSkipped2)
          {
            isDedicated = [(CMContinuityCaptureUIConfiguration *)v5 isDedicated];
            if (isDedicated == [(CMContinuityCaptureUIConfiguration *)self isDedicated])
            {
              micOnly = [(CMContinuityCaptureUIConfiguration *)v5 micOnly];
              v19 = micOnly ^ [(CMContinuityCaptureUIConfiguration *)self micOnly]^ 1;
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