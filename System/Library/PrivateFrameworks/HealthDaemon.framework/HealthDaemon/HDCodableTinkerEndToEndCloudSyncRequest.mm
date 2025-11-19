@interface HDCodableTinkerEndToEndCloudSyncRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableTinkerEndToEndCloudSyncRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableTinkerEndToEndCloudSyncRequest;
  v4 = [(HDCodableTinkerEndToEndCloudSyncRequest *)&v8 description];
  v5 = [(HDCodableTinkerEndToEndCloudSyncRequest *)self dictionaryRepresentation];
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

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [a3 setRequestIdentifier:requestIdentifier];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    requestIdentifier = self->_requestIdentifier;
    if (requestIdentifier | v4[1])
    {
      v6 = [(NSString *)requestIdentifier isEqual:?];
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
  if (*(a3 + 1))
  {
    [(HDCodableTinkerEndToEndCloudSyncRequest *)self setRequestIdentifier:?];
  }
}

@end