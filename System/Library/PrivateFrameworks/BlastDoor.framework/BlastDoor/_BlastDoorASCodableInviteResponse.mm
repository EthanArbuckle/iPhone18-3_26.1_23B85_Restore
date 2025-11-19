@interface _BlastDoorASCodableInviteResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasResponseCode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _BlastDoorASCodableInviteResponse

- (void)setHasResponseCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _BlastDoorASCodableInviteResponse;
  v4 = [(_BlastDoorASCodableInviteResponse *)&v9 description];
  v5 = [(_BlastDoorASCodableInviteResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  handshakeToken = self->_handshakeToken;
  if (handshakeToken)
  {
    [v3 setObject:handshakeToken forKey:@"handshakeToken"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_responseCode];
    [v4 setObject:v6 forKey:@"responseCode"];
  }

  inviteeCloudKitAddress = self->_inviteeCloudKitAddress;
  if (inviteeCloudKitAddress)
  {
    [v4 setObject:inviteeCloudKitAddress forKey:@"inviteeCloudKitAddress"];
  }

  inviteeShareLocations = self->_inviteeShareLocations;
  if (inviteeShareLocations)
  {
    v9 = [(_BlastDoorASCodableShareLocations *)inviteeShareLocations dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"inviteeShareLocations"];
  }

  inviteeBuildNumber = self->_inviteeBuildNumber;
  if (inviteeBuildNumber)
  {
    [v4 setObject:inviteeBuildNumber forKey:@"inviteeBuildNumber"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_inviteeVersion];
    [v4 setObject:v11 forKey:@"inviteeVersion"];
  }

  activityDataPreview = self->_activityDataPreview;
  if (activityDataPreview)
  {
    v13 = [(_BlastDoorASCodableActivityDataPreview *)activityDataPreview dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"activityDataPreview"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_handshakeToken)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    responseCode = self->_responseCode;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_inviteeCloudKitAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_inviteeShareLocations)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (self->_inviteeBuildNumber)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    inviteeVersion = self->_inviteeVersion;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_activityDataPreview)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_handshakeToken)
  {
    [v4 setHandshakeToken:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 13) = self->_responseCode;
    *(v4 + 56) |= 2u;
  }

  if (self->_inviteeCloudKitAddress)
  {
    [v5 setInviteeCloudKitAddress:?];
    v4 = v5;
  }

  if (self->_inviteeShareLocations)
  {
    [v5 setInviteeShareLocations:?];
    v4 = v5;
  }

  if (self->_inviteeBuildNumber)
  {
    [v5 setInviteeBuildNumber:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 12) = self->_inviteeVersion;
    *(v4 + 56) |= 1u;
  }

  if (self->_activityDataPreview)
  {
    [v5 setActivityDataPreview:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_handshakeToken copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 52) = self->_responseCode;
    *(v5 + 56) |= 2u;
  }

  v8 = [(NSString *)self->_inviteeCloudKitAddress copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(_BlastDoorASCodableShareLocations *)self->_inviteeShareLocations copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_inviteeBuildNumber copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_inviteeVersion;
    *(v5 + 56) |= 1u;
  }

  v14 = [(_BlastDoorASCodableActivityDataPreview *)self->_activityDataPreview copyWithZone:a3];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  handshakeToken = self->_handshakeToken;
  if (handshakeToken | *(v4 + 2))
  {
    if (![(NSString *)handshakeToken isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v6 = *(v4 + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_responseCode != *(v4 + 13))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  inviteeCloudKitAddress = self->_inviteeCloudKitAddress;
  if (inviteeCloudKitAddress | *(v4 + 4) && ![(NSString *)inviteeCloudKitAddress isEqual:?])
  {
    goto LABEL_22;
  }

  inviteeShareLocations = self->_inviteeShareLocations;
  if (inviteeShareLocations | *(v4 + 5))
  {
    if (![(_BlastDoorASCodableShareLocations *)inviteeShareLocations isEqual:?])
    {
      goto LABEL_22;
    }
  }

  inviteeBuildNumber = self->_inviteeBuildNumber;
  if (inviteeBuildNumber | *(v4 + 3))
  {
    if (![(NSString *)inviteeBuildNumber isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v10 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_inviteeVersion != *(v4 + 12))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_22;
  }

  activityDataPreview = self->_activityDataPreview;
  if (activityDataPreview | *(v4 + 1))
  {
    v12 = [(_BlastDoorASCodableActivityDataPreview *)activityDataPreview isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_23:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_handshakeToken hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_responseCode;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_inviteeCloudKitAddress hash];
  v6 = [(_BlastDoorASCodableShareLocations *)self->_inviteeShareLocations hash];
  v7 = [(NSString *)self->_inviteeBuildNumber hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_inviteeVersion;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(_BlastDoorASCodableActivityDataPreview *)self->_activityDataPreview hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*(v4 + 2))
  {
    [(_BlastDoorASCodableInviteResponse *)self setHandshakeToken:?];
    v4 = v9;
  }

  if ((*(v4 + 56) & 2) != 0)
  {
    self->_responseCode = *(v4 + 13);
    *&self->_has |= 2u;
  }

  if (*(v4 + 4))
  {
    [(_BlastDoorASCodableInviteResponse *)self setInviteeCloudKitAddress:?];
    v4 = v9;
  }

  inviteeShareLocations = self->_inviteeShareLocations;
  v6 = *(v4 + 5);
  if (inviteeShareLocations)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(_BlastDoorASCodableShareLocations *)inviteeShareLocations mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(_BlastDoorASCodableInviteResponse *)self setInviteeShareLocations:?];
  }

  v4 = v9;
LABEL_13:
  if (*(v4 + 3))
  {
    [(_BlastDoorASCodableInviteResponse *)self setInviteeBuildNumber:?];
    v4 = v9;
  }

  if (*(v4 + 56))
  {
    self->_inviteeVersion = *(v4 + 12);
    *&self->_has |= 1u;
  }

  activityDataPreview = self->_activityDataPreview;
  v8 = *(v4 + 1);
  if (activityDataPreview)
  {
    if (v8)
    {
      [(_BlastDoorASCodableActivityDataPreview *)activityDataPreview mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(_BlastDoorASCodableInviteResponse *)self setActivityDataPreview:?];
  }

  MEMORY[0x2821F96F8]();
}

@end