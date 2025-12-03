@interface NPKProtoStandalonePaymentSetupField
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFieldType:(id)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentSetupField

- (int)StringAsFieldType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 100;
  }

  else if ([typeCopy isEqualToString:@"Text"])
  {
    v4 = 110;
  }

  else if ([typeCopy isEqualToString:@"Date"])
  {
    v4 = 120;
  }

  else if ([typeCopy isEqualToString:@"Label"])
  {
    v4 = 130;
  }

  else if ([typeCopy isEqualToString:@"Footer"])
  {
    v4 = 140;
  }

  else if ([typeCopy isEqualToString:@"Picker"])
  {
    v4 = 150;
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentSetupField;
  v4 = [(NPKProtoStandalonePaymentSetupField *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentSetupField *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  fieldType = self->_fieldType;
  if (fieldType > 129)
  {
    if (fieldType == 130)
    {
      v7 = @"Label";
      goto LABEL_17;
    }

    if (fieldType != 140)
    {
      if (fieldType == 150)
      {
        v7 = @"Picker";
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v7 = @"Footer";
  }

  else
  {
    if (fieldType == 100)
    {
      v7 = @"Unknown";
      goto LABEL_17;
    }

    if (fieldType != 110)
    {
      if (fieldType == 120)
      {
        v7 = @"Date";
        goto LABEL_17;
      }

LABEL_14:
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_fieldType];
      goto LABEL_17;
    }

    v7 = @"Text";
  }

LABEL_17:
  [v4 setObject:v7 forKey:@"fieldType"];

  currentValue = self->_currentValue;
  if (currentValue)
  {
    [v4 setObject:currentValue forKey:@"currentValue"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_identifier)
  {
    [NPKProtoStandalonePaymentSetupField writeTo:];
  }

  PBDataWriterWriteStringField();
  fieldType = self->_fieldType;
  PBDataWriterWriteInt32Field();
  if (self->_currentValue)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setIdentifier:self->_identifier];
  v4 = toCopy;
  toCopy[4] = self->_fieldType;
  if (self->_currentValue)
  {
    [toCopy setCurrentValue:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 16) = self->_fieldType;
  v8 = [(NSString *)self->_currentValue copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[3])) || -[NSString isEqual:](identifier, "isEqual:")) && self->_fieldType == *(equalCopy + 4))
  {
    currentValue = self->_currentValue;
    if (currentValue | equalCopy[1])
    {
      v7 = [(NSString *)currentValue isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = 2654435761 * self->_fieldType;
  return v4 ^ v3 ^ [(NSString *)self->_currentValue hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(NPKProtoStandalonePaymentSetupField *)self setIdentifier:?];
    fromCopy = v5;
  }

  self->_fieldType = fromCopy[4];
  if (*(fromCopy + 1))
  {
    [(NPKProtoStandalonePaymentSetupField *)self setCurrentValue:?];
    fromCopy = v5;
  }
}

@end