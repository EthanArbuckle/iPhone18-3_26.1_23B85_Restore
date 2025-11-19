@interface IDSQRProtoSessionExperiment
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)testValueAsString:(int)a3;
- (int)StringAsTestValue:(id)a3;
- (int)testValue;
- (unint64_t)hash;
- (void)clearOneofValuesForTestValue;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setBoolValue:(BOOL)a3;
- (void)setHasBoolValue:(BOOL)a3;
- (void)setHasTestValue:(BOOL)a3;
- (void)setInt32Value:(int)a3;
- (void)setStringValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoSessionExperiment

- (void)setBoolValue:(BOOL)a3
{
  [(IDSQRProtoSessionExperiment *)self clearOneofValuesForTestValue];
  *&self->_has |= 2u;
  self->_testValue = 1;
  *&self->_has |= 4u;
  self->_BOOLValue = a3;
}

- (void)setHasBoolValue:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setStringValue:(id)a3
{
  v4 = a3;
  [(IDSQRProtoSessionExperiment *)self clearOneofValuesForTestValue];
  *&self->_has |= 2u;
  self->_testValue = 2;
  stringValue = self->_stringValue;
  self->_stringValue = v4;
}

- (void)setInt32Value:(int)a3
{
  [(IDSQRProtoSessionExperiment *)self clearOneofValuesForTestValue];
  *&self->_has |= 2u;
  self->_testValue = 3;
  *&self->_has |= 1u;
  self->_int32Value = a3;
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

- (void)setHasTestValue:(BOOL)a3
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

- (id)testValueAsString:(int)a3
{
  if (a3 >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E77E08B0[a3];
  }

  return v4;
}

- (int)StringAsTestValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"BOOL_value"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"string_value"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"int32_value"])
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
  v5 = [(IDSQRProtoSessionExperiment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  experimentName = self->_experimentName;
  if (experimentName)
  {
    [v3 setObject:experimentName forKey:@"experiment_name"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v5;
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_experimentName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[8] = self->_testValue;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 36) = self->_BOOLValue;
    *(v4 + 40) |= 4u;
  }

  v6 = v4;
  if (self->_stringValue)
  {
    [v4 setStringValue:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    v4[4] = self->_int32Value;
    *(v4 + 40) |= 1u;
  }

  if (self->_experimentName)
  {
    [v6 setExperimentName:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_stringValue copyWithZone:a3];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_int32Value;
    *(v6 + 40) |= 1u;
  }

  v10 = [(NSString *)self->_experimentName copyWithZone:a3];
  v11 = *(v6 + 8);
  *(v6 + 8) = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_testValue != *(v4 + 8))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0)
    {
      goto LABEL_24;
    }

    if (self->_BOOLValue)
    {
      if ((*(v4 + 36) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (*(v4 + 36))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_24;
  }

  stringValue = self->_stringValue;
  if (!(stringValue | *(v4 + 3)))
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
    if ((*(v4 + 40) & 1) == 0 || self->_int32Value != *(v4 + 4))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_24;
  }

  experimentName = self->_experimentName;
  if (experimentName | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if ((v5 & 2) != 0)
  {
    self->_testValue = *(v4 + 8);
    *&self->_has |= 2u;
    v5 = *(v4 + 40);
  }

  if ((v5 & 4) != 0)
  {
    self->_BOOLValue = *(v4 + 36);
    *&self->_has |= 4u;
  }

  v6 = v4;
  if (*(v4 + 3))
  {
    [(IDSQRProtoSessionExperiment *)self setStringValue:?];
    v4 = v6;
  }

  if (*(v4 + 40))
  {
    self->_int32Value = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(IDSQRProtoSessionExperiment *)self setExperimentName:?];
    v4 = v6;
  }
}

@end