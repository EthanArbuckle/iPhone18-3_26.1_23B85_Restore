@interface PKCloudStoreZoneShareParticipant
- (BOOL)isEqual:(id)a3;
- (PKCloudStoreZoneShareParticipant)initWithCoder:(id)a3;
- (PKCloudStoreZoneShareParticipant)initWithParticipant:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)invitationTokenData;
- (id)lookupInfoData;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudStoreZoneShareParticipant

- (PKCloudStoreZoneShareParticipant)initWithParticipant:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKCloudStoreZoneShareParticipant;
  v5 = [(PKCloudStoreZoneShareParticipant *)&v16 init];
  if (v5)
  {
    v6 = [v4 userIdentity];
    v7 = [v6 lookupInfo];
    lookupInfo = v5->_lookupInfo;
    v5->_lookupInfo = v7;

    v9 = [v4 invitationToken];
    invitationToken = v5->_invitationToken;
    v5->_invitationToken = v9;

    v11 = [(CKUserIdentityLookupInfo *)v5->_lookupInfo emailAddress];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [(CKUserIdentityLookupInfo *)v5->_lookupInfo phoneNumber];
    }

    participantHandle = v5->_participantHandle;
    v5->_participantHandle = v13;
  }

  return v5;
}

- (PKCloudStoreZoneShareParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKCloudStoreZoneShareParticipant;
  v5 = [(PKCloudStoreZoneShareParticipant *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"participantHandle"];
    participantHandle = v5->_participantHandle;
    v5->_participantHandle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lookupInfo"];
    lookupInfo = v5->_lookupInfo;
    v5->_lookupInfo = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationToken"];
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

- (void)encodeWithCoder:(id)a3
{
  participantHandle = self->_participantHandle;
  v5 = a3;
  [v5 encodeObject:participantHandle forKey:@"participantHandle"];
  [v5 encodeObject:self->_lookupInfo forKey:@"lookupInfo"];
  [v5 encodeObject:self->_invitationToken forKey:@"invitationToken"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKCloudStoreZoneShareParticipant allocWithZone:](PKCloudStoreZoneShareParticipant init];
  v6 = [(NSString *)self->_participantHandle copyWithZone:a3];
  participantHandle = v5->_participantHandle;
  v5->_participantHandle = v6;

  v8 = [(CKUserIdentityLookupInfo *)self->_lookupInfo copyWithZone:a3];
  lookupInfo = v5->_lookupInfo;
  v5->_lookupInfo = v8;

  v10 = [(CKDeviceToDeviceShareInvitationToken *)self->_invitationToken copyWithZone:a3];
  invitationToken = v5->_invitationToken;
  v5->_invitationToken = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_participantHandle];
  [v3 safelyAddObject:self->_lookupInfo];
  [v3 safelyAddObject:self->_invitationToken];
  v4 = PKCombinedHash(17, v3);

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