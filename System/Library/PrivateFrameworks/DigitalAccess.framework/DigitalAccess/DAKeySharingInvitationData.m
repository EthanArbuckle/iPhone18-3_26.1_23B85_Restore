@interface DAKeySharingInvitationData
- (DAKeySharingInvitationData)initWithCoder:(id)a3;
- (DAKeySharingInvitationData)initWithSessionUUID:(id)a3 invitationIdentifier:(id)a4 friendKeyIdentifier:(id)a5 sharingTarget:(int64_t)a6 state:(int64_t)a7 vehicleEnteredPasscode:(id)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAKeySharingInvitationData

- (DAKeySharingInvitationData)initWithSessionUUID:(id)a3 invitationIdentifier:(id)a4 friendKeyIdentifier:(id)a5 sharingTarget:(int64_t)a6 state:(int64_t)a7 vehicleEnteredPasscode:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = DAKeySharingInvitationData;
  v18 = [(DAKeySharingInvitationData *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sharingSessionIdentifier, a3);
    objc_storeStrong(&v19->_invitationIdentifier, a4);
    objc_storeStrong(&v19->_friendKeyIdentifier, a5);
    v19->_sharingTargetType = a6;
    v19->_invitationState = a7;
    objc_storeStrong(&v19->_vehicleEnteredPasscode, a8);
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DAKeySharingInvitationData *)self sharingSessionIdentifier];
  [v4 encodeObject:v5 forKey:@"sharingSessionIdentifier"];

  v6 = [(DAKeySharingInvitationData *)self invitationIdentifier];
  [v4 encodeObject:v6 forKey:@"invitationIdentifier"];

  v7 = [(DAKeySharingInvitationData *)self friendKeyIdentifier];
  [v4 encodeObject:v7 forKey:@"friendKeyIdentifier"];

  [v4 encodeInteger:-[DAKeySharingInvitationData sharingTargetType](self forKey:{"sharingTargetType"), @"sharingTargetType"}];
  [v4 encodeInteger:-[DAKeySharingInvitationData invitationState](self forKey:{"invitationState"), @"invitationState"}];
  v8 = [(DAKeySharingInvitationData *)self vehicleEnteredPasscode];
  [v4 encodeObject:v8 forKey:@"vehicleEnteredPasscode"];
}

- (DAKeySharingInvitationData)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DAKeySharingInvitationData;
  v5 = [(DAKeySharingInvitationData *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionIdentifier"];
    sharingSessionIdentifier = v5->_sharingSessionIdentifier;
    v5->_sharingSessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationIdentifier"];
    invitationIdentifier = v5->_invitationIdentifier;
    v5->_invitationIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"friendKeyIdentifier"];
    friendKeyIdentifier = v5->_friendKeyIdentifier;
    v5->_friendKeyIdentifier = v10;

    v5->_sharingTargetType = [v4 decodeIntegerForKey:@"sharingTargetType"];
    v5->_invitationState = [v4 decodeIntegerForKey:@"invitationState"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleEnteredPasscode"];
    vehicleEnteredPasscode = v5->_vehicleEnteredPasscode;
    v5->_vehicleEnteredPasscode = v12;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SessionUUID           : %@\n", self->_sharingSessionIdentifier];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invitation ID         : %@\n", self->_invitationIdentifier];
  [v3 appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Friend Key ID         : %@\n", self->_friendKeyIdentifier];
  [v3 appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sharing Target        : %ld\n", self->_sharingTargetType];
  [v3 appendString:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invitation State      : %ld\n", self->_invitationState];
  [v3 appendString:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"VEP length            : %ld", -[NSString length](self->_vehicleEnteredPasscode, "length")];
  [v3 appendString:v9];

  return v3;
}

@end