@interface BLTPBUpdateBulletinListRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBUpdateBulletinListRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBUpdateBulletinListRequest;
  v4 = [(BLTPBUpdateBulletinListRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBUpdateBulletinListRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  bulletinList = self->_bulletinList;
  if (bulletinList)
  {
    dictionaryRepresentation = [(BLTPBFullBulletinList *)bulletinList dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"bulletinList"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_bulletinList)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  bulletinList = self->_bulletinList;
  if (bulletinList)
  {
    [to setBulletinList:bulletinList];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(BLTPBFullBulletinList *)self->_bulletinList copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    bulletinList = self->_bulletinList;
    if (bulletinList | equalCopy[1])
    {
      v6 = [(BLTPBFullBulletinList *)bulletinList isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  bulletinList = self->_bulletinList;
  v6 = fromCopy[1];
  if (bulletinList)
  {
    if (v6)
    {
      [(BLTPBFullBulletinList *)bulletinList mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(BLTPBUpdateBulletinListRequest *)self setBulletinList:?];
  }

  MEMORY[0x2821F96F8]();
}

@end