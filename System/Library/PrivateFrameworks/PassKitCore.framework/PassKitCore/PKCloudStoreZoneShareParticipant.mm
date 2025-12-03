@interface PKCloudStoreZoneShareParticipant
- (BOOL)isEqual:(id)equal;
- (PKCloudStoreZoneShareParticipant)initWithCoder:(id)coder;
- (PKCloudStoreZoneShareParticipant)initWithParticipant:(id)participant;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)invitationTokenData;
- (id)lookupInfoData;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudStoreZoneShareParticipant

- (PKCloudStoreZoneShareParticipant)initWithParticipant:(id)participant
{
  participantCopy = participant;
  v16.receiver = self;
  v16.super_class = PKCloudStoreZoneShareParticipant;
  v5 = [(PKCloudStoreZoneShareParticipant *)&v16 init];
  if (v5)
  {
    userIdentity = [participantCopy userIdentity];
    lookupInfo = [userIdentity lookupInfo];
    lookupInfo = v5->_lookupInfo;
    v5->_lookupInfo = lookupInfo;

    invitationToken = [participantCopy invitationToken];
    invitationToken = v5->_invitationToken;
    v5->_invitationToken = invitationToken;

    emailAddress = [(CKUserIdentityLookupInfo *)v5->_lookupInfo emailAddress];
    v12 = emailAddress;
    if (emailAddress)
    {
      phoneNumber = emailAddress;
    }

    else
    {
      phoneNumber = [(CKUserIdentityLookupInfo *)v5->_lookupInfo phoneNumber];
    }

    participantHandle = v5->_participantHandle;
    v5->_participantHandle = phoneNumber;
  }

  return v5;
}

- (PKCloudStoreZoneShareParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKCloudStoreZoneShareParticipant;
  v5 = [(PKCloudStoreZoneShareParticipant *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"participantHandle"];
    participantHandle = v5->_participantHandle;
    v5->_participantHandle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lookupInfo"];
    lookupInfo = v5->_lookupInfo;
    v5->_lookupInfo = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationToken"];
    invitationToken = v5->_invitationToken;
    v5->_invitationToken = v10;
  }

  return v5;
}

- (id)invitationTokenData
{
  invitationToken = self->_invitationToken;
  if (invitationToken)
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:invitationToken requiringSecureCoding:1 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)lookupInfoData
{
  lookupInfo = self->_lookupInfo;
  if (lookupInfo)
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:lookupInfo requiringSecureCoding:1 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  participantHandle = self->_participantHandle;
  coderCopy = coder;
  [coderCopy encodeObject:participantHandle forKey:@"participantHandle"];
  [coderCopy encodeObject:self->_lookupInfo forKey:@"lookupInfo"];
  [coderCopy encodeObject:self->_invitationToken forKey:@"invitationToken"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKCloudStoreZoneShareParticipant allocWithZone:](PKCloudStoreZoneShareParticipant init];
  v6 = [(NSString *)self->_participantHandle copyWithZone:zone];
  participantHandle = v5->_participantHandle;
  v5->_participantHandle = v6;

  v8 = [(CKUserIdentityLookupInfo *)self->_lookupInfo copyWithZone:zone];
  lookupInfo = v5->_lookupInfo;
  v5->_lookupInfo = v8;

  v10 = [(CKDeviceToDeviceShareInvitationToken *)self->_invitationToken copyWithZone:zone];
  invitationToken = v5->_invitationToken;
  v5->_invitationToken = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_17;
  }

  participantHandle = self->_participantHandle;
  v8 = v6[1];
  if (participantHandle && v8)
  {
    if (([(NSString *)participantHandle isEqual:?]& 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (participantHandle != v8)
  {
    goto LABEL_17;
  }

  lookupInfo = self->_lookupInfo;
  v10 = v6[2];
  if (!lookupInfo || !v10)
  {
    if (lookupInfo == v10)
    {
      goto LABEL_13;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  if (([(CKUserIdentityLookupInfo *)lookupInfo isEqual:?]& 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  invitationToken = self->_invitationToken;
  v12 = v6[3];
  if (invitationToken && v12)
  {
    v13 = [(CKDeviceToDeviceShareInvitationToken *)invitationToken isEqual:?];
  }

  else
  {
    v13 = invitationToken == v12;
  }

LABEL_18:

  return v13;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_participantHandle];
  [array safelyAddObject:self->_lookupInfo];
  [array safelyAddObject:self->_invitationToken];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"participantHandle: '%@'; ", self->_participantHandle];
  [v3 appendFormat:@"invitationToken: '%@'; ", self->_invitationToken];
  [v3 appendFormat:@">"];

  return v3;
}

@end