@interface _BlastDoorASCodableSecureCloudShareItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _BlastDoorASCodableSecureCloudShareItem

- (id)description
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _BlastDoorASCodableSecureCloudShareItem;
  v4 = [(_BlastDoorASCodableSecureCloudShareItem *)&v9 description];
  v5 = [(_BlastDoorASCodableSecureCloudShareItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  shareURL = self->_shareURL;
  if (shareURL)
  {
    [v3 setObject:shareURL forKey:@"shareURL"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shareURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_zoneName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_invitationToken)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shareURL)
  {
    [v4 setShareURL:?];
    v4 = v5;
  }

  if (self->_zoneName)
  {
    [v5 setZoneName:?];
    v4 = v5;
  }

  if (self->_invitationToken)
  {
    [v5 setInvitationToken:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_shareURL copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_zoneName copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_invitationToken copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((shareURL = self->_shareURL, !(shareURL | v4[2])) || -[NSString isEqual:](shareURL, "isEqual:")) && ((zoneName = self->_zoneName, !(zoneName | v4[3])) || -[NSString isEqual:](zoneName, "isEqual:")))
  {
    invitationToken = self->_invitationToken;
    if (invitationToken | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(_BlastDoorASCodableSecureCloudShareItem *)self setShareURL:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(_BlastDoorASCodableSecureCloudShareItem *)self setZoneName:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(_BlastDoorASCodableSecureCloudShareItem *)self setInvitationToken:?];
    v4 = v5;
  }
}

@end