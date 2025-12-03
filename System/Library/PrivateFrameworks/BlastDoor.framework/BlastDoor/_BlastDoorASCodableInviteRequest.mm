@interface _BlastDoorASCodableInviteRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _BlastDoorASCodableInviteRequest

- (id)description
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _BlastDoorASCodableInviteRequest;
  v4 = [(_BlastDoorASCodableInviteRequest *)&v9 description];
  dictionaryRepresentation = [(_BlastDoorASCodableInviteRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  handshakeToken = self->_handshakeToken;
  if (handshakeToken)
  {
    [dictionary setObject:handshakeToken forKey:@"handshakeToken"];
  }

  inviterCloudKitAddress = self->_inviterCloudKitAddress;
  if (inviterCloudKitAddress)
  {
    [v4 setObject:inviterCloudKitAddress forKey:@"inviterCloudKitAddress"];
  }

  inviterCallerID = self->_inviterCallerID;
  if (inviterCallerID)
  {
    [v4 setObject:inviterCallerID forKey:@"inviterCallerID"];
  }

  inviterBuildNumber = self->_inviterBuildNumber;
  if (inviterBuildNumber)
  {
    [v4 setObject:inviterBuildNumber forKey:@"inviterBuildNumber"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_inviterVersion];
    [v4 setObject:v9 forKey:@"inviterVersion"];
  }

  activityDataPreview = self->_activityDataPreview;
  if (activityDataPreview)
  {
    dictionaryRepresentation = [(_BlastDoorASCodableActivityDataPreview *)activityDataPreview dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"activityDataPreview"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_handshakeToken)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_inviterCloudKitAddress)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_inviterCallerID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_inviterBuildNumber)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    inviterVersion = self->_inviterVersion;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_activityDataPreview)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_handshakeToken)
  {
    [toCopy setHandshakeToken:?];
    toCopy = v5;
  }

  if (self->_inviterCloudKitAddress)
  {
    [v5 setInviterCloudKitAddress:?];
    toCopy = v5;
  }

  if (self->_inviterCallerID)
  {
    [v5 setInviterCallerID:?];
    toCopy = v5;
  }

  if (self->_inviterBuildNumber)
  {
    [v5 setInviterBuildNumber:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 12) = self->_inviterVersion;
    *(toCopy + 52) |= 1u;
  }

  if (self->_activityDataPreview)
  {
    [v5 setActivityDataPreview:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_handshakeToken copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_inviterCloudKitAddress copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_inviterCallerID copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_inviterBuildNumber copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_inviterVersion;
    *(v5 + 52) |= 1u;
  }

  v14 = [(_BlastDoorASCodableActivityDataPreview *)self->_activityDataPreview copyWithZone:zone];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  handshakeToken = self->_handshakeToken;
  if (handshakeToken | *(equalCopy + 2))
  {
    if (![(NSString *)handshakeToken isEqual:?])
    {
      goto LABEL_17;
    }
  }

  inviterCloudKitAddress = self->_inviterCloudKitAddress;
  if (inviterCloudKitAddress | *(equalCopy + 5))
  {
    if (![(NSString *)inviterCloudKitAddress isEqual:?])
    {
      goto LABEL_17;
    }
  }

  inviterCallerID = self->_inviterCallerID;
  if (inviterCallerID | *(equalCopy + 4))
  {
    if (![(NSString *)inviterCallerID isEqual:?])
    {
      goto LABEL_17;
    }
  }

  inviterBuildNumber = self->_inviterBuildNumber;
  if (inviterBuildNumber | *(equalCopy + 3))
  {
    if (![(NSString *)inviterBuildNumber isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = *(equalCopy + 52);
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_inviterVersion != *(equalCopy + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 52))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  activityDataPreview = self->_activityDataPreview;
  if (activityDataPreview | *(equalCopy + 1))
  {
    v11 = [(_BlastDoorASCodableActivityDataPreview *)activityDataPreview isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_handshakeToken hash];
  v4 = [(NSString *)self->_inviterCloudKitAddress hash];
  v5 = [(NSString *)self->_inviterCallerID hash];
  v6 = [(NSString *)self->_inviterBuildNumber hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_inviterVersion;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(_BlastDoorASCodableActivityDataPreview *)self->_activityDataPreview hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(_BlastDoorASCodableInviteRequest *)self setHandshakeToken:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 5))
  {
    [(_BlastDoorASCodableInviteRequest *)self setInviterCloudKitAddress:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 4))
  {
    [(_BlastDoorASCodableInviteRequest *)self setInviterCallerID:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 3))
  {
    [(_BlastDoorASCodableInviteRequest *)self setInviterBuildNumber:?];
    fromCopy = v7;
  }

  if (fromCopy[13])
  {
    self->_inviterVersion = fromCopy[12];
    *&self->_has |= 1u;
  }

  activityDataPreview = self->_activityDataPreview;
  v6 = *(fromCopy + 1);
  if (activityDataPreview)
  {
    if (v6)
    {
      [(_BlastDoorASCodableActivityDataPreview *)activityDataPreview mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(_BlastDoorASCodableInviteRequest *)self setActivityDataPreview:?];
  }

  MEMORY[0x2821F96F8]();
}

@end