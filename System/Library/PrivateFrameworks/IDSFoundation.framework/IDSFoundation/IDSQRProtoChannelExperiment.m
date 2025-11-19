@interface IDSQRProtoChannelExperiment
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)experimentIdAsString:(int)a3;
- (id)testValueAsString:(int)a3;
- (int)StringAsTestValue:(id)a3;
- (int)experimentId;
- (int)testValue;
- (unint64_t)hash;
- (void)clearOneofValuesForTestValue;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setBoolValue:(BOOL)a3;
- (void)setHasBoolValue:(BOOL)a3;
- (void)setHasInt32Value:(BOOL)a3;
- (void)setHasTestValue:(BOOL)a3;
- (void)setInt32Value:(int)a3;
- (void)setStringValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoChannelExperiment

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

- (void)setBoolValue:(BOOL)a3
{
  [(IDSQRProtoChannelExperiment *)self clearOneofValuesForTestValue];
  *&self->_has |= 4u;
  self->_testValue = 1;
  *&self->_has |= 8u;
  self->_BOOLValue = a3;
}

- (void)setHasBoolValue:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setStringValue:(id)a3
{
  v4 = a3;
  [(IDSQRProtoChannelExperiment *)self clearOneofValuesForTestValue];
  *&self->_has |= 4u;
  self->_testValue = 2;
  stringValue = self->_stringValue;
  self->_stringValue = v4;
}

- (void)setInt32Value:(int)a3
{
  [(IDSQRProtoChannelExperiment *)self clearOneofValuesForTestValue];
  *&self->_has |= 4u;
  self->_testValue = 3;
  *&self->_has |= 2u;
  self->_int32Value = a3;
}

- (void)setHasInt32Value:(BOOL)a3
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

- (int)testValue
{
  if ((*&self->_has & 4) != 0)
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)testValueAsString:(int)a3
{
  if (a3 >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E77E2C00[a3];
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
  *&self->_has &= ~4u;
  self->_testValue = 0;
  *&self->_has &= ~8u;
  self->_BOOLValue = 0;
  stringValue = self->_stringValue;
  self->_stringValue = 0;

  *&self->_has &= ~2u;
  self->_int32Value = 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoChannelExperiment;
  v4 = [(IDSQRProtoChannelExperiment *)&v8 description];
  v5 = [(IDSQRProtoChannelExperiment *)self dictionaryRepresentation];
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

  if ((*&self->_has & 8) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_BOOLValue];
    [v3 setObject:v6 forKey:@"BOOL_value"];
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v3 setObject:stringValue forKey:@"string_value"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_int32Value];
    [v3 setObject:v9 forKey:@"int32_value"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    testValue = self->_testValue;
    if (testValue >= 4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_testValue];
    }

    else
    {
      v11 = off_1E77E2C00[testValue];
    }

    [v3 setObject:v11 forKey:@"test_value"];
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

  if ((has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
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
  if ((has & 4) != 0)
  {
    v4[10] = self->_testValue;
    *(v4 + 48) |= 4u;
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

  v4[2] = self->_experimentId;
  *(v4 + 48) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    *(v4 + 44) = self->_BOOLValue;
    *(v4 + 48) |= 8u;
  }

LABEL_5:
  v6 = v4;
  if (self->_stringValue)
  {
    [v4 setStringValue:?];
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[6] = self->_int32Value;
    *(v4 + 48) |= 2u;
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
  if ((has & 4) != 0)
  {
    *(v5 + 40) = self->_testValue;
    *(v5 + 48) |= 4u;
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

  *(v5 + 8) = self->_experimentId;
  *(v5 + 48) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    *(v5 + 44) = self->_BOOLValue;
    *(v5 + 48) |= 8u;
  }

LABEL_5:
  v8 = [(NSString *)self->_stringValue copyWithZone:a3];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_int32Value;
    *(v6 + 48) |= 2u;
  }

  v10 = [(NSString *)self->_experimentName copyWithZone:a3];
  v11 = *(v6 + 16);
  *(v6 + 16) = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_testValue != *(v4 + 10))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_experimentId != *(v4 + 2))
    {
      goto LABEL_29;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0)
    {
      goto LABEL_29;
    }

    if (self->_BOOLValue)
    {
      if ((*(v4 + 44) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (*(v4 + 44))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_29;
  }

  stringValue = self->_stringValue;
  if (!(stringValue | *(v4 + 4)))
  {
    goto LABEL_17;
  }

  if (![(NSString *)stringValue isEqual:?])
  {
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  has = self->_has;
LABEL_17:
  if ((has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_int32Value != *(v4 + 6))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_29;
  }

  experimentName = self->_experimentName;
  if (experimentName | *(v4 + 2))
  {
    v8 = [(NSString *)experimentName isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_30:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
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

  v3 = 2654435761 * self->_testValue;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_experimentId;
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
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_int32Value;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v7 ^ v6 ^ [(NSString *)self->_experimentName hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 48);
  if ((v5 & 4) != 0)
  {
    self->_testValue = *(v4 + 10);
    *&self->_has |= 4u;
    v5 = *(v4 + 48);
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

  else if ((*(v4 + 48) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_experimentId = *(v4 + 2);
  *&self->_has |= 1u;
  if ((*(v4 + 48) & 8) != 0)
  {
LABEL_4:
    self->_BOOLValue = *(v4 + 44);
    *&self->_has |= 8u;
  }

LABEL_5:
  v6 = v4;
  if (*(v4 + 4))
  {
    [(IDSQRProtoChannelExperiment *)self setStringValue:?];
    v4 = v6;
  }

  if ((*(v4 + 48) & 2) != 0)
  {
    self->_int32Value = *(v4 + 6);
    *&self->_has |= 2u;
  }

  if (*(v4 + 2))
  {
    [(IDSQRProtoChannelExperiment *)self setExperimentName:?];
    v4 = v6;
  }
}

@end