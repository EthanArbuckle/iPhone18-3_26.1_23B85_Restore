@interface MTRPluginPBMVariableValueResponseMessage
+ (id)variableValueFromResponsePayloadData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (MTRPluginPBMVariableValueResponseMessage)initWithError:(id)error;
- (MTRPluginPBMVariableValueResponseMessage)initWithObjectValue:(id)value;
- (NSError)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)object;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setError:(id)error;
- (void)setObject:(id)object;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMVariableValueResponseMessage

- (MTRPluginPBMVariableValueResponseMessage)initWithError:(id)error
{
  errorCopy = error;
  if (errorCopy && (self = [(MTRPluginPBMVariableValueResponseMessage *)self init]) != 0)
  {
    v5 = [[MTRPluginPBMError alloc] initWithError:errorCopy];
    [(MTRPluginPBMVariableValueResponseMessage *)self setErrorValue:v5];

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MTRPluginPBMVariableValueResponseMessage)initWithObjectValue:(id)value
{
  valueCopy = value;
  if (valueCopy && (self = [(MTRPluginPBMVariableValueResponseMessage *)self init]) != 0)
  {
    v5 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:valueCopy];
    [(MTRPluginPBMVariableValueResponseMessage *)self setValue:v5];

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setError:(id)error
{
  errorCopy = error;
  v5 = [[MTRPluginPBMError alloc] initWithError:errorCopy];

  [(MTRPluginPBMVariableValueResponseMessage *)self setErrorValue:v5];
}

- (NSError)error
{
  errorValue = [(MTRPluginPBMVariableValueResponseMessage *)self errorValue];
  error = [errorValue error];

  return error;
}

- (void)setObject:(id)object
{
  objectCopy = object;
  v5 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:objectCopy];

  [(MTRPluginPBMVariableValueResponseMessage *)self setValue:v5];
}

- (id)object
{
  value = [(MTRPluginPBMVariableValueResponseMessage *)self value];
  object = [value object];

  return object;
}

+ (id)variableValueFromResponsePayloadData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  value = 0;
  if (dataCopy && (isKindOfClass & 1) != 0)
  {
    v6 = dataCopy;
    v7 = [[MTRPluginPBMVariableValueResponseMessage alloc] initWithData:v6];

    if (v7)
    {
      value = [(MTRPluginPBMVariableValueResponseMessage *)v7 value];
    }

    else
    {
      value = 0;
    }
  }

  return value;
}

- (BOOL)isValid
{
  header = [(MTRPluginPBMVariableValueResponseMessage *)self header];
  isValid = [header isValid];

  return isValid;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMVariableValueResponseMessage;
  v4 = [(MTRPluginPBMVariableValueResponseMessage *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMVariableValueResponseMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  header = self->_header;
  if (header)
  {
    dictionaryRepresentation = [(MTRPluginPBMHeader *)header dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"header"];
  }

  errorValue = self->_errorValue;
  if (errorValue)
  {
    dictionaryRepresentation2 = [(MTRPluginPBMError *)errorValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"errorValue"];
  }

  value = self->_value;
  if (value)
  {
    dictionaryRepresentation3 = [(MTRPluginPBMVariableValue *)value dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"value"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_checkinRequested];
    [dictionary setObject:v10 forKey:@"checkinRequested"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_errorValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    checkinRequested = self->_checkinRequested;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_header)
  {
    [toCopy setHeader:?];
    toCopy = v5;
  }

  if (self->_errorValue)
  {
    [v5 setErrorValue:?];
    toCopy = v5;
  }

  if (self->_value)
  {
    [v5 setValue:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[32] = self->_checkinRequested;
    toCopy[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(MTRPluginPBMError *)self->_errorValue copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(MTRPluginPBMVariableValue *)self->_value copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_checkinRequested;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  header = self->_header;
  if (header | *(equalCopy + 2))
  {
    if (![(MTRPluginPBMHeader *)header isEqual:?])
    {
      goto LABEL_10;
    }
  }

  errorValue = self->_errorValue;
  if (errorValue | *(equalCopy + 1))
  {
    if (![(MTRPluginPBMError *)errorValue isEqual:?])
    {
      goto LABEL_10;
    }
  }

  value = self->_value;
  if (value | *(equalCopy + 3))
  {
    if (![(MTRPluginPBMVariableValue *)value isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v8 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    if (self->_checkinRequested)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(equalCopy + 32))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = *(fromCopy + 2);
  v11 = fromCopy;
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

  fromCopy = v11;
LABEL_7:
  errorValue = self->_errorValue;
  v8 = *(fromCopy + 1);
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

  fromCopy = v11;
LABEL_13:
  value = self->_value;
  v10 = *(fromCopy + 3);
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

  fromCopy = v11;
LABEL_19:
  if (*(fromCopy + 36))
  {
    self->_checkinRequested = *(fromCopy + 32);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end