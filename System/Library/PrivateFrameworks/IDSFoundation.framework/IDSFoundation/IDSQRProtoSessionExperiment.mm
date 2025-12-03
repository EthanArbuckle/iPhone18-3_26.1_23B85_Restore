@interface IDSQRProtoSessionExperiment
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)testValueAsString:(int)string;
- (int)StringAsTestValue:(id)value;
- (int)testValue;
- (unint64_t)hash;
- (void)clearOneofValuesForTestValue;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setBoolValue:(BOOL)value;
- (void)setHasBoolValue:(BOOL)value;
- (void)setHasTestValue:(BOOL)value;
- (void)setInt32Value:(int)value;
- (void)setStringValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoSessionExperiment

- (void)setBoolValue:(BOOL)value
{
  [(IDSQRProtoSessionExperiment *)self clearOneofValuesForTestValue];
  *&self->_has |= 2u;
  self->_testValue = 1;
  *&self->_has |= 4u;
  self->_BOOLValue = value;
}

- (void)setHasBoolValue:(BOOL)value
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

- (void)setStringValue:(id)value
{
  valueCopy = value;
  [(IDSQRProtoSessionExperiment *)self clearOneofValuesForTestValue];
  *&self->_has |= 2u;
  self->_testValue = 2;
  stringValue = self->_stringValue;
  self->_stringValue = valueCopy;
}

- (void)setInt32Value:(int)value
{
  [(IDSQRProtoSessionExperiment *)self clearOneofValuesForTestValue];
  *&self->_has |= 2u;
  self->_testValue = 3;
  *&self->_has |= 1u;
  self->_int32Value = value;
}

- (int)testValue
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_testValue;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTestValue:(BOOL)value
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

- (id)testValueAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E77E08B0[string];
  }

  return v4;
}

- (int)StringAsTestValue:(id)value
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

  else if ([valueCopy isEqualToString:@"int32_value"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForTestValue
{
  *&self->_has &= ~2u;
  self->_testValue = 0;
  *&self->_has &= ~4u;
  self->_BOOLValue = 0;
  stringValue = self->_stringValue;
  self->_stringValue = 0;

  *&self->_has &= ~1u;
  self->_int32Value = 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoSessionExperiment;
  v4 = [(IDSQRProtoSessionExperiment *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoSessionExperiment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  experimentName = self->_experimentName;
  if (experimentName)
  {
    [dictionary setObject:experimentName forKey:@"experiment_name"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_BOOLValue];
    [v4 setObject:v6 forKey:@"BOOL_value"];
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v4 setObject:stringValue forKey:@"string_value"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_int32Value];
    [v4 setObject:v9 forKey:@"int32_value"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    testValue = self->_testValue;
    if (testValue >= 4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_testValue];
    }

    else
    {
      v11 = off_1E77E08B0[testValue];
    }

    [v4 setObject:v11 forKey:@"test_value"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_experimentName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[8] = self->_testValue;
    *(toCopy + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 36) = self->_BOOLValue;
    *(toCopy + 40) |= 4u;
  }

  v6 = toCopy;
  if (self->_stringValue)
  {
    [toCopy setStringValue:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    toCopy[4] = self->_int32Value;
    *(toCopy + 40) |= 1u;
  }

  if (self->_experimentName)
  {
    [v6 setExperimentName:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_testValue;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 36) = self->_BOOLValue;
    *(v5 + 40) |= 4u;
  }

  v8 = [(NSString *)self->_stringValue copyWithZone:zone];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_int32Value;
    *(v6 + 40) |= 1u;
  }

  v10 = [(NSString *)self->_experimentName copyWithZone:zone];
  v11 = *(v6 + 8);
  *(v6 + 8) = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_testValue != *(equalCopy + 8))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0)
    {
      goto LABEL_24;
    }

    if (self->_BOOLValue)
    {
      if ((*(equalCopy + 36) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (*(equalCopy + 36))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_24;
  }

  stringValue = self->_stringValue;
  if (!(stringValue | *(equalCopy + 3)))
  {
    goto LABEL_12;
  }

  if (![(NSString *)stringValue isEqual:?])
  {
LABEL_24:
    v8 = 0;
    goto LABEL_25;
  }

  has = self->_has;
LABEL_12:
  if (has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_int32Value != *(equalCopy + 4))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_24;
  }

  experimentName = self->_experimentName;
  if (experimentName | *(equalCopy + 1))
  {
    v8 = [(NSString *)experimentName isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_25:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_testValue;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_BOOLValue;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_stringValue hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_int32Value;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5 ^ [(NSString *)self->_experimentName hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 40);
  if ((v5 & 2) != 0)
  {
    self->_testValue = *(fromCopy + 8);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 40);
  }

  if ((v5 & 4) != 0)
  {
    self->_BOOLValue = *(fromCopy + 36);
    *&self->_has |= 4u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(IDSQRProtoSessionExperiment *)self setStringValue:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 40))
  {
    self->_int32Value = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(IDSQRProtoSessionExperiment *)self setExperimentName:?];
    fromCopy = v6;
  }
}

@end