@interface BLTPBAddBulletinSummaryRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBAddBulletinSummaryRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBAddBulletinSummaryRequest;
  v4 = [(BLTPBAddBulletinSummaryRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBAddBulletinSummaryRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  bulletin = self->_bulletin;
  if (bulletin)
  {
    dictionaryRepresentation = [(BLTPBBulletinSummary *)bulletin dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"bulletin"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_bulletin)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  bulletin = self->_bulletin;
  if (bulletin)
  {
    [to setBulletin:bulletin];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(BLTPBBulletinSummary *)self->_bulletin copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    bulletin = self->_bulletin;
    if (bulletin | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  bulletin = self->_bulletin;
  v6 = fromCopy[1];
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