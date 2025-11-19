@interface HDCodableTinkerOptInRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableTinkerOptInRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableTinkerOptInRequest;
  v4 = [(HDCodableTinkerOptInRequest *)&v8 description];
  v5 = [(HDCodableTinkerOptInRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [v3 setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  guardianDisplayName = self->_guardianDisplayName;
  if (guardianDisplayName)
  {
    [v4 setObject:guardianDisplayName forKey:@"guardianDisplayName"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_guardianDisplayName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestIdentifier)
  {
    [v4 setRequestIdentifier:?];
    v4 = v5;
  }

  if (self->_guardianDisplayName)
  {
    [v5 setGuardianDisplayName:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_guardianDisplayName copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestIdentifier = self->_requestIdentifier, !(requestIdentifier | v4[2])) || -[NSString isEqual:](requestIdentifier, "isEqual:")))
  {
    guardianDisplayName = self->_guardianDisplayName;
    if (guardianDisplayName | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(HDCodableTinkerOptInRequest *)self setRequestIdentifier:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(HDCodableTinkerOptInRequest *)self setGuardianDisplayName:?];
    v4 = v5;
  }
}

@end