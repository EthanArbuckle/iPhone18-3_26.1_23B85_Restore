@interface HDCodableTinkerOptInRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableTinkerOptInRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableTinkerOptInRequest;
  v4 = [(HDCodableTinkerOptInRequest *)&v8 description];
  dictionaryRepresentation = [(HDCodableTinkerOptInRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [dictionary setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  guardianDisplayName = self->_guardianDisplayName;
  if (guardianDisplayName)
  {
    [v4 setObject:guardianDisplayName forKey:@"guardianDisplayName"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_guardianDisplayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestIdentifier)
  {
    [toCopy setRequestIdentifier:?];
    toCopy = v5;
  }

  if (self->_guardianDisplayName)
  {
    [v5 setGuardianDisplayName:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_guardianDisplayName copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestIdentifier = self->_requestIdentifier, !(requestIdentifier | equalCopy[2])) || -[NSString isEqual:](requestIdentifier, "isEqual:")))
  {
    guardianDisplayName = self->_guardianDisplayName;
    if (guardianDisplayName | equalCopy[1])
    {
      v7 = [(NSString *)guardianDisplayName isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(HDCodableTinkerOptInRequest *)self setRequestIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(HDCodableTinkerOptInRequest *)self setGuardianDisplayName:?];
    fromCopy = v5;
  }
}

@end