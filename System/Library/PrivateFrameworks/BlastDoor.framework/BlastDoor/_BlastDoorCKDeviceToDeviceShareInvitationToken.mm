@interface _BlastDoorCKDeviceToDeviceShareInvitationToken
- (BOOL)isEqual:(id)equal;
- (_BlastDoorCKDeviceToDeviceShareInvitationToken)initWithCoder:(id)coder;
- (_BlastDoorCKDeviceToDeviceShareInvitationToken)initWithSharingInvitationData:(id)data shareURL:(id)l participantID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorCKDeviceToDeviceShareInvitationToken

- (_BlastDoorCKDeviceToDeviceShareInvitationToken)initWithSharingInvitationData:(id)data shareURL:(id)l participantID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = _BlastDoorCKDeviceToDeviceShareInvitationToken;
  v11 = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)&v17 init];
  if (v11)
  {
    v12 = [dataCopy copy];
    [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)v11 setSharingInvitationData:v12];

    v13 = [lCopy copy];
    [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)v11 setShareURL:v13];

    v14 = [dCopy copy];
    [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)v11 setParticipantID:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (_BlastDoorCKDeviceToDeviceShareInvitationToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && ![coderCopy _strictSecureDecodingEnabled])
  {
    selfCopy = 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ShareInvitationData"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ShareURL"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ParticipantID"];
    objc_autoreleasePoolPop(v5);
    self = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)self initWithSharingInvitationData:v6 shareURL:v7 participantID:v8];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  sharingInvitationData = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)self sharingInvitationData];
  [coderCopy encodeObject:sharingInvitationData forKey:@"ShareInvitationData"];

  shareURL = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)self shareURL];
  [coderCopy encodeObject:shareURL forKey:@"ShareURL"];

  participantID = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)self participantID];
  [coderCopy encodeObject:participantID forKey:@"ParticipantID"];

  objc_autoreleasePoolPop(v4);
}

- (BOOL)isEqual:(id)equal
{
  v13 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _BlastDoorCKDeviceToDeviceShareInvitationToken;
  if ([(_BlastDoorCKDeviceToDeviceShareInvitationToken *)&v12 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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
  sharingInvitationData = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)self sharingInvitationData];
  v4 = [sharingInvitationData hash];
  shareURL = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)self shareURL];
  v6 = [shareURL hash] ^ v4;
  participantID = [(_BlastDoorCKDeviceToDeviceShareInvitationToken *)self participantID];
  v8 = [participantID hash];

  return v6 ^ v8;
}

@end