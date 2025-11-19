@interface HDCloudSyncCodableAttachmentReferenceTombstone
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCloudSyncCodableAttachmentReferenceTombstone

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableAttachmentReferenceTombstone;
  v4 = [(HDCloudSyncCodableAttachmentReferenceTombstone *)&v8 description];
  v5 = [(HDCloudSyncCodableAttachmentReferenceTombstone *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  referenceIdentifier = self->_referenceIdentifier;
  if (referenceIdentifier)
  {
    [v3 setObject:referenceIdentifier forKey:@"referenceIdentifier"];
  }

  schemaIdentifier = self->_schemaIdentifier;
  if (schemaIdentifier)
  {
    [v4 setObject:schemaIdentifier forKey:@"schemaIdentifier"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
    [v4 setObject:v7 forKey:@"creationDate"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_referenceIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_schemaIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_referenceIdentifier)
  {
    [v4 setReferenceIdentifier:?];
    v4 = v5;
  }

  if (self->_schemaIdentifier)
  {
    [v5 setSchemaIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_creationDate;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_referenceIdentifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_schemaIdentifier copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_creationDate;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  referenceIdentifier = self->_referenceIdentifier;
  if (referenceIdentifier | *(v4 + 2))
  {
    if (![(NSString *)referenceIdentifier isEqual:?])
    {
      goto LABEL_10;
    }
  }

  schemaIdentifier = self->_schemaIdentifier;
  if (schemaIdentifier | *(v4 + 3))
  {
    if (![(NSString *)schemaIdentifier isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_creationDate == *(v4 + 1))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_referenceIdentifier hash];
  v4 = [(NSString *)self->_schemaIdentifier hash];
  if (*&self->_has)
  {
    creationDate = self->_creationDate;
    if (creationDate < 0.0)
    {
      creationDate = -creationDate;
    }

    *v5.i64 = floor(creationDate + 0.5);
    v9 = (creationDate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(HDCloudSyncCodableAttachmentReferenceTombstone *)self setReferenceIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(HDCloudSyncCodableAttachmentReferenceTombstone *)self setSchemaIdentifier:?];
    v4 = v5;
  }

  if (v4[4])
  {
    self->_creationDate = v4[1];
    *&self->_has |= 1u;
  }
}

@end