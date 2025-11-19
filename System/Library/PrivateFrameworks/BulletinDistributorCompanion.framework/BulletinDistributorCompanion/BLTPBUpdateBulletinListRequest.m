@interface BLTPBUpdateBulletinListRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBUpdateBulletinListRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBUpdateBulletinListRequest;
  v4 = [(BLTPBUpdateBulletinListRequest *)&v8 description];
  v5 = [(BLTPBUpdateBulletinListRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  bulletinList = self->_bulletinList;
  if (bulletinList)
  {
    v5 = [(BLTPBFullBulletinList *)bulletinList dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"bulletinList"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_bulletinList)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  bulletinList = self->_bulletinList;
  if (bulletinList)
  {
    [a3 setBulletinList:bulletinList];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(BLTPBFullBulletinList *)self->_bulletinList copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    bulletinList = self->_bulletinList;
    if (bulletinList | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  bulletinList = self->_bulletinList;
  v6 = v4[1];
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