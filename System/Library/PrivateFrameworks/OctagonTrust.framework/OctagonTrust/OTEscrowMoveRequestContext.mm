@interface OTEscrowMoveRequestContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation OTEscrowMoveRequestContext

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(OTEscrowMoveRequestContext *)self setEscrowRecordLabel:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(OTEscrowMoveRequestContext *)self setCurrentFederation:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(OTEscrowMoveRequestContext *)self setIntendedFederation:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_escrowRecordLabel hash];
  v4 = [(NSString *)self->_currentFederation hash]^ v3;
  return v4 ^ [(NSString *)self->_intendedFederation hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((escrowRecordLabel = self->_escrowRecordLabel, !(escrowRecordLabel | equalCopy[2])) || -[NSString isEqual:](escrowRecordLabel, "isEqual:")) && ((currentFederation = self->_currentFederation, !(currentFederation | equalCopy[1])) || -[NSString isEqual:](currentFederation, "isEqual:")))
  {
    intendedFederation = self->_intendedFederation;
    if (intendedFederation | equalCopy[3])
    {
      v8 = [(NSString *)intendedFederation isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_escrowRecordLabel copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_currentFederation copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_intendedFederation copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_escrowRecordLabel)
  {
    [toCopy setEscrowRecordLabel:?];
    toCopy = v5;
  }

  if (self->_currentFederation)
  {
    [v5 setCurrentFederation:?];
    toCopy = v5;
  }

  if (self->_intendedFederation)
  {
    [v5 setIntendedFederation:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_escrowRecordLabel)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_currentFederation)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_intendedFederation)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  escrowRecordLabel = self->_escrowRecordLabel;
  if (escrowRecordLabel)
  {
    [dictionary setObject:escrowRecordLabel forKey:@"escrowRecordLabel"];
  }

  currentFederation = self->_currentFederation;
  if (currentFederation)
  {
    [v4 setObject:currentFederation forKey:@"currentFederation"];
  }

  intendedFederation = self->_intendedFederation;
  if (intendedFederation)
  {
    [v4 setObject:intendedFederation forKey:@"intendedFederation"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = OTEscrowMoveRequestContext;
  v4 = [(OTEscrowMoveRequestContext *)&v8 description];
  dictionaryRepresentation = [(OTEscrowMoveRequestContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end