@interface MSPTransitStorageShield
- (BOOL)isEqual:(id)a3;
- (MSPTransitStorageShield)initWithShield:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPTransitStorageShield

- (MSPTransitStorageShield)initWithShield:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MSPTransitStorageShield;
  v5 = [(MSPTransitStorageShield *)&v10 init];
  if (v5)
  {
    -[MSPTransitStorageShield setShieldType:](v5, "setShieldType:", [v4 shieldType]);
    v6 = [v4 shieldText];
    [(MSPTransitStorageShield *)v5 setShieldText:v6];

    v7 = [v4 shieldColorString];
    [(MSPTransitStorageShield *)v5 setShieldColorString:v7];

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
  v5 = [(MSPTransitStorageShield *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  shieldText = self->_shieldText;
  if (shieldText)
  {
    [v3 setObject:shieldText forKey:@"shield_text"];
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
    v9 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_shieldText)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    shieldType = self->_shieldType;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_shieldColorString)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shieldText)
  {
    [v4 setShieldText:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_shieldType;
    *(v4 + 40) |= 1u;
  }

  if (self->_shieldColorString)
  {
    [v5 setShieldColorString:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_shieldText copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_shieldType;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_shieldColorString copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  shieldText = self->_shieldText;
  if (shieldText | *(v4 + 4))
  {
    if (![(NSString *)shieldText isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_shieldType != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  shieldColorString = self->_shieldColorString;
  if (shieldColorString | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[4])
  {
    [(MSPTransitStorageShield *)self setShieldText:?];
    v4 = v5;
  }

  if (v4[5])
  {
    self->_shieldType = v4[2];
    *&self->_has |= 1u;
  }

  if (v4[3])
  {
    [(MSPTransitStorageShield *)self setShieldColorString:?];
    v4 = v5;
  }
}

@end