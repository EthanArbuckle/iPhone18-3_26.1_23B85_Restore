@interface NSSBetaEnrollmentStatusRespMsg
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSSBetaEnrollmentStatusRespMsg

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSBetaEnrollmentStatusRespMsg;
  v4 = [(NSSBetaEnrollmentStatusRespMsg *)&v8 description];
  dictionaryRepresentation = [(NSSBetaEnrollmentStatusRespMsg *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  selectedBetaProgramInfo = self->_selectedBetaProgramInfo;
  if (selectedBetaProgramInfo)
  {
    [dictionary setObject:selectedBetaProgramInfo forKey:@"selectedBetaProgramInfo"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_selectedBetaProgramInfo)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  selectedBetaProgramInfo = self->_selectedBetaProgramInfo;
  if (selectedBetaProgramInfo)
  {
    [to setSelectedBetaProgramInfo:selectedBetaProgramInfo];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_selectedBetaProgramInfo copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    selectedBetaProgramInfo = self->_selectedBetaProgramInfo;
    if (selectedBetaProgramInfo | equalCopy[1])
    {
      v6 = [(NSData *)selectedBetaProgramInfo isEqual:?];
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
  if (*(from + 1))
  {
    [(NSSBetaEnrollmentStatusRespMsg *)self setSelectedBetaProgramInfo:?];
  }
}

@end