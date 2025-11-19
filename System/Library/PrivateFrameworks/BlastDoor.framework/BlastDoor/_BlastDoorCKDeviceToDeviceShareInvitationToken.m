@interface _BlastDoorCKDeviceToDeviceShareInvitationToken
- (BOOL)isEqual:(id)a3;
- (_BlastDoorCKDeviceToDeviceShareInvitationToken)initWithCoder:(id)a3;
- (_BlastDoorCKDeviceToDeviceShareInvitationToken)initWithSharingInvitationData:(id)a3 shareURL:(id)a4 participantID:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorCKDeviceToDeviceShareInvitationToken

- (_BlastDoorCKDeviceToDeviceShareInvitationToken)initWithSharingInvitationData:(id)a3 shareURL:(id)a4 participantID:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = _BlastDoorCKDeviceToDeviceShareInvitationToken;
  v11 = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)v11 setSharingInvitationData:v12];

    v13 = [v9 copy];
    [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)v11 setShareURL:v13];

    v14 = [v10 copy];
    [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)v11 setParticipantID:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (_BlastDoorCKDeviceToDeviceShareInvitationToken)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && ![v4 _strictSecureDecodingEnabled])
  {
    v9 = 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ShareInvitationData"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ShareURL"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ParticipantID"];
    objc_autoreleasePoolPop(v5);
    self = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)self initWithSharingInvitationData:v6 shareURL:v7 participantID:v8];

    v9 = self;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)self sharingInvitationData];
  [v8 encodeObject:v5 forKey:@"ShareInvitationData"];

  v6 = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)self shareURL];
  [v8 encodeObject:v6 forKey:@"ShareURL"];

  v7 = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)self participantID];
  [v8 encodeObject:v7 forKey:@"ParticipantID"];

  objc_autoreleasePoolPop(v4);
}

- (BOOL)isEqual:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _BlastDoorCKDeviceToDeviceShareInvitationToken;
  if ([(_BlastDoorCKDeviceToDeviceShareInvitationToken *)&v12 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = v6[1];
      if (v7 | self->_sharingInvitationData && ![v7 isEqual:?] || (v8 = v6[2], v8 | self->_shareURL) && !objc_msgSend(v8, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v9 = v6[3];
        if (v9 | self->_participantID)
        {
          v5 = [v9 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unint64_t)hash
{
  v3 = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)self sharingInvitationData];
  v4 = [v3 hash];
  v5 = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)self shareURL];
  v6 = [v5 hash] ^ v4;
  v7 = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)self participantID];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end