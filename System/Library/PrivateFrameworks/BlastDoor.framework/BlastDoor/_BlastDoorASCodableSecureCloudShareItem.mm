@interface _BlastDoorASCodableSecureCloudShareItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _BlastDoorASCodableSecureCloudShareItem

- (id)description
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _BlastDoorASCodableSecureCloudShareItem;
  v4 = [(_BlastDoorASCodableSecureCloudShareItem *)&v9 description];
  dictionaryRepresentation = [(_BlastDoorASCodableSecureCloudShareItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  shareURL = self->_shareURL;
  if (shareURL)
  {
    [dictionary setObject:shareURL forKey:@"shareURL"];
  }

  zoneName = self->_zoneName;
  if (zoneName)
  {
    [v4 setObject:zoneName forKey:@"zoneName"];
  }

  invitationToken = self->_invitationToken;
  if (invitationToken)
  {
    [v4 setObject:invitationToken forKey:@"invitationToken"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_shareURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_zoneName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_invitationToken)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_shareURL)
  {
    [toCopy setShareURL:?];
    toCopy = v5;
  }

  if (self->_zoneName)
  {
    [v5 setZoneName:?];
    toCopy = v5;
  }

  if (self->_invitationToken)
  {
    [v5 setInvitationToken:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_shareURL copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_zoneName copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_invitationToken copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((shareURL = self->_shareURL, !(shareURL | equalCopy[2])) || -[NSString isEqual:](shareURL, "isEqual:")) && ((zoneName = self->_zoneName, !(zoneName | equalCopy[3])) || -[NSString isEqual:](zoneName, "isEqual:")))
  {
    invitationToken = self->_invitationToken;
    if (invitationToken | equalCopy[1])
    {
      v8 = [(NSData *)invitationToken isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_shareURL hash];
  v4 = [(NSString *)self->_zoneName hash]^ v3;
  return v4 ^ [(NSData *)self->_invitationToken hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(_BlastDoorASCodableSecureCloudShareItem *)self setShareURL:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(_BlastDoorASCodableSecureCloudShareItem *)self setZoneName:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(_BlastDoorASCodableSecureCloudShareItem *)self setInvitationToken:?];
    fromCopy = v5;
  }
}

@end