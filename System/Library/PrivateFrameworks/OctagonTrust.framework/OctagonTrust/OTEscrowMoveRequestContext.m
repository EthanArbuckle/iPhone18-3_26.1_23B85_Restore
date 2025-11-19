@interface OTEscrowMoveRequestContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTEscrowMoveRequestContext

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(OTEscrowMoveRequestContext *)self setEscrowRecordLabel:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(OTEscrowMoveRequestContext *)self setCurrentFederation:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(OTEscrowMoveRequestContext *)self setIntendedFederation:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_escrowRecordLabel hash];
  v4 = [(NSString *)self->_currentFederation hash]^ v3;
  return v4 ^ [(NSString *)self->_intendedFederation hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((escrowRecordLabel = self->_escrowRecordLabel, !(escrowRecordLabel | v4[2])) || -[NSString isEqual:](escrowRecordLabel, "isEqual:")) && ((currentFederation = self->_currentFederation, !(currentFederation | v4[1])) || -[NSString isEqual:](currentFederation, "isEqual:")))
  {
    intendedFederation = self->_intendedFederation;
    if (intendedFederation | v4[3])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_escrowRecordLabel copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_currentFederation copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_intendedFederation copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_escrowRecordLabel)
  {
    [v4 setEscrowRecordLabel:?];
    v4 = v5;
  }

  if (self->_currentFederation)
  {
    [v5 setCurrentFederation:?];
    v4 = v5;
  }

  if (self->_intendedFederation)
  {
    [v5 setIntendedFederation:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_escrowRecordLabel)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_currentFederation)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_intendedFederation)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  escrowRecordLabel = self->_escrowRecordLabel;
  if (escrowRecordLabel)
  {
    [v3 setObject:escrowRecordLabel forKey:@"escrowRecordLabel"];
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
  v5 = [(OTEscrowMoveRequestContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end