@interface BLTPBWillSendLightsAndSirensRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBWillSendLightsAndSirensRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBWillSendLightsAndSirensRequest;
  v4 = [(BLTPBWillSendLightsAndSirensRequest *)&v8 description];
  v5 = [(BLTPBWillSendLightsAndSirensRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  publisherBulletinID = self->_publisherBulletinID;
  if (publisherBulletinID)
  {
    [v3 setObject:publisherBulletinID forKey:@"publisherBulletinID"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_publisherBulletinID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_recordID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    systemApp = self->_systemApp;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_publisherBulletinID)
  {
    [v4 setPublisherBulletinID:?];
    v4 = v5;
  }

  if (self->_recordID)
  {
    [v5 setRecordID:?];
    v4 = v5;
  }

  if (self->_sectionID)
  {
    [v5 setSectionID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[32] = self->_systemApp;
    v4[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_publisherBulletinID copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_recordID copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_sectionID copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_systemApp;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  publisherBulletinID = self->_publisherBulletinID;
  if (publisherBulletinID | *(v4 + 1))
  {
    if (![(NSString *)publisherBulletinID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  recordID = self->_recordID;
  if (recordID | *(v4 + 2))
  {
    if (![(NSString *)recordID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  sectionID = self->_sectionID;
  if (sectionID | *(v4 + 3))
  {
    if (![(NSString *)sectionID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v8 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    if (self->_systemApp)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(v4 + 32))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(BLTPBWillSendLightsAndSirensRequest *)self setPublisherBulletinID:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(BLTPBWillSendLightsAndSirensRequest *)self setRecordID:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(BLTPBWillSendLightsAndSirensRequest *)self setSectionID:?];
    v4 = v5;
  }

  if (v4[36])
  {
    self->_systemApp = v4[32];
    *&self->_has |= 1u;
  }
}

@end