@interface BLTPBThreadMuteAssertion
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBThreadMuteAssertion

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBThreadMuteAssertion;
  v4 = [(BLTPBThreadMuteAssertion *)&v8 description];
  dictionaryRepresentation = [(BLTPBThreadMuteAssertion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_expirationDate];
  [dictionary setObject:v4 forKey:@"expirationDate"];

  threadID = self->_threadID;
  if (threadID)
  {
    [dictionary setObject:threadID forKey:@"threadID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  expirationDate = self->_expirationDate;
  v6 = toCopy;
  PBDataWriterWriteDoubleField();
  if (!self->_threadID)
  {
    [BLTPBThreadMuteAssertion writeTo:];
  }

  PBDataWriterWriteStringField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_expirationDate;
  v6 = [(NSString *)self->_threadID copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_expirationDate == *(equalCopy + 1))
  {
    threadID = self->_threadID;
    if (threadID | equalCopy[2])
    {
      v6 = [(NSString *)threadID isEqual:?];
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

- (unint64_t)hash
{
  expirationDate = self->_expirationDate;
  if (expirationDate < 0.0)
  {
    expirationDate = -expirationDate;
  }

  *v2.i64 = floor(expirationDate + 0.5);
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v3.i64[0] = vbslq_s8(vnegq_f64(v5), v3, v2).i64[0];
  v6 = (expirationDate - *v2.i64) * 1.84467441e19;
  v7 = 2654435761u * *v3.i64;
  v8 = v7 + v6;
  if (v6 <= 0.0)
  {
    v8 = 2654435761u * *v3.i64;
  }

  v9 = v7 - fabs(v6);
  if (v6 < 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  return [(NSString *)self->_threadID hash]^ v10;
}

- (void)mergeFrom:(id)from
{
  self->_expirationDate = *(from + 1);
  if (*(from + 2))
  {
    [(BLTPBThreadMuteAssertion *)self setThreadID:?];
  }
}

@end