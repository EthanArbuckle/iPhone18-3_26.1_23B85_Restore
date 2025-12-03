@interface HWPMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)version;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
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

- (void)setHasVersion:(BOOL)version
{
  if (version)
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
  dictionaryRepresentation = [(HWPMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
    [dictionary setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_creationDate];
    [dictionary setObject:v6 forKey:@"creationDate"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  drawing = self->_drawing;
  if (drawing)
  {
    [dictionary setObject:drawing forKey:@"drawing"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"Unknown Fields"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteSfixed64Field();
    toCopy = v6;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_drawing)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[10] = self->_version;
    *(toCopy + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 2) = self->_creationDate;
    *(toCopy + 44) |= 1u;
  }

  v6 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v6;
  }

  if (self->_drawing)
  {
    [v6 setDrawing:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSString *)self->_identifier copyWithZone:zone];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  v10 = [(NSData *)self->_drawing copyWithZone:zone];
  v11 = *(v6 + 24);
  *(v6 + 24) = v10;

  objc_storeStrong((v6 + 8), self->_unknownFields);
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_version != *(equalCopy + 10))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_creationDate != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_16;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 4) && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_16;
  }

  drawing = self->_drawing;
  if (drawing | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if ((v5 & 2) != 0)
  {
    self->_version = *(fromCopy + 10);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 44);
  }

  if (v5)
  {
    self->_creationDate = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(HWPMessage *)self setIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(HWPMessage *)self setDrawing:?];
    fromCopy = v6;
  }
}

@end