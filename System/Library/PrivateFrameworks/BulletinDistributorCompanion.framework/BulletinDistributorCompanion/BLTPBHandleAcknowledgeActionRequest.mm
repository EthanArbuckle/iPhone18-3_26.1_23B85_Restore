@interface BLTPBHandleAcknowledgeActionRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBHandleAcknowledgeActionRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBHandleAcknowledgeActionRequest;
  v4 = [(BLTPBHandleAcknowledgeActionRequest *)&v8 description];
  v5 = [(BLTPBHandleAcknowledgeActionRequest *)self dictionaryRepresentation];
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

  actionInfo = self->_actionInfo;
  if (actionInfo)
  {
    v9 = [(BLTPBActionInformation *)actionInfo dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"actionInfo"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_publisherBulletinID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_recordID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_actionInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
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

  if (self->_actionInfo)
  {
    [v5 setActionInfo:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_publisherBulletinID copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_recordID copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_sectionID copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(BLTPBActionInformation *)self->_actionInfo copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((publisherBulletinID = self->_publisherBulletinID, !(publisherBulletinID | v4[2])) || -[NSString isEqual:](publisherBulletinID, "isEqual:")) && ((recordID = self->_recordID, !(recordID | v4[3])) || -[NSString isEqual:](recordID, "isEqual:")) && ((sectionID = self->_sectionID, !(sectionID | v4[4])) || -[NSString isEqual:](sectionID, "isEqual:")))
  {
    actionInfo = self->_actionInfo;
    if (actionInfo | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v6 = a3;
  if (v6[2])
  {
    [(BLTPBHandleAcknowledgeActionRequest *)self setPublisherBulletinID:?];
  }

  if (v6[3])
  {
    [(BLTPBHandleAcknowledgeActionRequest *)self setRecordID:?];
  }

  if (v6[4])
  {
    [(BLTPBHandleAcknowledgeActionRequest *)self setSectionID:?];
  }

  actionInfo = self->_actionInfo;
  v5 = v6[1];
  if (actionInfo)
  {
    if (v5)
    {
      [(BLTPBActionInformation *)actionInfo mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(BLTPBHandleAcknowledgeActionRequest *)self setActionInfo:?];
  }
}

@end