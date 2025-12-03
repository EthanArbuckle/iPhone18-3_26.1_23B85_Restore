@interface HKCodablePrescriptionType
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodablePrescriptionType

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodablePrescriptionType;
  v4 = [(HKCodablePrescriptionType *)&v8 description];
  dictionaryRepresentation = [(HKCodablePrescriptionType *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_contacts];
    [dictionary setObject:v4 forKey:@"contacts"];
  }

  glassesDescription = self->_glassesDescription;
  if (glassesDescription)
  {
    [dictionary setObject:glassesDescription forKey:@"glassesDescription"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_glassesDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[16] = self->_contacts;
    toCopy[20] |= 1u;
  }

  if (self->_glassesDescription)
  {
    v5 = toCopy;
    [toCopy setGlassesDescription:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_contacts;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_glassesDescription copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_7;
  }

  v5 = *(equalCopy + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(equalCopy + 16);
  if (!self->_contacts)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if ((*(equalCopy + 16) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  glassesDescription = self->_glassesDescription;
  if (glassesDescription | *(equalCopy + 1))
  {
    v7 = [(NSString *)glassesDescription isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_8:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_contacts;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_glassesDescription hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[20])
  {
    self->_contacts = fromCopy[16];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(HKCodablePrescriptionType *)self setGlassesDescription:?];
    fromCopy = v5;
  }
}

@end