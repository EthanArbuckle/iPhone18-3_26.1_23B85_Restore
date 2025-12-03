@interface BLTPBHandleSupplementaryActionRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBHandleSupplementaryActionRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBHandleSupplementaryActionRequest;
  v4 = [(BLTPBHandleSupplementaryActionRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBHandleSupplementaryActionRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  publisherBulletinID = self->_publisherBulletinID;
  if (publisherBulletinID)
  {
    [v4 setObject:publisherBulletinID forKey:@"publisherBulletinID"];
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
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

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
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (self->_publisherBulletinID)
  {
    [v5 setPublisherBulletinID:?];
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
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_publisherBulletinID copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_recordID copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_sectionID copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(BLTPBActionInformation *)self->_actionInfo copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[2])) || -[NSString isEqual:](identifier, "isEqual:")) && ((publisherBulletinID = self->_publisherBulletinID, !(publisherBulletinID | equalCopy[3])) || -[NSString isEqual:](publisherBulletinID, "isEqual:")) && ((recordID = self->_recordID, !(recordID | equalCopy[4])) || -[NSString isEqual:](recordID, "isEqual:")) && ((sectionID = self->_sectionID, !(sectionID | equalCopy[5])) || -[NSString isEqual:](sectionID, "isEqual:")))
  {
    actionInfo = self->_actionInfo;
    if (actionInfo | equalCopy[1])
    {
      v10 = [(BLTPBActionInformation *)actionInfo isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_publisherBulletinID hash]^ v3;
  v5 = [(NSString *)self->_recordID hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_sectionID hash];
  return v6 ^ [(BLTPBActionInformation *)self->_actionInfo hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    [(BLTPBHandleSupplementaryActionRequest *)self setIdentifier:?];
  }

  if (fromCopy[3])
  {
    [(BLTPBHandleSupplementaryActionRequest *)self setPublisherBulletinID:?];
  }

  if (fromCopy[4])
  {
    [(BLTPBHandleSupplementaryActionRequest *)self setRecordID:?];
  }

  if (fromCopy[5])
  {
    [(BLTPBHandleSupplementaryActionRequest *)self setSectionID:?];
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
    [(BLTPBHandleSupplementaryActionRequest *)self setActionInfo:?];
  }
}

@end