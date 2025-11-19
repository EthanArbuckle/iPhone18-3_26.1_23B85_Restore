@interface IDSQRProtoExperimentOverride
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)experimentIdAsString:(int)a3;
- (int)experimentId;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasValue:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (id)experimentIdAsString:(int)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = @"TRANSPORT_LEVEL_ENCRYPTION_DISABLED";
  }

  return v4;
}

- (void)setHasValue:(BOOL)a3
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
  v8.super_class = IDSQRProtoExperimentOverride;
  v4 = [(IDSQRProtoExperimentOverride *)&v8 description];
  v5 = [(IDSQRProtoExperimentOverride *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v4 forKey:@"experiment_id"];
  }

  experimentName = self->_experimentName;
  if (experimentName)
  {
    [v3 setObject:experimentName forKey:@"experiment_name"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_value];
    [v3 setObject:v6 forKey:@"value"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_experimentName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_experimentId;
    *(v4 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 24) = self->_value;
    *(v4 + 28) |= 2u;
  }

  if (self->_experimentName)
  {
    v6 = v4;
    [v4 setExperimentName:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_experimentName copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_experimentId != *(v4 + 2))
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_12;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if ((*(v4 + 28) & 2) == 0)
  {
    goto LABEL_12;
  }

  if (self->_value)
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_12;
  }

LABEL_9:
  experimentName = self->_experimentName;
  if (experimentName | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if (v5)
  {
    self->_experimentId = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    self->_value = *(v4 + 24);
    *&self->_has |= 2u;
  }

  if (*(v4 + 2))
  {
    v6 = v4;
    [(IDSQRProtoExperimentOverride *)self setExperimentName:?];
    v4 = v6;
  }
}

@end