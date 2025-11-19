@interface DAAlishaKeyInformation
+ (id)withEndpoint:(id)a3;
- (DAAlishaKeyInformation)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAAlishaKeyInformation

+ (id)withEndpoint:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 friendlyName];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  v7 = [v3 subjectIdentifier];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  v9 = [v3 readerInfo];
  v10 = *(v4 + 32);
  *(v4 + 32) = v9;

  v11 = [v3 invitationIdentifier];
  v12 = *(v4 + 40);
  *(v4 + 40) = v11;

  v13 = [v3 sharingSessionUUID];
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CCAD78]);
    v15 = [v3 sharingSessionUUID];
    v16 = [v14 initWithUUIDString:v15];
    v17 = *(v4 + 48);
    *(v4 + 48) = v16;
  }

  else
  {
    v15 = *(v4 + 48);
    *(v4 + 48) = 0;
  }

  v18 = [v3 ownerIDSIdentifier];
  v19 = *(v4 + 56);
  *(v4 + 56) = v18;

  v20 = [v3 trackingReceipt];
  v21 = *(v4 + 64);
  *(v4 + 64) = v20;

  v22 = [v3 revocationAttestation];
  v23 = *(v4 + 72);
  *(v4 + 72) = v22;

  v24 = [v3 trackingRequest];
  if (v24)
  {
    v25 = v24;
    v26 = [v3 trackingRequest];
    v47 = 0;
    v27 = [DAAlishaKeyEncryptedRequest decodeWithData:v26 error:&v47];
    v28 = v47;
    v29 = *(v4 + 80);
    *(v4 + 80) = v27;

    if (v28)
    {
      NSLog(&cfstr_Daalishakeyenc.isa, v28);
    }
  }

  else
  {
    v30 = *(v4 + 80);
    *(v4 + 80) = 0;

    v28 = 0;
  }

  v31 = [KmlDeviceConfigurationData alloc];
  v32 = [v3 deviceConfiguration];
  v33 = [(KmlDeviceConfigurationData *)v31 initWithData:v32];

  *(v4 + 8) = [(KmlDeviceConfigurationData *)v33 isFriendImmoTokenOrSlotOnline];
  v34 = [(KmlDeviceConfigurationData *)v33 readerSupportedTransports];
  v35 = *(v4 + 96);
  *(v4 + 96) = v34;

  *(v4 + 9) = [(KmlDeviceConfigurationData *)v33 sharingPasswordRequired];
  v36 = objc_alloc(MEMORY[0x277D82418]);
  v37 = [v3 readerInfo];
  v38 = [v36 initWithReaderInformation:v37];

  v39 = [v38 manufacturer];
  v40 = [v38 brand];
  v41 = [v3 readerConfigID];
  v42 = SESEndPointCarKeyDowngradeVersionSetting();

  v43 = [[KmlVersions alloc] initWithEndpoint:v3 downgradeFrameworkSetting:v42];
  *(v4 + 104) = [(KmlVersions *)v43 agreedKmlVehicleVersion];
  *(v4 + 112) = [(KmlVersions *)v43 agreedAppletVehicleVersion];
  *(v4 + 120) = [(KmlVersions *)v43 agreedKmlVehicleServerVersion];
  v44 = [v3 configuration];
  LODWORD(v41) = [v44 opt2];

  *(v4 + 11) = kmlUtilIsFleetKey(v41);
  *(v4 + 10) = kmlUtilIsServerIssuedKey(v41);
  v45 = [v3 longTermSharedSecret];
  *(v4 + 88) = [v45 length];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(DAAlishaKeyInformation *)self name];
  [v14 encodeObject:v4 forKey:@"name"];

  v5 = [(DAAlishaKeyInformation *)self localIdentifier];
  [v14 encodeObject:v5 forKey:@"localIdentifier"];

  v6 = [(DAAlishaKeyInformation *)self pairedEntityIdentifier];
  [v14 encodeObject:v6 forKey:@"pairedEntityIdentifier"];

  v7 = [(DAAlishaKeyInformation *)self invitationIdentifier];
  [v14 encodeObject:v7 forKey:@"invitationIdentifier"];

  v8 = [(DAAlishaKeyInformation *)self sharingSessionUUID];
  [v14 encodeObject:v8 forKey:@"sharingSessionUUID"];

  v9 = [(DAAlishaKeyInformation *)self ownerIDSIdentifier];
  [v14 encodeObject:v9 forKey:@"ownerIDSIdentifier"];

  v10 = [(DAAlishaKeyInformation *)self trackingReceipt];
  [v14 encodeObject:v10 forKey:@"trackingReceipt"];

  v11 = [(DAAlishaKeyInformation *)self revocationAttestation];
  [v14 encodeObject:v11 forKey:@"revocationAttestation"];

  v12 = [(DAAlishaKeyInformation *)self trackingRequest];
  [v14 encodeObject:v12 forKey:@"trackingRequest"];

  [v14 encodeBool:-[DAAlishaKeyInformation onlineImmobilizerToken](self forKey:{"onlineImmobilizerToken"), @"onlineImmobilizerToken"}];
  v13 = [(DAAlishaKeyInformation *)self supportedTransports];
  [v14 encodeObject:v13 forKey:@"supportedTransports"];

  [v14 encodeBool:-[DAAlishaKeyInformation vehicleSupportsSharingPassword](self forKey:{"vehicleSupportsSharingPassword"), @"vehicleSupportsSharingPassword"}];
  [v14 encodeInt:-[DAAlishaKeyInformation longTermSharedSecretLength](self forKey:{"longTermSharedSecretLength"), @"longTermSharedSecretLength"}];
  [v14 encodeInt:-[DAAlishaKeyInformation agreedFrameworkVersion](self forKey:{"agreedFrameworkVersion"), @"agreedFrameworkVersion"}];
  [v14 encodeInt:-[DAAlishaKeyInformation agreedAppletVersion](self forKey:{"agreedAppletVersion"), @"agreedAppletVersion"}];
  [v14 encodeInt:-[DAAlishaKeyInformation agreedVehicleServerVersion](self forKey:{"agreedVehicleServerVersion"), @"agreedVehicleServerVersion"}];
  [v14 encodeBool:-[DAAlishaKeyInformation fleetVehicle](self forKey:{"fleetVehicle"), @"isFleetVehicle"}];
  [v14 encodeBool:-[DAAlishaKeyInformation serverIssued](self forKey:{"serverIssued"), @"isServerIssued"}];
}

- (DAAlishaKeyInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = DAAlishaKeyInformation;
  v5 = [(DAAlishaKeyInformation *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localIdentifier"];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairedEntityIdentifier"];
    pairedEntityIdentifier = v5->_pairedEntityIdentifier;
    v5->_pairedEntityIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationIdentifier"];
    invitationIdentifier = v5->_invitationIdentifier;
    v5->_invitationIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionUUID"];
    sharingSessionUUID = v5->_sharingSessionUUID;
    v5->_sharingSessionUUID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerIDSIdentifier"];
    ownerIDSIdentifier = v5->_ownerIDSIdentifier;
    v5->_ownerIDSIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackingReceipt"];
    trackingReceipt = v5->_trackingReceipt;
    v5->_trackingReceipt = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"revocationAttestation"];
    revocationAttestation = v5->_revocationAttestation;
    v5->_revocationAttestation = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackingRequest"];
    trackingRequest = v5->_trackingRequest;
    v5->_trackingRequest = v22;

    v5->_onlineImmobilizerToken = [v4 decodeBoolForKey:@"onlineImmobilizerToken"];
    v24 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedTransports"];
    supportedTransports = v5->_supportedTransports;
    v5->_supportedTransports = v24;

    v5->_vehicleSupportsSharingPassword = [v4 decodeBoolForKey:@"vehicleSupportsSharingPassword"];
    v5->_longTermSharedSecretLength = [v4 decodeIntForKey:@"longTermSharedSecretLength"];
    v5->_agreedFrameworkVersion = [v4 decodeIntForKey:@"agreedFrameworkVersion"];
    v5->_agreedAppletVersion = [v4 decodeIntForKey:@"agreedAppletVersion"];
    v5->_agreedVehicleServerVersion = [v4 decodeIntForKey:@"agreedVehicleServerVersion"];
    v5->_fleetVehicle = [v4 decodeBoolForKey:@"isFleetVehicle"];
    v5->_serverIssued = [v4 decodeBoolForKey:@"isServerIssued"];
  }

  return v5;
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"Alisha Key Information:\n"];
  [v3 appendFormat:@"    KeyName         : %@\n", self->_name];
  [v3 appendFormat:@"    KeyLocalId      : %@\n", self->_localIdentifier];
  [v3 appendFormat:@"    ReaderId        : %@\n", self->_pairedEntityIdentifier];
  [v3 appendFormat:@"    InvitationId    : %@\n", self->_invitationIdentifier];
  [v3 appendFormat:@"    Session UUID    : %@\n", self->_sharingSessionUUID];
  [v3 appendFormat:@"    OwnerIDSId      : %@\n", self->_ownerIDSIdentifier];
  [v3 appendFormat:@"    OnlineImmoToken : %d\n", self->_onlineImmobilizerToken];
  if (self->_fleetVehicle)
  {
    v4 = @"Fleet";
  }

  else
  {
    v4 = @"Private";
  }

  [v3 appendFormat:@"    VehicleType     : %@\n", v4];
  if (self->_serverIssued)
  {
    v5 = @"Server";
  }

  else
  {
    v5 = @"Device";
  }

  [v3 appendFormat:@"    KeyIssueSource  : %@\n", v5];
  [v3 appendFormat:@"    VEP supported   : %d\n", self->_vehicleSupportsSharingPassword];
  [v3 appendFormat:@"    LongTermSecretLength   : %lu\n", self->_longTermSharedSecretLength];
  [v3 appendFormat:@"    SupportedTransports :"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_supportedTransports;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = DAKeyTransportTypeAsString([*(*(&v16 + 1) + 8 * i) shortValue]);
        [v3 appendFormat:@"%@, ", v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = kmlUtilHexStringFromData(self->_trackingReceipt);
  [v3 appendFormat:@"\n  TrackingReceipt : %@\n", v12];

  v13 = kmlUtilHexStringFromData(self->_revocationAttestation);
  [v3 appendFormat:@"    RevocationAttestation : %@\n", v13];

  [v3 appendFormat:@"    TrackingRequest : { %@ }\n", self->_trackingRequest];
  [v3 appendFormat:@"    AgreedFrameworkVersion       : %02lx\n", self->_agreedFrameworkVersion];
  [v3 appendFormat:@"    AgreedAppletVersion          : %02lx\n", self->_agreedAppletVersion];
  [v3 appendFormat:@"    AgreedVehicleServerVersion   : %02lx\n", self->_agreedVehicleServerVersion];
  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

@end