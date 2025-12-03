@interface MSPTransitStorageShield
- (BOOL)isEqual:(id)equal;
- (MSPTransitStorageShield)initWithShield:(id)shield;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPTransitStorageShield

- (MSPTransitStorageShield)initWithShield:(id)shield
{
  shieldCopy = shield;
  v10.receiver = self;
  v10.super_class = MSPTransitStorageShield;
  v5 = [(MSPTransitStorageShield *)&v10 init];
  if (v5)
  {
    -[MSPTransitStorageShield setShieldType:](v5, "setShieldType:", [shieldCopy shieldType]);
    shieldText = [shieldCopy shieldText];
    [(MSPTransitStorageShield *)v5 setShieldText:shieldText];

    shieldColorString = [shieldCopy shieldColorString];
    [(MSPTransitStorageShield *)v5 setShieldColorString:shieldColorString];

    v8 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPTransitStorageShield;
  v4 = [(MSPTransitStorageShield *)&v8 description];
  dictionaryRepresentation = [(MSPTransitStorageShield *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  shieldText = self->_shieldText;
  if (shieldText)
  {
    [dictionary setObject:shieldText forKey:@"shield_text"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_shieldType];
    [v4 setObject:v6 forKey:@"shield_type"];
  }

  shieldColorString = self->_shieldColorString;
  if (shieldColorString)
  {
    [v4 setObject:shieldColorString forKey:@"shield_color_string"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_shieldText)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    shieldType = self->_shieldType;
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_shieldColorString)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_shieldText)
  {
    [toCopy setShieldText:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_shieldType;
    *(toCopy + 40) |= 1u;
  }

  if (self->_shieldColorString)
  {
    [v5 setShieldColorString:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_shieldText copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_shieldType;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_shieldColorString copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  shieldText = self->_shieldText;
  if (shieldText | *(equalCopy + 4))
  {
    if (![(NSString *)shieldText isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_shieldType != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  shieldColorString = self->_shieldColorString;
  if (shieldColorString | *(equalCopy + 3))
  {
    v8 = [(NSString *)shieldColorString isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_shieldText hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_shieldType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_shieldColorString hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[4])
  {
    [(MSPTransitStorageShield *)self setShieldText:?];
    fromCopy = v5;
  }

  if (fromCopy[5])
  {
    self->_shieldType = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (fromCopy[3])
  {
    [(MSPTransitStorageShield *)self setShieldColorString:?];
    fromCopy = v5;
  }
}

@end