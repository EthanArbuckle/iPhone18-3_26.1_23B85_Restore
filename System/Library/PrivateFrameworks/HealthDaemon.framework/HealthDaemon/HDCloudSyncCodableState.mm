@interface HDCloudSyncCodableState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCloudSyncCodableState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableState;
  v4 = [(HDCloudSyncCodableState *)&v8 description];
  dictionaryRepresentation = [(HDCloudSyncCodableState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  stateData = self->_stateData;
  if (stateData)
  {
    [dictionary setObject:stateData forKey:@"stateData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_stateData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  stateData = self->_stateData;
  if (stateData)
  {
    [to setStateData:stateData];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_stateData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    stateData = self->_stateData;
    if (stateData | equalCopy[1])
    {
      v6 = [(NSData *)stateData isEqual:?];
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
    [(HDCloudSyncCodableState *)self setStateData:?];
  }
}

@end