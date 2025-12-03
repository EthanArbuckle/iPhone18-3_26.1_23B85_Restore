@interface IDSQRProtoPropertyOverride
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)propertyNameAsString:(int)string;
- (id)propertyValueAsString:(int)string;
- (int)StringAsPropertyName:(id)name;
- (int)StringAsPropertyValue:(id)value;
- (int)propertyName;
- (int)propertyValue;
- (unint64_t)hash;
- (void)clearOneofValuesForPropertyValue;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setBoolValue:(BOOL)value;
- (void)setHasBoolValue:(BOOL)value;
- (void)setHasPropertyValue:(BOOL)value;
- (void)setHasUint32Value:(BOOL)value;
- (void)setStringValue:(id)value;
- (void)setUint32Value:(unsigned int)value;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoPropertyOverride

- (int)propertyName
{
  if (*&self->_has)
  {
    return self->_propertyName;
  }

  else
  {
    return 0;
  }
}

- (id)propertyNameAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E77E1DB0[string];
  }

  return v4;
}

- (int)StringAsPropertyName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"server_enforced_disconnection_timeout_seconds"])
  {
    v4 = 0;
  }

  else if ([nameCopy isEqualToString:@"multiway_participant_trust_guard_duration_in_millis"])
  {
    v4 = 1;
  }

  else if ([nameCopy isEqualToString:@"disconnect_participant_landing_on_old_instance_during_resign"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBoolValue:(BOOL)value
{
  [(IDSQRProtoPropertyOverride *)self clearOneofValuesForPropertyValue];
  *&self->_has |= 2u;
  self->_propertyValue = 1;
  *&self->_has |= 8u;
  self->_BOOLValue = value;
}

- (void)setHasBoolValue:(BOOL)value
{
  if (value)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setStringValue:(id)value
{
  valueCopy = value;
  [(IDSQRProtoPropertyOverride *)self clearOneofValuesForPropertyValue];
  *&self->_has |= 2u;
  self->_propertyValue = 2;
  stringValue = self->_stringValue;
  self->_stringValue = valueCopy;
}

- (void)setUint32Value:(unsigned int)value
{
  [(IDSQRProtoPropertyOverride *)self clearOneofValuesForPropertyValue];
  *&self->_has |= 2u;
  self->_propertyValue = 3;
  *&self->_has |= 4u;
  self->_uint32Value = value;
}

- (void)setHasUint32Value:(BOOL)value
{
  if (value)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)propertyValue
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_propertyValue;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPropertyValue:(BOOL)value
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

- (id)propertyValueAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E77E1DC8[string];
  }

  return v4;
}

- (int)StringAsPropertyValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([valueCopy isEqualToString:@"BOOL_value"])
  {
    v4 = 1;
  }

  else if ([valueCopy isEqualToString:@"string_value"])
  {
    v4 = 2;
  }

  else if ([valueCopy isEqualToString:@"uint32_value"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForPropertyValue
{
  *&self->_has &= ~2u;
  self->_propertyValue = 0;
  *&self->_has &= ~8u;
  self->_BOOLValue = 0;
  stringValue = self->_stringValue;
  self->_stringValue = 0;

  *&self->_has &= ~4u;
  self->_uint32Value = 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoPropertyOverride;
  v4 = [(IDSQRProtoPropertyOverride *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoPropertyOverride *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    propertyName = self->_propertyName;
    if (propertyName >= 3)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_propertyName];
    }

    else
    {
      v6 = off_1E77E1DB0[propertyName];
    }

    [dictionary setObject:v6 forKey:@"property_name"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_BOOLValue];
    [dictionary setObject:v7 forKey:@"BOOL_value"];
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    [dictionary setObject:stringValue forKey:@"string_value"];
  }

  v9 = self->_has;
  if ((v9 & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_uint32Value];
    [dictionary setObject:v10 forKey:@"uint32_value"];

    v9 = self->_has;
  }

  if ((v9 & 2) != 0)
  {
    propertyValue = self->_propertyValue;
    if (propertyValue >= 4)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_propertyValue];
    }

    else
    {
      v12 = off_1E77E1DC8[propertyValue];
    }

    [dictionary setObject:v12 forKey:@"property_value"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[3] = self->_propertyValue;
    *(toCopy + 32) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[2] = self->_propertyName;
  *(toCopy + 32) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    *(toCopy + 28) = self->_BOOLValue;
    *(toCopy + 32) |= 8u;
  }

LABEL_5:
  if (self->_stringValue)
  {
    v6 = toCopy;
    [toCopy setStringValue:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    toCopy[6] = self->_uint32Value;
    *(toCopy + 32) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 12) = self->_propertyValue;
    *(v5 + 32) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_propertyName;
  *(v5 + 32) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    *(v5 + 28) = self->_BOOLValue;
    *(v5 + 32) |= 8u;
  }

LABEL_5:
  v8 = [(NSString *)self->_stringValue copyWithZone:zone];
  v9 = *(v6 + 16);
  *(v6 + 16) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 24) = self->_uint32Value;
    *(v6 + 32) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_propertyValue != *(equalCopy + 3))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_propertyName != *(equalCopy + 2))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 32) & 8) == 0)
    {
      goto LABEL_22;
    }

    if (self->_BOOLValue)
    {
      if ((*(equalCopy + 28) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*(equalCopy + 28))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 32) & 8) != 0)
  {
    goto LABEL_22;
  }

  stringValue = self->_stringValue;
  if (!(stringValue | *(equalCopy + 2)))
  {
    goto LABEL_17;
  }

  if (![(NSString *)stringValue isEqual:?])
  {
LABEL_22:
    v7 = 0;
    goto LABEL_23;
  }

  has = self->_has;
LABEL_17:
  v7 = (*(equalCopy + 32) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_uint32Value != *(equalCopy + 6))
    {
      goto LABEL_22;
    }

    v7 = 1;
  }

LABEL_23:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761 * self->_propertyValue;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_propertyName;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_BOOLValue;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSString *)self->_stringValue hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_uint32Value;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v7 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if ((v5 & 2) != 0)
  {
    self->_propertyValue = *(fromCopy + 3);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_propertyName = *(fromCopy + 2);
  *&self->_has |= 1u;
  if ((*(fromCopy + 32) & 8) != 0)
  {
LABEL_4:
    self->_BOOLValue = *(fromCopy + 28);
    *&self->_has |= 8u;
  }

LABEL_5:
  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(IDSQRProtoPropertyOverride *)self setStringValue:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 32) & 4) != 0)
  {
    self->_uint32Value = *(fromCopy + 6);
    *&self->_has |= 4u;
  }
}

@end