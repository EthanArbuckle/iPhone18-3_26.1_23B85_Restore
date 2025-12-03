@interface DAKeySharingInvitationData
- (DAKeySharingInvitationData)initWithCoder:(id)coder;
- (DAKeySharingInvitationData)initWithSessionUUID:(id)d invitationIdentifier:(id)identifier friendKeyIdentifier:(id)keyIdentifier sharingTarget:(int64_t)target state:(int64_t)state vehicleEnteredPasscode:(id)passcode;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAKeySharingInvitationData

- (DAKeySharingInvitationData)initWithSessionUUID:(id)d invitationIdentifier:(id)identifier friendKeyIdentifier:(id)keyIdentifier sharingTarget:(int64_t)target state:(int64_t)state vehicleEnteredPasscode:(id)passcode
{
  dCopy = d;
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  passcodeCopy = passcode;
  v22.receiver = self;
  v22.super_class = DAKeySharingInvitationData;
  v18 = [(DAKeySharingInvitationData *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sharingSessionIdentifier, d);
    objc_storeStrong(&v19->_invitationIdentifier, identifier);
    objc_storeStrong(&v19->_friendKeyIdentifier, keyIdentifier);
    v19->_sharingTargetType = target;
    v19->_invitationState = state;
    objc_storeStrong(&v19->_vehicleEnteredPasscode, passcode);
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sharingSessionIdentifier = [(DAKeySharingInvitationData *)self sharingSessionIdentifier];
  [coderCopy encodeObject:sharingSessionIdentifier forKey:@"sharingSessionIdentifier"];

  invitationIdentifier = [(DAKeySharingInvitationData *)self invitationIdentifier];
  [coderCopy encodeObject:invitationIdentifier forKey:@"invitationIdentifier"];

  friendKeyIdentifier = [(DAKeySharingInvitationData *)self friendKeyIdentifier];
  [coderCopy encodeObject:friendKeyIdentifier forKey:@"friendKeyIdentifier"];

  [coderCopy encodeInteger:-[DAKeySharingInvitationData sharingTargetType](self forKey:{"sharingTargetType"), @"sharingTargetType"}];
  [coderCopy encodeInteger:-[DAKeySharingInvitationData invitationState](self forKey:{"invitationState"), @"invitationState"}];
  vehicleEnteredPasscode = [(DAKeySharingInvitationData *)self vehicleEnteredPasscode];
  [coderCopy encodeObject:vehicleEnteredPasscode forKey:@"vehicleEnteredPasscode"];
}

- (DAKeySharingInvitationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = DAKeySharingInvitationData;
  v5 = [(DAKeySharingInvitationData *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionIdentifier"];
    sharingSessionIdentifier = v5->_sharingSessionIdentifier;
    v5->_sharingSessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationIdentifier"];
    invitationIdentifier = v5->_invitationIdentifier;
    v5->_invitationIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"friendKeyIdentifier"];
    friendKeyIdentifier = v5->_friendKeyIdentifier;
    v5->_friendKeyIdentifier = v10;

    v5->_sharingTargetType = [coderCopy decodeIntegerForKey:@"sharingTargetType"];
    v5->_invitationState = [coderCopy decodeIntegerForKey:@"invitationState"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleEnteredPasscode"];
    vehicleEnteredPasscode = v5->_vehicleEnteredPasscode;
    v5->_vehicleEnteredPasscode = v12;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SessionUUID           : %@\n", self->_sharingSessionIdentifier];
  [string appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invitation ID         : %@\n", self->_invitationIdentifier];
  [string appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Friend Key ID         : %@\n", self->_friendKeyIdentifier];
  [string appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sharing Target        : %ld\n", self->_sharingTargetType];
  [string appendString:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invitation State      : %ld\n", self->_invitationState];
  [string appendString:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"VEP length            : %ld", -[NSString length](self->_vehicleEnteredPasscode, "length")];
  [string appendString:v9];

  return string;
}

@end