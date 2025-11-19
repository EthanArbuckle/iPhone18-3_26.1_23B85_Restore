@interface HDCodableTinkerPairingResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableTinkerPairingResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableTinkerPairingResponse;
  v4 = [(HDCodableTinkerPairingResponse *)&v8 description];
  v5 = [(HDCodableTinkerPairingResponse *)self dictionaryRepresentation];
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

  setupMetadata = self->_setupMetadata;
  if (setupMetadata)
  {
    v7 = [(HDCodableSharingSetupMetadata *)setupMetadata dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"setupMetadata"];
  }

  error = self->_error;
  if (error)
  {
    v9 = [(HDCodableError *)error dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"error"];
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

  if (self->_setupMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
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

  if (self->_setupMetadata)
  {
    [v5 setSetupMetadata:?];
    v4 = v5;
  }

  if (self->_error)
  {
    [v5 setError:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HDCodableSharingSetupMetadata *)self->_setupMetadata copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(HDCodableError *)self->_error copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestIdentifier = self->_requestIdentifier, !(requestIdentifier | v4[2])) || -[NSString isEqual:](requestIdentifier, "isEqual:")) && ((setupMetadata = self->_setupMetadata, !(setupMetadata | v4[3])) || -[HDCodableSharingSetupMetadata isEqual:](setupMetadata, "isEqual:")))
  {
    error = self->_error;
    if (error | v4[1])
    {
      v8 = [(HDCodableError *)error isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestIdentifier hash];
  v4 = [(HDCodableSharingSetupMetadata *)self->_setupMetadata hash]^ v3;
  return v4 ^ [(HDCodableError *)self->_error hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4[2])
  {
    [(HDCodableTinkerPairingResponse *)self setRequestIdentifier:?];
    v4 = v9;
  }

  setupMetadata = self->_setupMetadata;
  v6 = v4[3];
  if (setupMetadata)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(HDCodableSharingSetupMetadata *)setupMetadata mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(HDCodableTinkerPairingResponse *)self setSetupMetadata:?];
  }

  v4 = v9;
LABEL_9:
  error = self->_error;
  v8 = v4[1];
  if (error)
  {
    if (v8)
    {
      [(HDCodableError *)error mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HDCodableTinkerPairingResponse *)self setError:?];
  }

  MEMORY[0x2821F96F8]();
}

@end