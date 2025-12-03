@interface IDSQRProtoDiagnosticIndication
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPacketsRecordDuration:(BOOL)duration;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoDiagnosticIndication

- (void)setHasPacketsRecordDuration:(BOOL)duration
{
  if (duration)
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
  dictionaryRepresentation = [(IDSQRProtoDiagnosticIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  failureSubtype = self->_failureSubtype;
  if (failureSubtype)
  {
    [dictionary setObject:failureSubtype forKey:@"failure_subtype"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_failureSubtype)
  {
    sub_1A7E1B638();
  }

  v6 = toCopy;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setFailureSubtype:self->_failureSubtype];
  [toCopy setFailureSubtypeContext:self->_failureSubtypeContext];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 8) = self->_packetsRecordDuration;
    *(toCopy + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_txnId;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_failureSubtype copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_failureSubtypeContext copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  failureSubtype = self->_failureSubtype;
  if (failureSubtype | *(equalCopy + 2))
  {
    if (![(NSString *)failureSubtype isEqual:?])
    {
      goto LABEL_15;
    }
  }

  failureSubtypeContext = self->_failureSubtypeContext;
  if (failureSubtypeContext | *(equalCopy + 3))
  {
    if (![(NSString *)failureSubtypeContext isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_packetsRecordDuration != *(equalCopy + 8))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_txnId != *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(IDSQRProtoDiagnosticIndication *)self setFailureSubtype:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(IDSQRProtoDiagnosticIndication *)self setFailureSubtypeContext:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if ((v5 & 2) != 0)
  {
    self->_packetsRecordDuration = *(fromCopy + 8);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 36);
  }

  if (v5)
  {
    self->_txnId = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end