@interface CRKRequestCertificatesIDSMessage
+ (id)instanceWithDictionary:(id)dictionary;
+ (id)messageWithControlGroupIdentifier:(id)identifier destinationDeviceIdentifier:(id)deviceIdentifier sourceRole:(int64_t)role destinationRole:(int64_t)destinationRole requesterCertificate:(id)certificate;
- (CRKRequestCertificatesIDSMessage)initWithRequestIdentifier:(id)identifier controlGroupIdentifier:(id)groupIdentifier destinationDeviceIdentifier:(id)deviceIdentifier sourceRole:(int64_t)role destinationRole:(int64_t)destinationRole requesterCertificate:(id)certificate;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKRequestCertificatesIDSMessage

- (CRKRequestCertificatesIDSMessage)initWithRequestIdentifier:(id)identifier controlGroupIdentifier:(id)groupIdentifier destinationDeviceIdentifier:(id)deviceIdentifier sourceRole:(int64_t)role destinationRole:(int64_t)destinationRole requesterCertificate:(id)certificate
{
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  deviceIdentifierCopy = deviceIdentifier;
  certificateCopy = certificate;
  v26.receiver = self;
  v26.super_class = CRKRequestCertificatesIDSMessage;
  v19 = [(CRKRequestCertificatesIDSMessage *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_requestIdentifier, identifier);
    objc_storeStrong(&v20->_controlGroupIdentifier, groupIdentifier);
    v21 = [deviceIdentifierCopy copy];
    destinationDeviceIdentifier = v20->_destinationDeviceIdentifier;
    v20->_destinationDeviceIdentifier = v21;

    v20->_sourceRole = role;
    v20->_destinationRole = destinationRole;
    v23 = [certificateCopy copy];
    requesterCertificate = v20->_requesterCertificate;
    v20->_requesterCertificate = v23;
  }

  return v20;
}

+ (id)messageWithControlGroupIdentifier:(id)identifier destinationDeviceIdentifier:(id)deviceIdentifier sourceRole:(int64_t)role destinationRole:(int64_t)destinationRole requesterCertificate:(id)certificate
{
  v12 = MEMORY[0x277CCAD78];
  certificateCopy = certificate;
  deviceIdentifierCopy = deviceIdentifier;
  identifierCopy = identifier;
  uUID = [v12 UUID];
  v17 = [[self alloc] initWithRequestIdentifier:uUID controlGroupIdentifier:identifierCopy destinationDeviceIdentifier:deviceIdentifierCopy sourceRole:role destinationRole:destinationRole requesterCertificate:certificateCopy];

  return v17;
}

- (NSDictionary)dictionaryValue
{
  v17[5] = *MEMORY[0x277D85DE8];
  v16[0] = @"RequestIdentifier";
  requestIdentifier = [(CRKRequestCertificatesIDSMessage *)self requestIdentifier];
  uUIDString = [requestIdentifier UUIDString];
  v17[0] = uUIDString;
  v16[1] = @"ControlGroupIdentifier";
  controlGroupIdentifier = [(CRKRequestCertificatesIDSMessage *)self controlGroupIdentifier];
  stringValue = [controlGroupIdentifier stringValue];
  v17[1] = stringValue;
  v16[2] = @"DestinationDeviceIdentifier";
  destinationDeviceIdentifier = [(CRKRequestCertificatesIDSMessage *)self destinationDeviceIdentifier];
  v17[2] = destinationDeviceIdentifier;
  v16[3] = @"SourceRole";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKRequestCertificatesIDSMessage sourceRole](self, "sourceRole")}];
  v17[3] = v8;
  v16[4] = @"DestinationRole";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKRequestCertificatesIDSMessage destinationRole](self, "destinationRole")}];
  v17[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
  v11 = [v10 mutableCopy];

  requesterCertificate = [(CRKRequestCertificatesIDSMessage *)self requesterCertificate];

  if (requesterCertificate)
  {
    requesterCertificate2 = [(CRKRequestCertificatesIDSMessage *)self requesterCertificate];
    [v11 setObject:requesterCertificate2 forKeyedSubscript:@"RequesterCertificate"];
  }

  v14 = [v11 copy];

  return v14;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"RequestIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"ControlGroupIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"DestinationDeviceIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [dictionaryCopy objectForKeyedSubscript:@"SourceRole"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [dictionaryCopy objectForKeyedSubscript:@"DestinationRole"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = [dictionaryCopy objectForKeyedSubscript:@"RequesterCertificate"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v23 = 0;
  if (v7 && v10 && v13 && v16 && v19)
  {
    selfCopy = self;
    v30 = v7;
    v24 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
    v25 = [objc_alloc(MEMORY[0x277D04C00]) initWithString:v10];
    integerValue = [v16 integerValue];
    integerValue2 = [v19 integerValue];
    v23 = 0;
    if (v24 && v25 && integerValue <= 1 && integerValue2 <= 1)
    {
      v23 = [[selfCopy alloc] initWithRequestIdentifier:v24 controlGroupIdentifier:v25 destinationDeviceIdentifier:v13 sourceRole:integerValue destinationRole:integerValue2 requesterCertificate:v22];
    }

    v7 = v30;
  }

  return v23;
}

@end