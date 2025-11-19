@interface NPKProtoStandalonePaymentSetupField
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFieldType:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentSetupField

- (int)StringAsFieldType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"Text"])
  {
    v4 = 110;
  }

  else if ([v3 isEqualToString:@"Date"])
  {
    v4 = 120;
  }

  else if ([v3 isEqualToString:@"Label"])
  {
    v4 = 130;
  }

  else if ([v3 isEqualToString:@"Footer"])
  {
    v4 = 140;
  }

  else if ([v3 isEqualToString:@"Picker"])
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
  v5 = [(NPKProtoStandalonePaymentSetupField *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
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

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setIdentifier:self->_identifier];
  v4 = v5;
  v5[4] = self->_fieldType;
  if (self->_currentValue)
  {
    [v5 setCurrentValue:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 16) = self->_fieldType;
  v8 = [(NSString *)self->_currentValue copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[3])) || -[NSString isEqual:](identifier, "isEqual:")) && self->_fieldType == *(v4 + 4))
  {
    currentValue = self->_currentValue;
    if (currentValue | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(NPKProtoStandalonePaymentSetupField *)self setIdentifier:?];
    v4 = v5;
  }

  self->_fieldType = v4[4];
  if (*(v4 + 1))
  {
    [(NPKProtoStandalonePaymentSetupField *)self setCurrentValue:?];
    v4 = v5;
  }
}

@end