@interface IDSQRProtoExperimentOverride
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)experimentIdAsString:(int)string;
- (int)experimentId;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoExperimentOverride

- (int)experimentId
{
  if (*&self->_has)
  {
    return self->_experimentId;
  }

  else
  {
    return 0;
  }
}

- (id)experimentIdAsString:(int)string
{
  if (string)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = @"TRANSPORT_LEVEL_ENCRYPTION_DISABLED";
  }

  return v4;
}

- (void)setHasValue:(BOOL)value
{
  if (value)
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
  v8.super_class = IDSQRProtoExperimentOverride;
  v4 = [(IDSQRProtoExperimentOverride *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoExperimentOverride *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    if (self->_experimentId)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_experimentId];
    }

    else
    {
      v4 = @"TRANSPORT_LEVEL_ENCRYPTION_DISABLED";
    }

    [dictionary setObject:v4 forKey:@"experiment_id"];
  }

  experimentName = self->_experimentName;
  if (experimentName)
  {
    [dictionary setObject:experimentName forKey:@"experiment_name"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_value];
    [dictionary setObject:v6 forKey:@"value"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_experimentName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_experimentId;
    *(toCopy + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 24) = self->_value;
    *(toCopy + 28) |= 2u;
  }

  if (self->_experimentName)
  {
    v6 = toCopy;
    [toCopy setExperimentName:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_experimentId;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_value;
    *(v5 + 28) |= 2u;
  }

  v8 = [(NSString *)self->_experimentName copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_experimentId != *(equalCopy + 2))
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_12;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if ((*(equalCopy + 28) & 2) == 0)
  {
    goto LABEL_12;
  }

  if (self->_value)
  {
    if ((*(equalCopy + 24) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_12;
  }

LABEL_9:
  experimentName = self->_experimentName;
  if (experimentName | *(equalCopy + 2))
  {
    v6 = [(NSString *)experimentName isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_13:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_experimentId;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_experimentName hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_value;
  return v7 ^ v6 ^ [(NSString *)self->_experimentName hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if (v5)
  {
    self->_experimentId = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 28);
  }

  if ((v5 & 2) != 0)
  {
    self->_value = *(fromCopy + 24);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(IDSQRProtoExperimentOverride *)self setExperimentName:?];
    fromCopy = v6;
  }
}

@end