@interface NTKProtoPigment
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFromStore:(BOOL)store;
- (void)setHasIsAddable:(BOOL)addable;
- (void)setHasSupportsSlider:(BOOL)slider;
- (void)writeTo:(id)to;
@end

@implementation NTKProtoPigment

- (void)setHasIsAddable:(BOOL)addable
{
  if (addable)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSupportsSlider:(BOOL)slider
{
  if (slider)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasFromStore:(BOOL)store
{
  if (store)
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
  v8.super_class = NTKProtoPigment;
  v4 = [(NTKProtoPigment *)&v8 description];
  dictionaryRepresentation = [(NTKProtoPigment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = dictionary;
  optionName = self->_optionName;
  if (optionName)
  {
    [dictionary setObject:optionName forKey:@"optionName"];
  }

  collectionName = self->_collectionName;
  if (collectionName)
  {
    [v5 setObject:collectionName forKey:@"collectionName"];
  }

  has = self->_has;
  if (has)
  {
    *&v4 = self->_colorFraction;
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v5 setObject:v14 forKey:@"colorFraction"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAddable];
  [v5 setObject:v15 forKey:@"isAddable"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsSlider];
    [v5 setObject:v9 forKey:@"supportsSlider"];
  }

LABEL_9:
  alternativeLocalizedStringTableName = self->_alternativeLocalizedStringTableName;
  if (alternativeLocalizedStringTableName)
  {
    [v5 setObject:alternativeLocalizedStringTableName forKey:@"alternativeLocalizedStringTableName"];
  }

  bundlePrincipalClassName = self->_bundlePrincipalClassName;
  if (bundlePrincipalClassName)
  {
    [v5 setObject:bundlePrincipalClassName forKey:@"bundlePrincipalClassName"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_fromStore];
    [v5 setObject:v12 forKey:@"fromStore"];
  }

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_optionName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_collectionName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    toCopy = v6;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteBOOLField();
  toCopy = v6;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

LABEL_9:
  if (self->_alternativeLocalizedStringTableName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_bundlePrincipalClassName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_optionName)
  {
    [toCopy setOptionName:?];
    toCopy = v6;
  }

  if (self->_collectionName)
  {
    [v6 setCollectionName:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 8) = LODWORD(self->_colorFraction);
    *(toCopy + 52) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 49) = self->_isAddable;
  *(toCopy + 52) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    *(toCopy + 50) = self->_supportsSlider;
    *(toCopy + 52) |= 8u;
  }

LABEL_9:
  if (self->_alternativeLocalizedStringTableName)
  {
    [v6 setAlternativeLocalizedStringTableName:?];
    toCopy = v6;
  }

  if (self->_bundlePrincipalClassName)
  {
    [v6 setBundlePrincipalClassName:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 48) = self->_fromStore;
    *(toCopy + 52) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_optionName copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_collectionName copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 32) = self->_colorFraction;
    *(v5 + 52) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 49) = self->_isAddable;
  *(v5 + 52) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    *(v5 + 50) = self->_supportsSlider;
    *(v5 + 52) |= 8u;
  }

LABEL_5:
  v11 = [(NSString *)self->_alternativeLocalizedStringTableName copyWithZone:zone];
  v12 = *(v5 + 8);
  *(v5 + 8) = v11;

  v13 = [(NSString *)self->_bundlePrincipalClassName copyWithZone:zone];
  v14 = *(v5 + 16);
  *(v5 + 16) = v13;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 48) = self->_fromStore;
    *(v5 + 52) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  optionName = self->_optionName;
  if (optionName | *(equalCopy + 5))
  {
    if (![(NSString *)optionName isEqual:?])
    {
      goto LABEL_35;
    }
  }

  collectionName = self->_collectionName;
  if (collectionName | *(equalCopy + 3))
  {
    if (![(NSString *)collectionName isEqual:?])
    {
      goto LABEL_35;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_colorFraction != *(equalCopy + 8))
    {
      goto LABEL_35;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0)
    {
      goto LABEL_35;
    }

    if (self->_isAddable)
    {
      if ((*(equalCopy + 49) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 49))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 52) & 8) == 0)
    {
      goto LABEL_35;
    }

    if (self->_supportsSlider)
    {
      if ((*(equalCopy + 50) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 50))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 52) & 8) != 0)
  {
    goto LABEL_35;
  }

  alternativeLocalizedStringTableName = self->_alternativeLocalizedStringTableName;
  if (alternativeLocalizedStringTableName | *(equalCopy + 1) && ![(NSString *)alternativeLocalizedStringTableName isEqual:?])
  {
    goto LABEL_35;
  }

  bundlePrincipalClassName = self->_bundlePrincipalClassName;
  if (bundlePrincipalClassName | *(equalCopy + 2))
  {
    if (![(NSString *)bundlePrincipalClassName isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v9 = (*(equalCopy + 52) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) != 0)
    {
      if (self->_fromStore)
      {
        if (*(equalCopy + 48))
        {
          goto LABEL_38;
        }
      }

      else if (!*(equalCopy + 48))
      {
LABEL_38:
        v9 = 1;
        goto LABEL_36;
      }
    }

LABEL_35:
    v9 = 0;
  }

LABEL_36:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_optionName hash];
  v4 = [(NSString *)self->_collectionName hash];
  if (*&self->_has)
  {
    colorFraction = self->_colorFraction;
    if (colorFraction < 0.0)
    {
      colorFraction = -colorFraction;
    }

    *v5.i32 = floorf(colorFraction + 0.5);
    v9 = (colorFraction - *v5.i32) * 1.8447e19;
    *v6.i32 = *v5.i32 - (truncf(*v5.i32 * 5.421e-20) * 1.8447e19);
    v10.i64[0] = 0x8000000080000000;
    v10.i64[1] = 0x8000000080000000;
    v7 = 2654435761u * *vbslq_s8(v10, v6, v5).i32;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabsf(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_isAddable;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_11:
      v12 = 2654435761 * self->_supportsSlider;
      goto LABEL_14;
    }
  }

  v12 = 0;
LABEL_14:
  v13 = [(NSString *)self->_alternativeLocalizedStringTableName hash];
  v14 = [(NSString *)self->_bundlePrincipalClassName hash];
  if ((*&self->_has & 2) != 0)
  {
    v15 = 2654435761 * self->_fromStore;
  }

  else
  {
    v15 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(NTKProtoPigment *)self setOptionName:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(NTKProtoPigment *)self setCollectionName:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 52);
  if (v5)
  {
    self->_colorFraction = *(fromCopy + 8);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 52);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(fromCopy + 52) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_isAddable = *(fromCopy + 49);
  *&self->_has |= 4u;
  if ((*(fromCopy + 52) & 8) != 0)
  {
LABEL_8:
    self->_supportsSlider = *(fromCopy + 50);
    *&self->_has |= 8u;
  }

LABEL_9:
  if (*(fromCopy + 1))
  {
    [(NTKProtoPigment *)self setAlternativeLocalizedStringTableName:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(NTKProtoPigment *)self setBundlePrincipalClassName:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 52) & 2) != 0)
  {
    self->_fromStore = *(fromCopy + 48);
    *&self->_has |= 2u;
  }
}

@end