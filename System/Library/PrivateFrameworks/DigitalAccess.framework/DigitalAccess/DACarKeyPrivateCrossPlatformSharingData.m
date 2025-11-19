@interface DACarKeyPrivateCrossPlatformSharingData
- (DACarKeyPrivateCrossPlatformSharingData)initWithCoder:(id)a3;
- (DACarKeyPrivateCrossPlatformSharingData)initWithVehicleEnteredPasscode:(id)a3 pairedEntityIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DACarKeyPrivateCrossPlatformSharingData

- (DACarKeyPrivateCrossPlatformSharingData)initWithVehicleEnteredPasscode:(id)a3 pairedEntityIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DACarKeyPrivateCrossPlatformSharingData;
  v9 = [(DACarKeyPrivateCrossPlatformSharingData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_vehicleEnteredPasscode, a3);
    objc_storeStrong(&v10->_pairedEntityIdentifier, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[DACarKeyPrivateCrossPlatformSharingData allocWithZone:](DACarKeyPrivateCrossPlatformSharingData init];
  if (v5)
  {
    v6 = [(NSString *)self->_vehicleEnteredPasscode copyWithZone:a3];
    vehicleEnteredPasscode = v5->_vehicleEnteredPasscode;
    v5->_vehicleEnteredPasscode = v6;

    v8 = [(NSString *)self->_pairedEntityIdentifier copyWithZone:a3];
    pairedEntityIdentifier = v5->_pairedEntityIdentifier;
    v5->_pairedEntityIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DACarKeyPrivateCrossPlatformSharingData *)self vehicleEnteredPasscode];
  [v4 encodeObject:v5 forKey:@"vehicleEnteredPasscode"];

  v6 = [(DACarKeyPrivateCrossPlatformSharingData *)self pairedEntityIdentifier];
  [v4 encodeObject:v6 forKey:@"pairedEntityIdentifier"];
}

- (DACarKeyPrivateCrossPlatformSharingData)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DACarKeyPrivateCrossPlatformSharingData;
  v5 = [(DACarKeyPrivateCrossPlatformSharingData *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleEnteredPasscode"];
    vehicleEnteredPasscode = v5->_vehicleEnteredPasscode;
    v5->_vehicleEnteredPasscode = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairedEntityIdentifier"];
    pairedEntityIdentifier = v5->_pairedEntityIdentifier;
    v5->_pairedEntityIdentifier = v8;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"VEP length                : %d\n", -[NSString length](self->_vehicleEnteredPasscode, "length")];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Paired Entity Identifier  : %@\n", self->_pairedEntityIdentifier];
  [v3 appendString:v5];

  return v3;
}

@end