@interface BLTPBHandleSnoozeActionRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBHandleSnoozeActionRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBHandleSnoozeActionRequest;
  v4 = [(BLTPBHandleSnoozeActionRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBHandleSnoozeActionRequest *)self dictionaryRepresentation];
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

  actionInfo = self->_actionInfo;
  if (actionInfo)
  {
    dictionaryRepresentation = [(BLTPBActionInformation *)actionInfo dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"actionInfo"];
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

  if (self->_actionInfo)
  {
    PBDataWriterWriteSubmessage();
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

  if (self->_actionInfo)
  {
    [v5 setActionInfo:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_publisherBulletinID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_recordID copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_sectionID copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(BLTPBActionInformation *)self->_actionInfo copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((publisherBulletinID = self->_publisherBulletinID, !(publisherBulletinID | equalCopy[2])) || -[NSString isEqual:](publisherBulletinID, "isEqual:")) && ((recordID = self->_recordID, !(recordID | equalCopy[3])) || -[NSString isEqual:](recordID, "isEqual:")) && ((sectionID = self->_sectionID, !(sectionID | equalCopy[4])) || -[NSString isEqual:](sectionID, "isEqual:")))
  {
    actionInfo = self->_actionInfo;
    if (actionInfo | equalCopy[1])
    {
      v9 = [(BLTPBActionInformation *)actionInfo isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_publisherBulletinID hash];
  v4 = [(NSString *)self->_recordID hash]^ v3;
  v5 = [(NSString *)self->_sectionID hash];
  return v4 ^ v5 ^ [(BLTPBActionInformation *)self->_actionInfo hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    [(BLTPBHandleSnoozeActionRequest *)self setPublisherBulletinID:?];
  }

  if (fromCopy[3])
  {
    [(BLTPBHandleSnoozeActionRequest *)self setRecordID:?];
  }

  if (fromCopy[4])
  {
    [(BLTPBHandleSnoozeActionRequest *)self setSectionID:?];
  }

  actionInfo = self->_actionInfo;
  v5 = fromCopy[1];
  if (actionInfo)
  {
    if (v5)
    {
      [(BLTPBActionInformation *)actionInfo mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(BLTPBHandleSnoozeActionRequest *)self setActionInfo:?];
  }
}

@end