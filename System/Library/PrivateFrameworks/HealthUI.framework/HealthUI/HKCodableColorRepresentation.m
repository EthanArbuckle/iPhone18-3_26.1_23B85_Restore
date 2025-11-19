@interface HKCodableColorRepresentation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableColorRepresentation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableColorRepresentation;
  v4 = [(HKCodableColorRepresentation *)&v8 description];
  v5 = [(HKCodableColorRepresentation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  objectTypeIdentifier = self->_objectTypeIdentifier;
  if (objectTypeIdentifier)
  {
    [v3 setObject:objectTypeIdentifier forKey:@"objectTypeIdentifier"];
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
    v9 = [(HKCodableRGBConfiguration *)rgbConfiguration dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"rgbConfiguration"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_objectTypeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }

  if (self->_semanticColorName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_rgbConfiguration)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_objectTypeIdentifier)
  {
    [v4 setObjectTypeIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_displayCategoryIdentifier;
    *(v4 + 40) |= 1u;
  }

  if (self->_semanticColorName)
  {
    [v5 setSemanticColorName:?];
    v4 = v5;
  }

  if (self->_rgbConfiguration)
  {
    [v5 setRgbConfiguration:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_objectTypeIdentifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_displayCategoryIdentifier;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_semanticColorName copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(HKCodableRGBConfiguration *)self->_rgbConfiguration copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  objectTypeIdentifier = self->_objectTypeIdentifier;
  if (objectTypeIdentifier | *(v4 + 2))
  {
    if (![(NSString *)objectTypeIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_displayCategoryIdentifier != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  semanticColorName = self->_semanticColorName;
  if (semanticColorName | *(v4 + 4) && ![(NSString *)semanticColorName isEqual:?])
  {
    goto LABEL_13;
  }

  rgbConfiguration = self->_rgbConfiguration;
  if (rgbConfiguration | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(HKCodableColorRepresentation *)self setObjectTypeIdentifier:?];
    v4 = v7;
  }

  if (v4[5])
  {
    self->_displayCategoryIdentifier = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[4])
  {
    [(HKCodableColorRepresentation *)self setSemanticColorName:?];
    v4 = v7;
  }

  rgbConfiguration = self->_rgbConfiguration;
  v6 = v4[3];
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

  v4 = v7;
LABEL_13:

  MEMORY[0x1EEE66BB8](rgbConfiguration, v4);
}

@end