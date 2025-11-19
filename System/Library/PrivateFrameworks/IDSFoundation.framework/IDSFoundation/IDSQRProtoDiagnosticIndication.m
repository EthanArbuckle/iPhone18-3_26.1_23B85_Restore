@interface IDSQRProtoDiagnosticIndication
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPacketsRecordDuration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoDiagnosticIndication

- (void)setHasPacketsRecordDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoDiagnosticIndication;
  v4 = [(IDSQRProtoDiagnosticIndication *)&v8 description];
  v5 = [(IDSQRProtoDiagnosticIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  failureSubtype = self->_failureSubtype;
  if (failureSubtype)
  {
    [v3 setObject:failureSubtype forKey:@"failure_subtype"];
  }

  failureSubtypeContext = self->_failureSubtypeContext;
  if (failureSubtypeContext)
  {
    [v4 setObject:failureSubtypeContext forKey:@"failure_subtype_context"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_packetsRecordDuration];
    [v4 setObject:v8 forKey:@"packets_record_duration"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txnId];
    [v4 setObject:v9 forKey:@"txn_id"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_failureSubtype)
  {
    sub_1A7E1B638();
  }

  v6 = v4;
  PBDataWriterWriteStringField();
  if (!self->_failureSubtypeContext)
  {
    sub_1A7E1B60C();
  }

  PBDataWriterWriteStringField();
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setFailureSubtype:self->_failureSubtype];
  [v5 setFailureSubtypeContext:self->_failureSubtypeContext];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 8) = self->_packetsRecordDuration;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 1) = self->_txnId;
    *(v5 + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_failureSubtype copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_failureSubtypeContext copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_packetsRecordDuration;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_txnId;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  failureSubtype = self->_failureSubtype;
  if (failureSubtype | *(v4 + 2))
  {
    if (![(NSString *)failureSubtype isEqual:?])
    {
      goto LABEL_15;
    }
  }

  failureSubtypeContext = self->_failureSubtypeContext;
  if (failureSubtypeContext | *(v4 + 3))
  {
    if (![(NSString *)failureSubtypeContext isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_packetsRecordDuration != *(v4 + 8))
    {
      goto LABEL_15;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_txnId != *(v4 + 1))
    {
      goto LABEL_15;
    }

    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_failureSubtype hash];
  v4 = [(NSString *)self->_failureSubtypeContext hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_packetsRecordDuration;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761u * self->_txnId;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(IDSQRProtoDiagnosticIndication *)self setFailureSubtype:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(IDSQRProtoDiagnosticIndication *)self setFailureSubtypeContext:?];
    v4 = v6;
  }

  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    self->_packetsRecordDuration = *(v4 + 8);
    *&self->_has |= 2u;
    v5 = *(v4 + 36);
  }

  if (v5)
  {
    self->_txnId = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end