@interface CRKRequestCertificatesIDSMessage
+ (id)instanceWithDictionary:(id)a3;
+ (id)messageWithControlGroupIdentifier:(id)a3 destinationDeviceIdentifier:(id)a4 sourceRole:(int64_t)a5 destinationRole:(int64_t)a6 requesterCertificate:(id)a7;
- (CRKRequestCertificatesIDSMessage)initWithRequestIdentifier:(id)a3 controlGroupIdentifier:(id)a4 destinationDeviceIdentifier:(id)a5 sourceRole:(int64_t)a6 destinationRole:(int64_t)a7 requesterCertificate:(id)a8;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKRequestCertificatesIDSMessage

- (CRKRequestCertificatesIDSMessage)initWithRequestIdentifier:(id)a3 controlGroupIdentifier:(id)a4 destinationDeviceIdentifier:(id)a5 sourceRole:(int64_t)a6 destinationRole:(int64_t)a7 requesterCertificate:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = CRKRequestCertificatesIDSMessage;
  v19 = [(CRKRequestCertificatesIDSMessage *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_requestIdentifier, a3);
    objc_storeStrong(&v20->_controlGroupIdentifier, a4);
    v21 = [v17 copy];
    destinationDeviceIdentifier = v20->_destinationDeviceIdentifier;
    v20->_destinationDeviceIdentifier = v21;

    v20->_sourceRole = a6;
    v20->_destinationRole = a7;
    v23 = [v18 copy];
    requesterCertificate = v20->_requesterCertificate;
    v20->_requesterCertificate = v23;
  }

  return v20;
}

+ (id)messageWithControlGroupIdentifier:(id)a3 destinationDeviceIdentifier:(id)a4 sourceRole:(int64_t)a5 destinationRole:(int64_t)a6 requesterCertificate:(id)a7
{
  v12 = MEMORY[0x277CCAD78];
  v13 = a7;
  v14 = a4;
  v15 = a3;
  v16 = [v12 UUID];
  v17 = [[a1 alloc] initWithRequestIdentifier:v16 controlGroupIdentifier:v15 destinationDeviceIdentifier:v14 sourceRole:a5 destinationRole:a6 requesterCertificate:v13];

  return v17;
}

- (NSDictionary)dictionaryValue
{
  v17[5] = *MEMORY[0x277D85DE8];
  v16[0] = @"RequestIdentifier";
  v3 = [(CRKRequestCertificatesIDSMessage *)self requestIdentifier];
  v4 = [v3 UUIDString];
  v17[0] = v4;
  v16[1] = @"ControlGroupIdentifier";
  v5 = [(CRKRequestCertificatesIDSMessage *)self controlGroupIdentifier];
  v6 = [v5 stringValue];
  v17[1] = v6;
  v16[2] = @"DestinationDeviceIdentifier";
  v7 = [(CRKRequestCertificatesIDSMessage *)self destinationDeviceIdentifier];
  v17[2] = v7;
  v16[3] = @"SourceRole";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKRequestCertificatesIDSMessage sourceRole](self, "sourceRole")}];
  v17[3] = v8;
  v16[4] = @"DestinationRole";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKRequestCertificatesIDSMessage destinationRole](self, "destinationRole")}];
  v17[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
  v11 = [v10 mutableCopy];

  v12 = [(CRKRequestCertificatesIDSMessage *)self requesterCertificate];

  if (v12)
  {
    v13 = [(CRKRequestCertificatesIDSMessage *)self requesterCertificate];
    [v11 setObject:v13 forKeyedSubscript:@"RequesterCertificate"];
  }

  v14 = [v11 copy];

  return v14;
}

+ (id)instanceWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"RequestIdentifier"];
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

  v8 = [v4 objectForKeyedSubscript:@"ControlGroupIdentifier"];
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

  v11 = [v4 objectForKeyedSubscript:@"DestinationDeviceIdentifier"];
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

  v14 = [v4 objectForKeyedSubscript:@"SourceRole"];
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

  v17 = [v4 objectForKeyedSubscript:@"DestinationRole"];
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

  v20 = [v4 objectForKeyedSubscript:@"RequesterCertificate"];

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
    v29 = a1;
    v30 = v7;
    v24 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
    v25 = [objc_alloc(MEMORY[0x277D04C00]) initWithString:v10];
    v26 = [v16 integerValue];
    v27 = [v19 integerValue];
    v23 = 0;
    if (v24 && v25 && v26 <= 1 && v27 <= 1)
    {
      v23 = [[v29 alloc] initWithRequestIdentifier:v24 controlGroupIdentifier:v25 destinationDeviceIdentifier:v13 sourceRole:v26 destinationRole:v27 requesterCertificate:v22];
    }

    v7 = v30;
  }

  return v23;
}

@end