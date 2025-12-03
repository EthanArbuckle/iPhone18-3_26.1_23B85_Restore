@interface HDCodableTinkerPairingResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableTinkerPairingResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableTinkerPairingResponse;
  v4 = [(HDCodableTinkerPairingResponse *)&v8 description];
  dictionaryRepresentation = [(HDCodableTinkerPairingResponse *)self dictionaryRepresentation];
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

  setupMetadata = self->_setupMetadata;
  if (setupMetadata)
  {
    dictionaryRepresentation = [(HDCodableSharingSetupMetadata *)setupMetadata dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"setupMetadata"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation2 = [(HDCodableError *)error dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"error"];
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

  if (self->_setupMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
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

  if (self->_setupMetadata)
  {
    [v5 setSetupMetadata:?];
    toCopy = v5;
  }

  if (self->_error)
  {
    [v5 setError:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HDCodableSharingSetupMetadata *)self->_setupMetadata copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(HDCodableError *)self->_error copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestIdentifier = self->_requestIdentifier, !(requestIdentifier | equalCopy[2])) || -[NSString isEqual:](requestIdentifier, "isEqual:")) && ((setupMetadata = self->_setupMetadata, !(setupMetadata | equalCopy[3])) || -[HDCodableSharingSetupMetadata isEqual:](setupMetadata, "isEqual:")))
  {
    error = self->_error;
    if (error | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (fromCopy[2])
  {
    [(HDCodableTinkerPairingResponse *)self setRequestIdentifier:?];
    fromCopy = v9;
  }

  setupMetadata = self->_setupMetadata;
  v6 = fromCopy[3];
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

  fromCopy = v9;
LABEL_9:
  error = self->_error;
  v8 = fromCopy[1];
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