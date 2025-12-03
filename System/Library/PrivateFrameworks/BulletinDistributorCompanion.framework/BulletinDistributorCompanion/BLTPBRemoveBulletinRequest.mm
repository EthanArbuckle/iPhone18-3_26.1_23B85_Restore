@interface BLTPBRemoveBulletinRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBRemoveBulletinRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBRemoveBulletinRequest;
  v4 = [(BLTPBRemoveBulletinRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBRemoveBulletinRequest *)self dictionaryRepresentation];
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

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_publisherBulletinID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_recordID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
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
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_publisherBulletinID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_recordID copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_sectionID copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((publisherBulletinID = self->_publisherBulletinID, !(publisherBulletinID | equalCopy[1])) || -[NSString isEqual:](publisherBulletinID, "isEqual:")) && ((recordID = self->_recordID, !(recordID | equalCopy[2])) || -[NSString isEqual:](recordID, "isEqual:")))
  {
    sectionID = self->_sectionID;
    if (sectionID | equalCopy[3])
    {
      v8 = [(NSString *)sectionID isEqual:?];
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
  v3 = [(NSString *)self->_publisherBulletinID hash];
  v4 = [(NSString *)self->_recordID hash]^ v3;
  return v4 ^ [(NSString *)self->_sectionID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(BLTPBRemoveBulletinRequest *)self setPublisherBulletinID:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(BLTPBRemoveBulletinRequest *)self setRecordID:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(BLTPBRemoveBulletinRequest *)self setSectionID:?];
    fromCopy = v5;
  }
}

@end