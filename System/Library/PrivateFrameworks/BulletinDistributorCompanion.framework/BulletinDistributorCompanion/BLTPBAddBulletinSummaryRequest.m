@interface BLTPBAddBulletinSummaryRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBAddBulletinSummaryRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBAddBulletinSummaryRequest;
  v4 = [(BLTPBAddBulletinSummaryRequest *)&v8 description];
  v5 = [(BLTPBAddBulletinSummaryRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  bulletin = self->_bulletin;
  if (bulletin)
  {
    v5 = [(BLTPBBulletinSummary *)bulletin dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"bulletin"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_bulletin)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  bulletin = self->_bulletin;
  if (bulletin)
  {
    [a3 setBulletin:bulletin];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(BLTPBBulletinSummary *)self->_bulletin copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    bulletin = self->_bulletin;
    if (bulletin | v4[1])
    {
      v6 = [(BLTPBBulletinSummary *)bulletin isEqual:?];
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
  bulletin = self->_bulletin;
  v6 = v4[1];
  if (bulletin)
  {
    if (v6)
    {
      [(BLTPBBulletinSummary *)bulletin mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(BLTPBAddBulletinSummaryRequest *)self setBulletin:?];
  }

  MEMORY[0x2821F96F8]();
}

@end