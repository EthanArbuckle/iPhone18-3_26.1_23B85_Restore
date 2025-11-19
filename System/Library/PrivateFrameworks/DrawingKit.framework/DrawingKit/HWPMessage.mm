@interface HWPMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)version;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HWPMessage

- (unsigned)version
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_version;
  }

  else
  {
    return 1;
  }
}

- (void)setHasVersion:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HWPMessage;
  v4 = [(HWPMessage *)&v8 description];
  v5 = [(HWPMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_creationDate];
    [v3 setObject:v6 forKey:@"creationDate"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  drawing = self->_drawing;
  if (drawing)
  {
    [v3 setObject:drawing forKey:@"drawing"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v10 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"Unknown Fields"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v4 = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteSfixed64Field();
    v4 = v6;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_drawing)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[10] = self->_version;
    *(v4 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 2) = self->_creationDate;
    *(v4 + 44) |= 1u;
  }

  v6 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v6;
  }

  if (self->_drawing)
  {
    [v6 setDrawing:?];
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
    *(v5 + 40) = self->_version;
    *(v5 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_creationDate;
    *(v5 + 44) |= 1u;
  }

  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  v10 = [(NSData *)self->_drawing copyWithZone:a3];
  v11 = *(v6 + 24);
  *(v6 + 24) = v10;

  objc_storeStrong((v6 + 8), self->_unknownFields);
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_version != *(v4 + 10))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_creationDate != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_16;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 4) && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_16;
  }

  drawing = self->_drawing;
  if (drawing | *(v4 + 3))
  {
    v7 = [(NSData *)drawing isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_17:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_version;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_creationDate;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSString *)self->_identifier hash];
  return v5 ^ [(NSData *)self->_drawing hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    self->_version = *(v4 + 10);
    *&self->_has |= 2u;
    v5 = *(v4 + 44);
  }

  if (v5)
  {
    self->_creationDate = *(v4 + 2);
    *&self->_has |= 1u;
  }

  v6 = v4;
  if (*(v4 + 4))
  {
    [(HWPMessage *)self setIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(HWPMessage *)self setDrawing:?];
    v4 = v6;
  }
}

@end