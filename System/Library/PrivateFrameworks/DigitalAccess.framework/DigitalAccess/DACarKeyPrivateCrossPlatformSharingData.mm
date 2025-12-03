@interface DACarKeyPrivateCrossPlatformSharingData
- (DACarKeyPrivateCrossPlatformSharingData)initWithCoder:(id)coder;
- (DACarKeyPrivateCrossPlatformSharingData)initWithVehicleEnteredPasscode:(id)passcode pairedEntityIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DACarKeyPrivateCrossPlatformSharingData

- (DACarKeyPrivateCrossPlatformSharingData)initWithVehicleEnteredPasscode:(id)passcode pairedEntityIdentifier:(id)identifier
{
  passcodeCopy = passcode;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = DACarKeyPrivateCrossPlatformSharingData;
  v9 = [(DACarKeyPrivateCrossPlatformSharingData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vehicleEnteredPasscode, passcode);
    objc_storeStrong(&v10->_pairedEntityIdentifier, identifier);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[DACarKeyPrivateCrossPlatformSharingData allocWithZone:](DACarKeyPrivateCrossPlatformSharingData init];
  if (v5)
  {
    v6 = [(NSString *)self->_vehicleEnteredPasscode copyWithZone:zone];
    vehicleEnteredPasscode = v5->_vehicleEnteredPasscode;
    v5->_vehicleEnteredPasscode = v6;

    v8 = [(NSString *)self->_pairedEntityIdentifier copyWithZone:zone];
    pairedEntityIdentifier = v5->_pairedEntityIdentifier;
    v5->_pairedEntityIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  vehicleEnteredPasscode = [(DACarKeyPrivateCrossPlatformSharingData *)self vehicleEnteredPasscode];
  [coderCopy encodeObject:vehicleEnteredPasscode forKey:@"vehicleEnteredPasscode"];

  pairedEntityIdentifier = [(DACarKeyPrivateCrossPlatformSharingData *)self pairedEntityIdentifier];
  [coderCopy encodeObject:pairedEntityIdentifier forKey:@"pairedEntityIdentifier"];
}

- (DACarKeyPrivateCrossPlatformSharingData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DACarKeyPrivateCrossPlatformSharingData;
  v5 = [(DACarKeyPrivateCrossPlatformSharingData *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleEnteredPasscode"];
    vehicleEnteredPasscode = v5->_vehicleEnteredPasscode;
    v5->_vehicleEnteredPasscode = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairedEntityIdentifier"];
    pairedEntityIdentifier = v5->_pairedEntityIdentifier;
    v5->_pairedEntityIdentifier = v8;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"VEP length                : %d\n", -[NSString length](self->_vehicleEnteredPasscode, "length")];
  [string appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Paired Entity Identifier  : %@\n", self->_pairedEntityIdentifier];
  [string appendString:v5];

  return string;
}

@end