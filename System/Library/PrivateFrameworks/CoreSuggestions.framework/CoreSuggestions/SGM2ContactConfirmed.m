@interface SGM2ContactConfirmed
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsApp:(id)a3;
- (int)StringAsExtracted:(id)a3;
- (int)StringAsType:(id)a3;
- (int)StringAsUiType:(id)a3;
- (int)app;
- (int)extracted;
- (int)type;
- (int)uiType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasExtracted:(BOOL)a3;
- (void)setHasExtractionModelVersion:(BOOL)a3;
- (void)setHasFirstNameAdj:(BOOL)a3;
- (void)setHasIsUpdate:(BOOL)a3;
- (void)setHasLastNameAdj:(BOOL)a3;
- (void)setHasMiddleNameAdj:(BOOL)a3;
- (void)setHasSelfId:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasUiType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2ContactConfirmed

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 3))
  {
    v6 = v4;
    [(SGM2ContactConfirmed *)self setKey:?];
    v4 = v6;
  }

  v5 = *(v4 + 24);
  if (v5)
  {
    self->_app = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
    if ((v5 & 0x20) == 0)
    {
LABEL_5:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_5;
  }

  self->_firstNameAdj = *(v4 + 40);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 24);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_lastNameAdj = *(v4 + 42);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 24);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_middleNameAdj = *(v4 + 43);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 24);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_isUpdate = *(v4 + 41);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 24);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_extracted = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 24);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_extractionModelVersion = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 24);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_selfId = *(v4 + 44);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 24);
  if ((v5 & 8) == 0)
  {
LABEL_12:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_25:
  self->_type = *(v4 + 8);
  *&self->_has |= 8u;
  if ((*(v4 + 24) & 0x10) != 0)
  {
LABEL_13:
    self->_uiType = *(v4 + 9);
    *&self->_has |= 0x10u;
  }

LABEL_14:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  has = self->_has;
  if (has)
  {
    v5 = 2654435761 * self->_app;
    if ((has & 0x20) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_firstNameAdj;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_lastNameAdj;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_middleNameAdj;
    if ((has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_6:
    v9 = 2654435761 * self->_isUpdate;
    if ((has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = 0;
  if ((has & 2) != 0)
  {
LABEL_7:
    v10 = 2654435761 * self->_extracted;
    if ((has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
  if ((has & 4) != 0)
  {
LABEL_8:
    v11 = 2654435761 * self->_extractionModelVersion;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_9:
    v12 = 2654435761 * self->_selfId;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v13 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v14 = 0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_19:
  v12 = 0;
  if ((has & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v13 = 2654435761 * self->_type;
  if ((has & 0x10) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v14 = 2654435761 * self->_uiType;
  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_69;
  }

  key = self->_key;
  if (key | *(v4 + 3))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_69;
    }
  }

  has = self->_has;
  v7 = *(v4 + 24);
  if (has)
  {
    if ((v7 & 1) == 0 || self->_app != *(v4 + 2))
    {
      goto LABEL_69;
    }
  }

  else if (v7)
  {
    goto LABEL_69;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_69;
    }

    v8 = *(v4 + 40);
    if (self->_firstNameAdj)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_69;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_69;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_69;
    }

    v9 = *(v4 + 42);
    if (self->_lastNameAdj)
    {
      if ((*(v4 + 42) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(v4 + 42))
    {
      goto LABEL_69;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_69;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 24) & 0x100) == 0)
    {
      goto LABEL_69;
    }

    v10 = *(v4 + 43);
    if (self->_middleNameAdj)
    {
      if ((*(v4 + 43) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(v4 + 43))
    {
      goto LABEL_69;
    }
  }

  else if ((*(v4 + 24) & 0x100) != 0)
  {
    goto LABEL_69;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_69;
    }

    v11 = *(v4 + 41);
    if (self->_isUpdate)
    {
      if ((*(v4 + 41) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(v4 + 41))
    {
      goto LABEL_69;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_69;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_extracted != *(v4 + 3))
    {
      goto LABEL_69;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_69;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_extractionModelVersion != *(v4 + 4))
    {
      goto LABEL_69;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_69;
  }

  if ((*&self->_has & 0x200) == 0)
  {
    if ((*(v4 + 24) & 0x200) == 0)
    {
      goto LABEL_53;
    }

LABEL_69:
    v13 = 0;
    goto LABEL_70;
  }

  if ((*(v4 + 24) & 0x200) == 0)
  {
    goto LABEL_69;
  }

  v12 = *(v4 + 44);
  if (self->_selfId)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_69;
  }

LABEL_53:
  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_type != *(v4 + 8))
    {
      goto LABEL_69;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_69;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_uiType != *(v4 + 9))
    {
      goto LABEL_69;
    }

    v13 = 1;
  }

  else
  {
    v13 = (v7 & 0x10) == 0;
  }

LABEL_70:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_app;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_firstNameAdj;
  *(v5 + 48) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 42) = self->_lastNameAdj;
  *(v5 + 48) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 43) = self->_middleNameAdj;
  *(v5 + 48) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 41) = self->_isUpdate;
  *(v5 + 48) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 12) = self->_extracted;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 16) = self->_extractionModelVersion;
  *(v5 + 48) |= 4u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    *(v5 + 32) = self->_type;
    *(v5 + 48) |= 8u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + 44) = self->_selfId;
  *(v5 + 48) |= 0x200u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((has & 0x10) != 0)
  {
LABEL_11:
    *(v5 + 36) = self->_uiType;
    *(v5 + 48) |= 0x10u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_key)
  {
    v6 = v4;
    [v4 setKey:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 2) = self->_app;
    *(v4 + 24) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 40) = self->_firstNameAdj;
  *(v4 + 24) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v4 + 42) = self->_lastNameAdj;
  *(v4 + 24) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v4 + 43) = self->_middleNameAdj;
  *(v4 + 24) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 41) = self->_isUpdate;
  *(v4 + 24) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 3) = self->_extracted;
  *(v4 + 24) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 4) = self->_extractionModelVersion;
  *(v4 + 24) |= 4u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 44) = self->_selfId;
  *(v4 + 24) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_25:
  *(v4 + 8) = self->_type;
  *(v4 + 24) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    *(v4 + 9) = self->_uiType;
    *(v4 + 24) |= 0x10u;
  }

LABEL_14:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v16 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v16;
  }

  has = self->_has;
  if (has)
  {
    app = self->_app;
    PBDataWriterWriteInt32Field();
    v4 = v16;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  firstNameAdj = self->_firstNameAdj;
  PBDataWriterWriteBOOLField();
  v4 = v16;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  lastNameAdj = self->_lastNameAdj;
  PBDataWriterWriteBOOLField();
  v4 = v16;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  middleNameAdj = self->_middleNameAdj;
  PBDataWriterWriteBOOLField();
  v4 = v16;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  isUpdate = self->_isUpdate;
  PBDataWriterWriteBOOLField();
  v4 = v16;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  extracted = self->_extracted;
  PBDataWriterWriteInt32Field();
  v4 = v16;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  extractionModelVersion = self->_extractionModelVersion;
  PBDataWriterWriteUint32Field();
  v4 = v16;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  selfId = self->_selfId;
  PBDataWriterWriteBOOLField();
  v4 = v16;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_25:
  type = self->_type;
  PBDataWriterWriteInt32Field();
  v4 = v16;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    uiType = self->_uiType;
    PBDataWriterWriteInt32Field();
    v4 = v16;
  }

LABEL_14:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  has = self->_has;
  if (has)
  {
    app = self->_app;
    if (app >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_app];
    }

    else
    {
      v8 = off_1E7EFACB0[app];
    }

    [v4 setObject:v8 forKey:@"app"];

    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_firstNameAdj];
    [v4 setObject:v9 forKey:@"firstNameAdj"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_10:
      if ((has & 0x100) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_10;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_lastNameAdj];
  [v4 setObject:v10 forKey:@"lastNameAdj"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_middleNameAdj];
  [v4 setObject:v11 forKey:@"middleNameAdj"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_isUpdate];
  [v4 setObject:v12 forKey:@"isUpdate"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_22:
  extracted = self->_extracted;
  if (extracted >= 4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_extracted];
  }

  else
  {
    v14 = off_1E7EFACC8[extracted];
  }

  [v4 setObject:v14 forKey:@"extracted"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_extractionModelVersion];
  [v4 setObject:v15 forKey:@"extractionModelVersion"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_15:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_28:
    type = self->_type;
    if (type >= 5)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v18 = off_1E7EFACE8[type];
    }

    [v4 setObject:v18 forKey:@"type"];

    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

LABEL_27:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_selfId];
  [v4 setObject:v16 forKey:@"selfId"];

  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_28;
  }

LABEL_16:
  if ((has & 0x10) != 0)
  {
LABEL_32:
    uiType = self->_uiType;
    if (uiType >= 4)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_uiType];
    }

    else
    {
      v20 = off_1E7EFAD10[uiType];
    }

    [v4 setObject:v20 forKey:@"uiType"];
  }

LABEL_36:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGM2ContactConfirmed;
  v4 = [(SGM2ContactConfirmed *)&v8 description];
  v5 = [(SGM2ContactConfirmed *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsUiType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Banner"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DontSuggestButton"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Other"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Notification"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasUiType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)uiType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_uiType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMContactDetailTypeEmail"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailTypePhone"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailTypeAddress"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailTypeOther"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailTypeBirthday"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)type
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSelfId:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasExtractionModelVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)StringAsExtracted:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMBannerExtractionTypeSig"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMBannerExtractionTypePhrase"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMBannerExtractionTypeSigPhrase"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMBannerExtractionTypeOther"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasExtracted:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (int)extracted
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_extracted;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIsUpdate:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasMiddleNameAdj:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasLastNameAdj:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasFirstNameAdj:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)StringAsApp:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMBannerDisplayAppMail"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMBannerDisplayAppMessages"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMBannerDisplayAppOther"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)app
{
  if (*&self->_has)
  {
    return self->_app;
  }

  else
  {
    return 0;
  }
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"ContactConfirmed";
  }
}

@end