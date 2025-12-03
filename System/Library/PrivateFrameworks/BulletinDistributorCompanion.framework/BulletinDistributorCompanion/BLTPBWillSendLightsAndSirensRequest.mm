@interface BLTPBWillSendLightsAndSirensRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBWillSendLightsAndSirensRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBWillSendLightsAndSirensRequest;
  v4 = [(BLTPBWillSendLightsAndSirensRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBWillSendLightsAndSirensRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  publisherBulletinID = self->_publisherBulletinID;
  if (publisherBulletinID)
  {
    [dictionary setObject:publisherBulletinID forKey:@"publisherBulletinID"];
  }

  recordID = self->_recordID;
  if (recordID)
  {
    [v4 setObject:recordID forKey:@"recordID"];
  }

  sectionID = self->_sectionID;
  if (sectionID)
  {
    [v4 setObject:sectionID forKey:@"sectionID"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_systemApp];
    [v4 setObject:v8 forKey:@"systemApp"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_publisherBulletinID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_recordID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    systemApp = self->_systemApp;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_publisherBulletinID)
  {
    [toCopy setPublisherBulletinID:?];
    toCopy = v5;
  }

  if (self->_recordID)
  {
    [v5 setRecordID:?];
    toCopy = v5;
  }

  if (self->_sectionID)
  {
    [v5 setSectionID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[32] = self->_systemApp;
    toCopy[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_publisherBulletinID copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_recordID copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_sectionID copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_systemApp;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  publisherBulletinID = self->_publisherBulletinID;
  if (publisherBulletinID | *(equalCopy + 1))
  {
    if (![(NSString *)publisherBulletinID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  recordID = self->_recordID;
  if (recordID | *(equalCopy + 2))
  {
    if (![(NSString *)recordID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  sectionID = self->_sectionID;
  if (sectionID | *(equalCopy + 3))
  {
    if (![(NSString *)sectionID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v8 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    if (self->_systemApp)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_10;
    }

    v8 = 1;
  }

LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_publisherBulletinID hash];
  v4 = [(NSString *)self->_recordID hash];
  v5 = [(NSString *)self->_sectionID hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_systemApp;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(BLTPBWillSendLightsAndSirensRequest *)self setPublisherBulletinID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(BLTPBWillSendLightsAndSirensRequest *)self setRecordID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(BLTPBWillSendLightsAndSirensRequest *)self setSectionID:?];
    fromCopy = v5;
  }

  if (fromCopy[36])
  {
    self->_systemApp = fromCopy[32];
    *&self->_has |= 1u;
  }
}

@end