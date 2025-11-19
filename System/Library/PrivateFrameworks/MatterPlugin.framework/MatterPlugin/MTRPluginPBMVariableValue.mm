@interface MTRPluginPBMVariableValue
- (BOOL)_setObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MTRPluginPBMVariableValue)initWithObjectValue:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)object;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIntegerValue:(BOOL)a3;
- (void)setHasUnsignedIntegerValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMVariableValue

- (MTRPluginPBMVariableValue)initWithObjectValue:(id)a3
{
  v4 = a3;
  v5 = [(MTRPluginPBMVariableValue *)self init];
  v6 = v5;
  if (v5 && [(MTRPluginPBMVariableValue *)v5 _setObject:v4])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_setObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      Type = CFNumberGetType(v4);
      if (Type <= kCFNumberCGFloatType)
      {
        if (((1 << Type) & 0x13060) != 0)
        {
          [(__CFNumber *)v4 doubleValue];
          [(MTRPluginPBMVariableValue *)self setDoubleValue:?];
          goto LABEL_38;
        }

        if (Type == kCFNumberCFIndexType)
        {
          [(MTRPluginPBMVariableValue *)self setUnsignedIntegerValue:[(__CFNumber *)v4 unsignedLongLongValue]];
          goto LABEL_38;
        }
      }

      [(MTRPluginPBMVariableValue *)self setIntegerValue:[(__CFNumber *)v4 longLongValue]];
      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTRPluginPBMVariableValue *)self setDataValue:v4];
      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[MTRPluginPBMDate alloc] initWithDate:v4];
      [(MTRPluginPBMVariableValue *)self setDateValue:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [[MTRPluginPBMUUID alloc] initWithUUID:v4];
        [(MTRPluginPBMVariableValue *)self setUuidValue:v6];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [[MTRPluginPBMURL alloc] initWithURL:v4];
          [(MTRPluginPBMVariableValue *)self setUrlValue:v6];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = [[MTRPluginPBMError alloc] initWithError:v4];
            [(MTRPluginPBMVariableValue *)self setErrorValue:v6];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v6 = [[MTRPluginPBMAttributePath alloc] initWithAttributePath:v4];
              [(MTRPluginPBMVariableValue *)self setAttributePathValue:v6];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v6 = [[MTRPluginPBMCommandPath alloc] initWithCommandPath:v4];
                [(MTRPluginPBMVariableValue *)self setCommandPathValue:v6];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v6 = [[MTRPluginPBMEventPath alloc] initWithEventPath:v4];
                  [(MTRPluginPBMVariableValue *)self setEventPathValue:v6];
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v7 = [[MTRPluginPBMVariableValueList alloc] initWithSet:v4];
                      if (v7)
                      {
                        v6 = v7;
                        [(MTRPluginPBMVariableValue *)self setSetValue:v7];
                        goto LABEL_37;
                      }
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v8 = [[MTRPluginPBMVariableValueList alloc] initWithArray:v4];
                        if (v8)
                        {
                          v6 = v8;
                          [(MTRPluginPBMVariableValue *)self setArrayValue:v8];
                          goto LABEL_37;
                        }
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v9 = [[MTRPluginPBMVariableValueDictionary alloc] initWithDictionary:v4];
                          if (v9)
                          {
                            v6 = v9;
                            [(MTRPluginPBMVariableValue *)self setDictionaryValue:v9];
                            goto LABEL_37;
                          }
                        }
                      }
                    }

                    v10 = 0;
                    goto LABEL_39;
                  }

                  v6 = [[MTRPluginPBMClusterPath alloc] initWithClusterPath:v4];
                  [(MTRPluginPBMVariableValue *)self setClusterPathValue:v6];
                }
              }
            }
          }
        }
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  [(MTRPluginPBMVariableValue *)self setStringValue:v4];
LABEL_38:
  v10 = 1;
LABEL_39:

  return v10;
}

- (id)object
{
  if ([(MTRPluginPBMVariableValue *)self hasStringValue])
  {
    v3 = [(MTRPluginPBMVariableValue *)self stringValue];
LABEL_11:
    v5 = v3;
    goto LABEL_12;
  }

  if ([(MTRPluginPBMVariableValue *)self hasIntegerValue])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[MTRPluginPBMVariableValue integerValue](self, "integerValue")}];
    goto LABEL_11;
  }

  if ([(MTRPluginPBMVariableValue *)self hasUnsignedIntegerValue])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[MTRPluginPBMVariableValue unsignedIntegerValue](self, "unsignedIntegerValue")}];
    goto LABEL_11;
  }

  if ([(MTRPluginPBMVariableValue *)self hasDoubleValue])
  {
    v4 = MEMORY[0x277CCABB0];
    [(MTRPluginPBMVariableValue *)self doubleValue];
    v3 = [v4 numberWithDouble:?];
    goto LABEL_11;
  }

  if ([(MTRPluginPBMVariableValue *)self hasDataValue])
  {
    v3 = [(MTRPluginPBMVariableValue *)self dataValue];
    goto LABEL_11;
  }

  if ([(MTRPluginPBMVariableValue *)self hasUuidValue])
  {
    v7 = [(MTRPluginPBMVariableValue *)self uuidValue];
    v8 = [v7 uuid];
LABEL_37:
    v5 = v8;

    goto LABEL_12;
  }

  if ([(MTRPluginPBMVariableValue *)self hasUrlValue])
  {
    v7 = [(MTRPluginPBMVariableValue *)self urlValue];
    v8 = [v7 url];
    goto LABEL_37;
  }

  if ([(MTRPluginPBMVariableValue *)self hasDateValue])
  {
    v7 = [(MTRPluginPBMVariableValue *)self dateValue];
    v8 = [v7 date];
    goto LABEL_37;
  }

  if ([(MTRPluginPBMVariableValue *)self hasErrorValue])
  {
    v7 = [(MTRPluginPBMVariableValue *)self errorValue];
    v8 = [v7 error];
    goto LABEL_37;
  }

  if ([(MTRPluginPBMVariableValue *)self hasClusterPathValue])
  {
    v7 = [(MTRPluginPBMVariableValue *)self clusterPathValue];
    v8 = [v7 clusterPath];
    goto LABEL_37;
  }

  if ([(MTRPluginPBMVariableValue *)self hasAttributePathValue])
  {
    v7 = [(MTRPluginPBMVariableValue *)self attributePathValue];
    v8 = [v7 attributePath];
    goto LABEL_37;
  }

  if ([(MTRPluginPBMVariableValue *)self hasCommandPathValue])
  {
    v7 = [(MTRPluginPBMVariableValue *)self commandPathValue];
    v8 = [v7 commandPath];
    goto LABEL_37;
  }

  if ([(MTRPluginPBMVariableValue *)self hasEventPathValue])
  {
    v7 = [(MTRPluginPBMVariableValue *)self eventPathValue];
    v8 = [v7 eventPath];
    goto LABEL_37;
  }

  if ([(MTRPluginPBMVariableValue *)self hasArrayValue])
  {
    v7 = [(MTRPluginPBMVariableValue *)self arrayValue];
    v8 = [v7 array];
    goto LABEL_37;
  }

  if ([(MTRPluginPBMVariableValue *)self hasSetValue])
  {
    v7 = [(MTRPluginPBMVariableValue *)self setValue];
    v8 = [v7 set];
    goto LABEL_37;
  }

  if ([(MTRPluginPBMVariableValue *)self hasDictionaryValue])
  {
    v7 = [(MTRPluginPBMVariableValue *)self dictionaryValue];
    v8 = [v7 dictionary];
    goto LABEL_37;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (void)setHasIntegerValue:(BOOL)a3
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

- (void)setHasUnsignedIntegerValue:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMVariableValue;
  v4 = [(MTRPluginPBMVariableValue *)&v8 description];
  v5 = [(MTRPluginPBMVariableValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v3 setObject:stringValue forKey:@"stringValue"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_integerValue];
    [v4 setObject:v32 forKey:@"integerValue"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_unsignedIntegerValue];
  [v4 setObject:v33 forKey:@"unsignedIntegerValue"];

  if (*&self->_has)
  {
LABEL_6:
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_doubleValue];
    [v4 setObject:v7 forKey:@"doubleValue"];
  }

LABEL_7:
  dataValue = self->_dataValue;
  if (dataValue)
  {
    [v4 setObject:dataValue forKey:@"dataValue"];
  }

  uuidValue = self->_uuidValue;
  if (uuidValue)
  {
    v10 = [(MTRPluginPBMUUID *)uuidValue dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"uuidValue"];
  }

  dateValue = self->_dateValue;
  if (dateValue)
  {
    v12 = [(MTRPluginPBMDate *)dateValue dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"dateValue"];
  }

  urlValue = self->_urlValue;
  if (urlValue)
  {
    v14 = [(MTRPluginPBMURL *)urlValue dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"urlValue"];
  }

  arrayValue = self->_arrayValue;
  if (arrayValue)
  {
    v16 = [(MTRPluginPBMVariableValueList *)arrayValue dictionaryRepresentation];
    [v4 setObject:v16 forKey:@"arrayValue"];
  }

  setValue = self->_setValue;
  if (setValue)
  {
    v18 = [(MTRPluginPBMVariableValueList *)setValue dictionaryRepresentation];
    [v4 setObject:v18 forKey:@"setValue"];
  }

  dictionaryValue = self->_dictionaryValue;
  if (dictionaryValue)
  {
    v20 = [(MTRPluginPBMVariableValueDictionary *)dictionaryValue dictionaryRepresentation];
    [v4 setObject:v20 forKey:@"dictionaryValue"];
  }

  errorValue = self->_errorValue;
  if (errorValue)
  {
    v22 = [(MTRPluginPBMError *)errorValue dictionaryRepresentation];
    [v4 setObject:v22 forKey:@"errorValue"];
  }

  clusterPathValue = self->_clusterPathValue;
  if (clusterPathValue)
  {
    v24 = [(MTRPluginPBMClusterPath *)clusterPathValue dictionaryRepresentation];
    [v4 setObject:v24 forKey:@"clusterPathValue"];
  }

  attributePathValue = self->_attributePathValue;
  if (attributePathValue)
  {
    v26 = [(MTRPluginPBMAttributePath *)attributePathValue dictionaryRepresentation];
    [v4 setObject:v26 forKey:@"attributePathValue"];
  }

  commandPathValue = self->_commandPathValue;
  if (commandPathValue)
  {
    v28 = [(MTRPluginPBMCommandPath *)commandPathValue dictionaryRepresentation];
    [v4 setObject:v28 forKey:@"commandPathValue"];
  }

  eventPathValue = self->_eventPathValue;
  if (eventPathValue)
  {
    v30 = [(MTRPluginPBMEventPath *)eventPathValue dictionaryRepresentation];
    [v4 setObject:v30 forKey:@"eventPathValue"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    integerValue = self->_integerValue;
    PBDataWriterWriteInt64Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  unsignedIntegerValue = self->_unsignedIntegerValue;
  PBDataWriterWriteUint64Field();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_6:
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

LABEL_7:
  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  if (self->_uuidValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_dateValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_urlValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_arrayValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_setValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_dictionaryValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_errorValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_clusterPathValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_attributePathValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_commandPathValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_eventPathValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_stringValue)
  {
    [v4 setStringValue:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_integerValue;
    *(v4 + 136) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 3) = self->_unsignedIntegerValue;
  *(v4 + 136) |= 4u;
  if (*&self->_has)
  {
LABEL_6:
    *(v4 + 1) = *&self->_doubleValue;
    *(v4 + 136) |= 1u;
  }

LABEL_7:
  if (self->_dataValue)
  {
    [v6 setDataValue:?];
    v4 = v6;
  }

  if (self->_uuidValue)
  {
    [v6 setUuidValue:?];
    v4 = v6;
  }

  if (self->_dateValue)
  {
    [v6 setDateValue:?];
    v4 = v6;
  }

  if (self->_urlValue)
  {
    [v6 setUrlValue:?];
    v4 = v6;
  }

  if (self->_arrayValue)
  {
    [v6 setArrayValue:?];
    v4 = v6;
  }

  if (self->_setValue)
  {
    [v6 setSetValue:?];
    v4 = v6;
  }

  if (self->_dictionaryValue)
  {
    [v6 setDictionaryValue:?];
    v4 = v6;
  }

  if (self->_errorValue)
  {
    [v6 setErrorValue:?];
    v4 = v6;
  }

  if (self->_clusterPathValue)
  {
    [v6 setClusterPathValue:?];
    v4 = v6;
  }

  if (self->_attributePathValue)
  {
    [v6 setAttributePathValue:?];
    v4 = v6;
  }

  if (self->_commandPathValue)
  {
    [v6 setCommandPathValue:?];
    v4 = v6;
  }

  if (self->_eventPathValue)
  {
    [v6 setEventPathValue:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_stringValue copyWithZone:a3];
  v7 = *(v5 + 112);
  *(v5 + 112) = v6;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_unsignedIntegerValue;
    *(v5 + 136) |= 4u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_integerValue;
  *(v5 + 136) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_doubleValue;
    *(v5 + 136) |= 1u;
  }

LABEL_5:
  v9 = [(NSData *)self->_dataValue copyWithZone:a3];
  v10 = *(v5 + 64);
  *(v5 + 64) = v9;

  v11 = [(MTRPluginPBMUUID *)self->_uuidValue copyWithZone:a3];
  v12 = *(v5 + 128);
  *(v5 + 128) = v11;

  v13 = [(MTRPluginPBMDate *)self->_dateValue copyWithZone:a3];
  v14 = *(v5 + 72);
  *(v5 + 72) = v13;

  v15 = [(MTRPluginPBMURL *)self->_urlValue copyWithZone:a3];
  v16 = *(v5 + 120);
  *(v5 + 120) = v15;

  v17 = [(MTRPluginPBMVariableValueList *)self->_arrayValue copyWithZone:a3];
  v18 = *(v5 + 32);
  *(v5 + 32) = v17;

  v19 = [(MTRPluginPBMVariableValueList *)self->_setValue copyWithZone:a3];
  v20 = *(v5 + 104);
  *(v5 + 104) = v19;

  v21 = [(MTRPluginPBMVariableValueDictionary *)self->_dictionaryValue copyWithZone:a3];
  v22 = *(v5 + 80);
  *(v5 + 80) = v21;

  v23 = [(MTRPluginPBMError *)self->_errorValue copyWithZone:a3];
  v24 = *(v5 + 88);
  *(v5 + 88) = v23;

  v25 = [(MTRPluginPBMClusterPath *)self->_clusterPathValue copyWithZone:a3];
  v26 = *(v5 + 48);
  *(v5 + 48) = v25;

  v27 = [(MTRPluginPBMAttributePath *)self->_attributePathValue copyWithZone:a3];
  v28 = *(v5 + 40);
  *(v5 + 40) = v27;

  v29 = [(MTRPluginPBMCommandPath *)self->_commandPathValue copyWithZone:a3];
  v30 = *(v5 + 56);
  *(v5 + 56) = v29;

  v31 = [(MTRPluginPBMEventPath *)self->_eventPathValue copyWithZone:a3];
  v32 = *(v5 + 96);
  *(v5 + 96) = v31;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(v4 + 14))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_43;
    }
  }

  v6 = *(v4 + 136);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 136) & 2) == 0 || self->_integerValue != *(v4 + 2))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 136) & 2) != 0)
  {
LABEL_43:
    v19 = 0;
    goto LABEL_44;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 136) & 4) == 0 || self->_unsignedIntegerValue != *(v4 + 3))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 136) & 4) != 0)
  {
    goto LABEL_43;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 136) & 1) == 0 || self->_doubleValue != *(v4 + 1))
    {
      goto LABEL_43;
    }
  }

  else if (*(v4 + 136))
  {
    goto LABEL_43;
  }

  dataValue = self->_dataValue;
  if (dataValue | *(v4 + 8) && ![(NSData *)dataValue isEqual:?])
  {
    goto LABEL_43;
  }

  uuidValue = self->_uuidValue;
  if (uuidValue | *(v4 + 16))
  {
    if (![(MTRPluginPBMUUID *)uuidValue isEqual:?])
    {
      goto LABEL_43;
    }
  }

  dateValue = self->_dateValue;
  if (dateValue | *(v4 + 9))
  {
    if (![(MTRPluginPBMDate *)dateValue isEqual:?])
    {
      goto LABEL_43;
    }
  }

  urlValue = self->_urlValue;
  if (urlValue | *(v4 + 15))
  {
    if (![(MTRPluginPBMURL *)urlValue isEqual:?])
    {
      goto LABEL_43;
    }
  }

  arrayValue = self->_arrayValue;
  if (arrayValue | *(v4 + 4))
  {
    if (![(MTRPluginPBMVariableValueList *)arrayValue isEqual:?])
    {
      goto LABEL_43;
    }
  }

  setValue = self->_setValue;
  if (setValue | *(v4 + 13))
  {
    if (![(MTRPluginPBMVariableValueList *)setValue isEqual:?])
    {
      goto LABEL_43;
    }
  }

  dictionaryValue = self->_dictionaryValue;
  if (dictionaryValue | *(v4 + 10))
  {
    if (![(MTRPluginPBMVariableValueDictionary *)dictionaryValue isEqual:?])
    {
      goto LABEL_43;
    }
  }

  errorValue = self->_errorValue;
  if (errorValue | *(v4 + 11))
  {
    if (![(MTRPluginPBMError *)errorValue isEqual:?])
    {
      goto LABEL_43;
    }
  }

  clusterPathValue = self->_clusterPathValue;
  if (clusterPathValue | *(v4 + 6))
  {
    if (![(MTRPluginPBMClusterPath *)clusterPathValue isEqual:?])
    {
      goto LABEL_43;
    }
  }

  attributePathValue = self->_attributePathValue;
  if (attributePathValue | *(v4 + 5))
  {
    if (![(MTRPluginPBMAttributePath *)attributePathValue isEqual:?])
    {
      goto LABEL_43;
    }
  }

  commandPathValue = self->_commandPathValue;
  if (commandPathValue | *(v4 + 7))
  {
    if (![(MTRPluginPBMCommandPath *)commandPathValue isEqual:?])
    {
      goto LABEL_43;
    }
  }

  eventPathValue = self->_eventPathValue;
  if (eventPathValue | *(v4 + 12))
  {
    v19 = [(MTRPluginPBMEventPath *)eventPathValue isEqual:?];
  }

  else
  {
    v19 = 1;
  }

LABEL_44:

  return v19;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stringValue hash];
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v6 = 2654435761 * self->_integerValue;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = 2654435761u * self->_unsignedIntegerValue;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  doubleValue = self->_doubleValue;
  if (doubleValue < 0.0)
  {
    doubleValue = -doubleValue;
  }

  *v4.i64 = floor(doubleValue + 0.5);
  v9 = (doubleValue - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v5, v4).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_11:
  v12 = v6 ^ v3 ^ v7 ^ v11 ^ [(NSData *)self->_dataValue hash];
  v13 = [(MTRPluginPBMUUID *)self->_uuidValue hash];
  v14 = v13 ^ [(MTRPluginPBMDate *)self->_dateValue hash];
  v15 = v12 ^ v14 ^ [(MTRPluginPBMURL *)self->_urlValue hash];
  v16 = [(MTRPluginPBMVariableValueList *)self->_arrayValue hash];
  v17 = v16 ^ [(MTRPluginPBMVariableValueList *)self->_setValue hash];
  v18 = v17 ^ [(MTRPluginPBMVariableValueDictionary *)self->_dictionaryValue hash];
  v19 = v15 ^ v18 ^ [(MTRPluginPBMError *)self->_errorValue hash];
  v20 = [(MTRPluginPBMClusterPath *)self->_clusterPathValue hash];
  v21 = v20 ^ [(MTRPluginPBMAttributePath *)self->_attributePathValue hash];
  v22 = v21 ^ [(MTRPluginPBMCommandPath *)self->_commandPathValue hash];
  return v19 ^ v22 ^ [(MTRPluginPBMEventPath *)self->_eventPathValue hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v28 = v4;
  if (*(v4 + 14))
  {
    [(MTRPluginPBMVariableValue *)self setStringValue:?];
    v4 = v28;
  }

  v5 = *(v4 + 136);
  if ((v5 & 2) != 0)
  {
    self->_integerValue = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 136);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v4 + 136) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_unsignedIntegerValue = *(v4 + 3);
  *&self->_has |= 4u;
  if (*(v4 + 136))
  {
LABEL_6:
    self->_doubleValue = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_7:
  if (*(v4 + 8))
  {
    [(MTRPluginPBMVariableValue *)self setDataValue:?];
    v4 = v28;
  }

  uuidValue = self->_uuidValue;
  v7 = *(v4 + 16);
  if (uuidValue)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    [(MTRPluginPBMUUID *)uuidValue mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    [(MTRPluginPBMVariableValue *)self setUuidValue:?];
  }

  v4 = v28;
LABEL_18:
  dateValue = self->_dateValue;
  v9 = *(v4 + 9);
  if (dateValue)
  {
    if (!v9)
    {
      goto LABEL_24;
    }

    [(MTRPluginPBMDate *)dateValue mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_24;
    }

    [(MTRPluginPBMVariableValue *)self setDateValue:?];
  }

  v4 = v28;
LABEL_24:
  urlValue = self->_urlValue;
  v11 = *(v4 + 15);
  if (urlValue)
  {
    if (!v11)
    {
      goto LABEL_30;
    }

    [(MTRPluginPBMURL *)urlValue mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_30;
    }

    [(MTRPluginPBMVariableValue *)self setUrlValue:?];
  }

  v4 = v28;
LABEL_30:
  arrayValue = self->_arrayValue;
  v13 = *(v4 + 4);
  if (arrayValue)
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    [(MTRPluginPBMVariableValueList *)arrayValue mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    [(MTRPluginPBMVariableValue *)self setArrayValue:?];
  }

  v4 = v28;
LABEL_36:
  setValue = self->_setValue;
  v15 = *(v4 + 13);
  if (setValue)
  {
    if (!v15)
    {
      goto LABEL_42;
    }

    [(MTRPluginPBMVariableValueList *)setValue mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_42;
    }

    [(MTRPluginPBMVariableValue *)self setSetValue:?];
  }

  v4 = v28;
LABEL_42:
  dictionaryValue = self->_dictionaryValue;
  v17 = *(v4 + 10);
  if (dictionaryValue)
  {
    if (!v17)
    {
      goto LABEL_48;
    }

    [(MTRPluginPBMVariableValueDictionary *)dictionaryValue mergeFrom:?];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_48;
    }

    [(MTRPluginPBMVariableValue *)self setDictionaryValue:?];
  }

  v4 = v28;
LABEL_48:
  errorValue = self->_errorValue;
  v19 = *(v4 + 11);
  if (errorValue)
  {
    if (!v19)
    {
      goto LABEL_54;
    }

    [(MTRPluginPBMError *)errorValue mergeFrom:?];
  }

  else
  {
    if (!v19)
    {
      goto LABEL_54;
    }

    [(MTRPluginPBMVariableValue *)self setErrorValue:?];
  }

  v4 = v28;
LABEL_54:
  clusterPathValue = self->_clusterPathValue;
  v21 = *(v4 + 6);
  if (clusterPathValue)
  {
    if (!v21)
    {
      goto LABEL_60;
    }

    [(MTRPluginPBMClusterPath *)clusterPathValue mergeFrom:?];
  }

  else
  {
    if (!v21)
    {
      goto LABEL_60;
    }

    [(MTRPluginPBMVariableValue *)self setClusterPathValue:?];
  }

  v4 = v28;
LABEL_60:
  attributePathValue = self->_attributePathValue;
  v23 = *(v4 + 5);
  if (attributePathValue)
  {
    if (!v23)
    {
      goto LABEL_66;
    }

    [(MTRPluginPBMAttributePath *)attributePathValue mergeFrom:?];
  }

  else
  {
    if (!v23)
    {
      goto LABEL_66;
    }

    [(MTRPluginPBMVariableValue *)self setAttributePathValue:?];
  }

  v4 = v28;
LABEL_66:
  commandPathValue = self->_commandPathValue;
  v25 = *(v4 + 7);
  if (commandPathValue)
  {
    if (!v25)
    {
      goto LABEL_72;
    }

    [(MTRPluginPBMCommandPath *)commandPathValue mergeFrom:?];
  }

  else
  {
    if (!v25)
    {
      goto LABEL_72;
    }

    [(MTRPluginPBMVariableValue *)self setCommandPathValue:?];
  }

  v4 = v28;
LABEL_72:
  eventPathValue = self->_eventPathValue;
  v27 = *(v4 + 12);
  if (eventPathValue)
  {
    if (v27)
    {
      [(MTRPluginPBMEventPath *)eventPathValue mergeFrom:?];
    }
  }

  else if (v27)
  {
    [(MTRPluginPBMVariableValue *)self setEventPathValue:?];
  }

  MEMORY[0x2821F96F8]();
}

@end