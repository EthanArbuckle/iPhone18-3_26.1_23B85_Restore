@interface DAAlishaKeyInformation
+ (id)withEndpoint:(id)endpoint;
- (DAAlishaKeyInformation)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAAlishaKeyInformation

+ (id)withEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v4 = objc_opt_new();
  friendlyName = [endpointCopy friendlyName];
  v6 = *(v4 + 16);
  *(v4 + 16) = friendlyName;

  subjectIdentifier = [endpointCopy subjectIdentifier];
  v8 = *(v4 + 24);
  *(v4 + 24) = subjectIdentifier;

  readerInfo = [endpointCopy readerInfo];
  v10 = *(v4 + 32);
  *(v4 + 32) = readerInfo;

  invitationIdentifier = [endpointCopy invitationIdentifier];
  v12 = *(v4 + 40);
  *(v4 + 40) = invitationIdentifier;

  sharingSessionUUID = [endpointCopy sharingSessionUUID];
  if (sharingSessionUUID)
  {
    v14 = objc_alloc(MEMORY[0x277CCAD78]);
    sharingSessionUUID2 = [endpointCopy sharingSessionUUID];
    v16 = [v14 initWithUUIDString:sharingSessionUUID2];
    v17 = *(v4 + 48);
    *(v4 + 48) = v16;
  }

  else
  {
    sharingSessionUUID2 = *(v4 + 48);
    *(v4 + 48) = 0;
  }

  ownerIDSIdentifier = [endpointCopy ownerIDSIdentifier];
  v19 = *(v4 + 56);
  *(v4 + 56) = ownerIDSIdentifier;

  trackingReceipt = [endpointCopy trackingReceipt];
  v21 = *(v4 + 64);
  *(v4 + 64) = trackingReceipt;

  revocationAttestation = [endpointCopy revocationAttestation];
  v23 = *(v4 + 72);
  *(v4 + 72) = revocationAttestation;

  trackingRequest = [endpointCopy trackingRequest];
  if (trackingRequest)
  {
    v25 = trackingRequest;
    trackingRequest2 = [endpointCopy trackingRequest];
    v47 = 0;
    v27 = [DAAlishaKeyEncryptedRequest decodeWithData:trackingRequest2 error:&v47];
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
  deviceConfiguration = [endpointCopy deviceConfiguration];
  v33 = [(KmlDeviceConfigurationData *)v31 initWithData:deviceConfiguration];

  *(v4 + 8) = [(KmlDeviceConfigurationData *)v33 isFriendImmoTokenOrSlotOnline];
  readerSupportedTransports = [(KmlDeviceConfigurationData *)v33 readerSupportedTransports];
  v35 = *(v4 + 96);
  *(v4 + 96) = readerSupportedTransports;

  *(v4 + 9) = [(KmlDeviceConfigurationData *)v33 sharingPasswordRequired];
  v36 = objc_alloc(MEMORY[0x277D82418]);
  readerInfo2 = [endpointCopy readerInfo];
  v38 = [v36 initWithReaderInformation:readerInfo2];

  manufacturer = [v38 manufacturer];
  brand = [v38 brand];
  readerConfigID = [endpointCopy readerConfigID];
  v42 = SESEndPointCarKeyDowngradeVersionSetting();

  v43 = [[KmlVersions alloc] initWithEndpoint:endpointCopy downgradeFrameworkSetting:v42];
  *(v4 + 104) = [(KmlVersions *)v43 agreedKmlVehicleVersion];
  *(v4 + 112) = [(KmlVersions *)v43 agreedAppletVehicleVersion];
  *(v4 + 120) = [(KmlVersions *)v43 agreedKmlVehicleServerVersion];
  configuration = [endpointCopy configuration];
  LODWORD(readerConfigID) = [configuration opt2];

  *(v4 + 11) = kmlUtilIsFleetKey(readerConfigID);
  *(v4 + 10) = kmlUtilIsServerIssuedKey(readerConfigID);
  longTermSharedSecret = [endpointCopy longTermSharedSecret];
  *(v4 + 88) = [longTermSharedSecret length];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(DAAlishaKeyInformation *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  localIdentifier = [(DAAlishaKeyInformation *)self localIdentifier];
  [coderCopy encodeObject:localIdentifier forKey:@"localIdentifier"];

  pairedEntityIdentifier = [(DAAlishaKeyInformation *)self pairedEntityIdentifier];
  [coderCopy encodeObject:pairedEntityIdentifier forKey:@"pairedEntityIdentifier"];

  invitationIdentifier = [(DAAlishaKeyInformation *)self invitationIdentifier];
  [coderCopy encodeObject:invitationIdentifier forKey:@"invitationIdentifier"];

  sharingSessionUUID = [(DAAlishaKeyInformation *)self sharingSessionUUID];
  [coderCopy encodeObject:sharingSessionUUID forKey:@"sharingSessionUUID"];

  ownerIDSIdentifier = [(DAAlishaKeyInformation *)self ownerIDSIdentifier];
  [coderCopy encodeObject:ownerIDSIdentifier forKey:@"ownerIDSIdentifier"];

  trackingReceipt = [(DAAlishaKeyInformation *)self trackingReceipt];
  [coderCopy encodeObject:trackingReceipt forKey:@"trackingReceipt"];

  revocationAttestation = [(DAAlishaKeyInformation *)self revocationAttestation];
  [coderCopy encodeObject:revocationAttestation forKey:@"revocationAttestation"];

  trackingRequest = [(DAAlishaKeyInformation *)self trackingRequest];
  [coderCopy encodeObject:trackingRequest forKey:@"trackingRequest"];

  [coderCopy encodeBool:-[DAAlishaKeyInformation onlineImmobilizerToken](self forKey:{"onlineImmobilizerToken"), @"onlineImmobilizerToken"}];
  supportedTransports = [(DAAlishaKeyInformation *)self supportedTransports];
  [coderCopy encodeObject:supportedTransports forKey:@"supportedTransports"];

  [coderCopy encodeBool:-[DAAlishaKeyInformation vehicleSupportsSharingPassword](self forKey:{"vehicleSupportsSharingPassword"), @"vehicleSupportsSharingPassword"}];
  [coderCopy encodeInt:-[DAAlishaKeyInformation longTermSharedSecretLength](self forKey:{"longTermSharedSecretLength"), @"longTermSharedSecretLength"}];
  [coderCopy encodeInt:-[DAAlishaKeyInformation agreedFrameworkVersion](self forKey:{"agreedFrameworkVersion"), @"agreedFrameworkVersion"}];
  [coderCopy encodeInt:-[DAAlishaKeyInformation agreedAppletVersion](self forKey:{"agreedAppletVersion"), @"agreedAppletVersion"}];
  [coderCopy encodeInt:-[DAAlishaKeyInformation agreedVehicleServerVersion](self forKey:{"agreedVehicleServerVersion"), @"agreedVehicleServerVersion"}];
  [coderCopy encodeBool:-[DAAlishaKeyInformation fleetVehicle](self forKey:{"fleetVehicle"), @"isFleetVehicle"}];
  [coderCopy encodeBool:-[DAAlishaKeyInformation serverIssued](self forKey:{"serverIssued"), @"isServerIssued"}];
}

- (DAAlishaKeyInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = DAAlishaKeyInformation;
  v5 = [(DAAlishaKeyInformation *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localIdentifier"];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairedEntityIdentifier"];
    pairedEntityIdentifier = v5->_pairedEntityIdentifier;
    v5->_pairedEntityIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationIdentifier"];
    invitationIdentifier = v5->_invitationIdentifier;
    v5->_invitationIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionUUID"];
    sharingSessionUUID = v5->_sharingSessionUUID;
    v5->_sharingSessionUUID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerIDSIdentifier"];
    ownerIDSIdentifier = v5->_ownerIDSIdentifier;
    v5->_ownerIDSIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingReceipt"];
    trackingReceipt = v5->_trackingReceipt;
    v5->_trackingReceipt = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"revocationAttestation"];
    revocationAttestation = v5->_revocationAttestation;
    v5->_revocationAttestation = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingRequest"];
    trackingRequest = v5->_trackingRequest;
    v5->_trackingRequest = v22;

    v5->_onlineImmobilizerToken = [coderCopy decodeBoolForKey:@"onlineImmobilizerToken"];
    v24 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedTransports"];
    supportedTransports = v5->_supportedTransports;
    v5->_supportedTransports = v24;

    v5->_vehicleSupportsSharingPassword = [coderCopy decodeBoolForKey:@"vehicleSupportsSharingPassword"];
    v5->_longTermSharedSecretLength = [coderCopy decodeIntForKey:@"longTermSharedSecretLength"];
    v5->_agreedFrameworkVersion = [coderCopy decodeIntForKey:@"agreedFrameworkVersion"];
    v5->_agreedAppletVersion = [coderCopy decodeIntForKey:@"agreedAppletVersion"];
    v5->_agreedVehicleServerVersion = [coderCopy decodeIntForKey:@"agreedVehicleServerVersion"];
    v5->_fleetVehicle = [coderCopy decodeBoolForKey:@"isFleetVehicle"];
    v5->_serverIssued = [coderCopy decodeBoolForKey:@"isServerIssued"];
  }

  return v5;
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"Alisha Key Information:\n"];
  [string appendFormat:@"    KeyName         : %@\n", self->_name];
  [string appendFormat:@"    KeyLocalId      : %@\n", self->_localIdentifier];
  [string appendFormat:@"    ReaderId        : %@\n", self->_pairedEntityIdentifier];
  [string appendFormat:@"    InvitationId    : %@\n", self->_invitationIdentifier];
  [string appendFormat:@"    Session UUID    : %@\n", self->_sharingSessionUUID];
  [string appendFormat:@"    OwnerIDSId      : %@\n", self->_ownerIDSIdentifier];
  [string appendFormat:@"    OnlineImmoToken : %d\n", self->_onlineImmobilizerToken];
  if (self->_fleetVehicle)
  {
    v4 = @"Fleet";
  }

  else
  {
    v4 = @"Private";
  }

  [string appendFormat:@"    VehicleType     : %@\n", v4];
  if (self->_serverIssued)
  {
    v5 = @"Server";
  }

  else
  {
    v5 = @"Device";
  }

  [string appendFormat:@"    KeyIssueSource  : %@\n", v5];
  [string appendFormat:@"    VEP supported   : %d\n", self->_vehicleSupportsSharingPassword];
  [string appendFormat:@"    LongTermSecretLength   : %lu\n", self->_longTermSharedSecretLength];
  [string appendFormat:@"    SupportedTransports :"];
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
        [string appendFormat:@"%@, ", v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = kmlUtilHexStringFromData(self->_trackingReceipt);
  [string appendFormat:@"\n  TrackingReceipt : %@\n", v12];

  v13 = kmlUtilHexStringFromData(self->_revocationAttestation);
  [string appendFormat:@"    RevocationAttestation : %@\n", v13];

  [string appendFormat:@"    TrackingRequest : { %@ }\n", self->_trackingRequest];
  [string appendFormat:@"    AgreedFrameworkVersion       : %02lx\n", self->_agreedFrameworkVersion];
  [string appendFormat:@"    AgreedAppletVersion          : %02lx\n", self->_agreedAppletVersion];
  [string appendFormat:@"    AgreedVehicleServerVersion   : %02lx\n", self->_agreedVehicleServerVersion];
  v14 = *MEMORY[0x277D85DE8];

  return string;
}

@end