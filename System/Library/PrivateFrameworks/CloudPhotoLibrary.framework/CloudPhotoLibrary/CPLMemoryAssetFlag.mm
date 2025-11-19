@interface CPLMemoryAssetFlag
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsCustomUserAsset:(BOOL)a3;
- (void)setHasIsExtendedCurated:(BOOL)a3;
- (void)setHasIsKeyAsset:(BOOL)a3;
- (void)setHasIsMovieCurated:(BOOL)a3;
- (void)setHasIsRepresentative:(BOOL)a3;
- (void)setHasIsUserCurated:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CPLMemoryAssetFlag

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[16];
  if ((v5 & 0x20) != 0)
  {
    self->_isRepresentative = v4[13];
    *&self->_has |= 0x20u;
    v5 = v4[16];
    if (!v5)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if (!v4[16])
  {
    goto LABEL_3;
  }

  self->_isCurated = v4[8];
  *&self->_has |= 1u;
  v5 = v4[16];
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_isMovieCurated = v4[12];
  *&self->_has |= 0x10u;
  v5 = v4[16];
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_isKeyAsset = v4[11];
  *&self->_has |= 8u;
  v5 = v4[16];
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_isExtendedCurated = v4[10];
  *&self->_has |= 4u;
  v5 = v4[16];
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_isUserCurated = v4[14];
  *&self->_has |= 0x40u;
  if ((v4[16] & 2) != 0)
  {
LABEL_8:
    self->_isCustomUserAsset = v4[9];
    *&self->_has |= 2u;
  }

LABEL_9:
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) != 0)
  {
    v2 = 2654435761 * self->_isRepresentative;
    if (*&self->_has)
    {
LABEL_3:
      v3 = 2654435761 * self->_isCurated;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_isMovieCurated;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_isKeyAsset;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_isExtendedCurated;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_isUserCurated;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_isCustomUserAsset;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((v4[16] & 0x20) == 0)
    {
      goto LABEL_56;
    }

    v6 = v4[13];
    if (self->_isRepresentative)
    {
      if ((v4[13] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[13])
    {
      goto LABEL_56;
    }
  }

  else if ((v4[16] & 0x20) != 0)
  {
    goto LABEL_56;
  }

  if (*&self->_has)
  {
    if ((v4[16] & 1) == 0)
    {
      goto LABEL_56;
    }

    v7 = v4[8];
    if (self->_isCurated)
    {
      if ((v4[8] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[8])
    {
      goto LABEL_56;
    }
  }

  else if (v4[16])
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((v4[16] & 0x10) == 0)
    {
      goto LABEL_56;
    }

    v8 = v4[12];
    if (self->_isMovieCurated)
    {
      if ((v4[12] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[12])
    {
      goto LABEL_56;
    }
  }

  else if ((v4[16] & 0x10) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((v4[16] & 8) == 0)
    {
      goto LABEL_56;
    }

    v9 = v4[11];
    if (self->_isKeyAsset)
    {
      if ((v4[11] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[11])
    {
      goto LABEL_56;
    }
  }

  else if ((v4[16] & 8) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((v4[16] & 4) == 0)
    {
      goto LABEL_56;
    }

    v10 = v4[10];
    if (self->_isExtendedCurated)
    {
      if ((v4[10] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v4[10])
    {
      goto LABEL_56;
    }
  }

  else if ((v4[16] & 4) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x40) == 0)
  {
    if ((v4[16] & 0x40) == 0)
    {
      goto LABEL_14;
    }

LABEL_56:
    v5 = 0;
    goto LABEL_57;
  }

  if ((v4[16] & 0x40) == 0)
  {
    goto LABEL_56;
  }

  v11 = v4[14];
  if (self->_isUserCurated)
  {
    if ((v4[14] & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (v4[14])
  {
    goto LABEL_56;
  }

LABEL_14:
  v5 = (v4[16] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((v4[16] & 2) != 0)
    {
      if (self->_isCustomUserAsset)
      {
        if (v4[9])
        {
          goto LABEL_58;
        }
      }

      else if (!v4[9])
      {
LABEL_58:
        v5 = 1;
        goto LABEL_57;
      }
    }

    goto LABEL_56;
  }

LABEL_57:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(result + 13) = self->_isRepresentative;
    *(result + 16) |= 0x20u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_isCurated;
  *(result + 16) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 12) = self->_isMovieCurated;
  *(result + 16) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 11) = self->_isKeyAsset;
  *(result + 16) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 10) = self->_isExtendedCurated;
  *(result + 16) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 14) = self->_isUserCurated;
  *(result + 16) |= 0x40u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 9) = self->_isCustomUserAsset;
  *(result + 16) |= 2u;
  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v4[13] = self->_isRepresentative;
    v4[16] |= 0x20u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[8] = self->_isCurated;
  v4[16] |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4[12] = self->_isMovieCurated;
  v4[16] |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4[11] = self->_isKeyAsset;
  v4[16] |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4[10] = self->_isExtendedCurated;
  v4[16] |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v4[14] = self->_isUserCurated;
  v4[16] |= 0x40u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    v4[9] = self->_isCustomUserAsset;
    v4[16] |= 2u;
  }

LABEL_9:
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    isRepresentative = self->_isRepresentative;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  isCurated = self->_isCurated;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  isMovieCurated = self->_isMovieCurated;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  isKeyAsset = self->_isKeyAsset;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  isExtendedCurated = self->_isExtendedCurated;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  isUserCurated = self->_isUserCurated;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    isCustomUserAsset = self->_isCustomUserAsset;
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRepresentative];
    [v3 setObject:v7 forKey:@"isRepresentative"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCurated];
  [v3 setObject:v8 forKey:@"isCurated"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMovieCurated];
  [v3 setObject:v9 forKey:@"isMovieCurated"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isKeyAsset];
  [v3 setObject:v10 forKey:@"isKeyAsset"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isExtendedCurated];
  [v3 setObject:v11 forKey:@"isExtendedCurated"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_isUserCurated];
  [v3 setObject:v12 forKey:@"isUserCurated"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCustomUserAsset];
    [v3 setObject:v5 forKey:@"isCustomUserAsset"];
  }

LABEL_9:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CPLMemoryAssetFlag;
  v4 = [(CPLMemoryAssetFlag *)&v8 description];
  v5 = [(CPLMemoryAssetFlag *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasIsCustomUserAsset:(BOOL)a3
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

- (void)setHasIsUserCurated:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsExtendedCurated:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsKeyAsset:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsMovieCurated:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsRepresentative:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

@end