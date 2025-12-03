@interface HKCodableColorRepresentation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableColorRepresentation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableColorRepresentation;
  v4 = [(HKCodableColorRepresentation *)&v8 description];
  dictionaryRepresentation = [(HKCodableColorRepresentation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  objectTypeIdentifier = self->_objectTypeIdentifier;
  if (objectTypeIdentifier)
  {
    [dictionary setObject:objectTypeIdentifier forKey:@"objectTypeIdentifier"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_displayCategoryIdentifier];
    [v4 setObject:v6 forKey:@"displayCategoryIdentifier"];
  }

  semanticColorName = self->_semanticColorName;
  if (semanticColorName)
  {
    [v4 setObject:semanticColorName forKey:@"semanticColorName"];
  }

  rgbConfiguration = self->_rgbConfiguration;
  if (rgbConfiguration)
  {
    dictionaryRepresentation = [(HKCodableRGBConfiguration *)rgbConfiguration dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"rgbConfiguration"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_objectTypeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v5;
  }

  if (self->_semanticColorName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_rgbConfiguration)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_objectTypeIdentifier)
  {
    [toCopy setObjectTypeIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_displayCategoryIdentifier;
    *(toCopy + 40) |= 1u;
  }

  if (self->_semanticColorName)
  {
    [v5 setSemanticColorName:?];
    toCopy = v5;
  }

  if (self->_rgbConfiguration)
  {
    [v5 setRgbConfiguration:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_objectTypeIdentifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_displayCategoryIdentifier;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_semanticColorName copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(HKCodableRGBConfiguration *)self->_rgbConfiguration copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  objectTypeIdentifier = self->_objectTypeIdentifier;
  if (objectTypeIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)objectTypeIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_displayCategoryIdentifier != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  semanticColorName = self->_semanticColorName;
  if (semanticColorName | *(equalCopy + 4) && ![(NSString *)semanticColorName isEqual:?])
  {
    goto LABEL_13;
  }

  rgbConfiguration = self->_rgbConfiguration;
  if (rgbConfiguration | *(equalCopy + 3))
  {
    v8 = [(HKCodableRGBConfiguration *)rgbConfiguration isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_objectTypeIdentifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_displayCategoryIdentifier;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSString *)self->_semanticColorName hash];
  return v5 ^ v6 ^ [(HKCodableRGBConfiguration *)self->_rgbConfiguration hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(HKCodableColorRepresentation *)self setObjectTypeIdentifier:?];
    fromCopy = v7;
  }

  if (fromCopy[5])
  {
    self->_displayCategoryIdentifier = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[4])
  {
    [(HKCodableColorRepresentation *)self setSemanticColorName:?];
    fromCopy = v7;
  }

  rgbConfiguration = self->_rgbConfiguration;
  v6 = fromCopy[3];
  if (rgbConfiguration)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    rgbConfiguration = [(HKCodableRGBConfiguration *)rgbConfiguration mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    rgbConfiguration = [(HKCodableColorRepresentation *)self setRgbConfiguration:?];
  }

  fromCopy = v7;
LABEL_13:

  MEMORY[0x1EEE66BB8](rgbConfiguration, fromCopy);
}

@end