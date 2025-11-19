@interface MTRPluginPBMVariableValueResponseMessage
+ (id)variableValueFromResponsePayloadData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (MTRPluginPBMVariableValueResponseMessage)initWithError:(id)a3;
- (MTRPluginPBMVariableValueResponseMessage)initWithObjectValue:(id)a3;
- (NSError)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)object;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setError:(id)a3;
- (void)setObject:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMVariableValueResponseMessage

- (MTRPluginPBMVariableValueResponseMessage)initWithError:(id)a3
{
  v4 = a3;
  if (v4 && (self = [(MTRPluginPBMVariableValueResponseMessage *)self init]) != 0)
  {
    v5 = [[MTRPluginPBMError alloc] initWithError:v4];
    [(MTRPluginPBMVariableValueResponseMessage *)self setErrorValue:v5];

    self = self;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MTRPluginPBMVariableValueResponseMessage)initWithObjectValue:(id)a3
{
  v4 = a3;
  if (v4 && (self = [(MTRPluginPBMVariableValueResponseMessage *)self init]) != 0)
  {
    v5 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:v4];
    [(MTRPluginPBMVariableValueResponseMessage *)self setValue:v5];

    self = self;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setError:(id)a3
{
  v4 = a3;
  v5 = [[MTRPluginPBMError alloc] initWithError:v4];

  [(MTRPluginPBMVariableValueResponseMessage *)self setErrorValue:v5];
}

- (NSError)error
{
  v2 = [(MTRPluginPBMVariableValueResponseMessage *)self errorValue];
  v3 = [v2 error];

  return v3;
}

- (void)setObject:(id)a3
{
  v4 = a3;
  v5 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:v4];

  [(MTRPluginPBMVariableValueResponseMessage *)self setValue:v5];
}

- (id)object
{
  v2 = [(MTRPluginPBMVariableValueResponseMessage *)self value];
  v3 = [v2 object];

  return v3;
}

+ (id)variableValueFromResponsePayloadData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (v3 && (isKindOfClass & 1) != 0)
  {
    v6 = v3;
    v7 = [[MTRPluginPBMVariableValueResponseMessage alloc] initWithData:v6];

    if (v7)
    {
      v5 = [(MTRPluginPBMVariableValueResponseMessage *)v7 value];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isValid
{
  v2 = [(MTRPluginPBMVariableValueResponseMessage *)self header];
  v3 = [v2 isValid];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMVariableValueResponseMessage;
  v4 = [(MTRPluginPBMVariableValueResponseMessage *)&v8 description];
  v5 = [(MTRPluginPBMVariableValueResponseMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  header = self->_header;
  if (header)
  {
    v5 = [(MTRPluginPBMHeader *)header dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"header"];
  }

  errorValue = self->_errorValue;
  if (errorValue)
  {
    v7 = [(MTRPluginPBMError *)errorValue dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"errorValue"];
  }

  value = self->_value;
  if (value)
  {
    v9 = [(MTRPluginPBMVariableValue *)value dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"value"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_checkinRequested];
    [v3 setObject:v10 forKey:@"checkinRequested"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_errorValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    checkinRequested = self->_checkinRequested;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_header)
  {
    [v4 setHeader:?];
    v4 = v5;
  }

  if (self->_errorValue)
  {
    [v5 setErrorValue:?];
    v4 = v5;
  }

  if (self->_value)
  {
    [v5 setValue:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[32] = self->_checkinRequested;
    v4[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(MTRPluginPBMError *)self->_errorValue copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(MTRPluginPBMVariableValue *)self->_value copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_checkinRequested;
    *(v5 + 36) |= 1u;
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

  header = self->_header;
  if (header | *(v4 + 2))
  {
    if (![(MTRPluginPBMHeader *)header isEqual:?])
    {
      goto LABEL_10;
    }
  }

  errorValue = self->_errorValue;
  if (errorValue | *(v4 + 1))
  {
    if (![(MTRPluginPBMError *)errorValue isEqual:?])
    {
      goto LABEL_10;
    }
  }

  value = self->_value;
  if (value | *(v4 + 3))
  {
    if (![(MTRPluginPBMVariableValue *)value isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v8 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    if (self->_checkinRequested)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_10;
    }

    v8 = 1;
  }

LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(MTRPluginPBMHeader *)self->_header hash];
  v4 = [(MTRPluginPBMError *)self->_errorValue hash];
  v5 = [(MTRPluginPBMVariableValue *)self->_value hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_checkinRequested;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = *(v4 + 2);
  v11 = v4;
  if (header)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MTRPluginPBMHeader *)header mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MTRPluginPBMVariableValueResponseMessage *)self setHeader:?];
  }

  v4 = v11;
LABEL_7:
  errorValue = self->_errorValue;
  v8 = *(v4 + 1);
  if (errorValue)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(MTRPluginPBMError *)errorValue mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(MTRPluginPBMVariableValueResponseMessage *)self setErrorValue:?];
  }

  v4 = v11;
LABEL_13:
  value = self->_value;
  v10 = *(v4 + 3);
  if (value)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(MTRPluginPBMVariableValue *)value mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(MTRPluginPBMVariableValueResponseMessage *)self setValue:?];
  }

  v4 = v11;
LABEL_19:
  if (*(v4 + 36))
  {
    self->_checkinRequested = *(v4 + 32);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end