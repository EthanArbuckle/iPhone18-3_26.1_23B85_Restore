@interface SGM2ContactConfirmed
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsApp:(id)app;
- (int)StringAsExtracted:(id)extracted;
- (int)StringAsType:(id)type;
- (int)StringAsUiType:(id)type;
- (int)app;
- (int)extracted;
- (int)type;
- (int)uiType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasExtracted:(BOOL)extracted;
- (void)setHasExtractionModelVersion:(BOOL)version;
- (void)setHasFirstNameAdj:(BOOL)adj;
- (void)setHasIsUpdate:(BOOL)update;
- (void)setHasLastNameAdj:(BOOL)adj;
- (void)setHasMiddleNameAdj:(BOOL)adj;
- (void)setHasSelfId:(BOOL)id;
- (void)setHasType:(BOOL)type;
- (void)setHasUiType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation SGM2ContactConfirmed

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(SGM2ContactConfirmed *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 24);
  if (v5)
  {
    self->_app = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 24);
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

  self->_firstNameAdj = *(fromCopy + 40);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 24);
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
  self->_lastNameAdj = *(fromCopy + 42);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 24);
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
  self->_middleNameAdj = *(fromCopy + 43);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 24);
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
  self->_isUpdate = *(fromCopy + 41);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 24);
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
  self->_extracted = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 24);
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
  self->_extractionModelVersion = *(fromCopy + 4);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 24);
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
  self->_selfId = *(fromCopy + 44);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 24);
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
  self->_type = *(fromCopy + 8);
  *&self->_has |= 8u;
  if ((*(fromCopy + 24) & 0x10) != 0)
  {
LABEL_13:
    self->_uiType = *(fromCopy + 9);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_69;
  }

  key = self->_key;
  if (key | *(equalCopy + 3))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_69;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 24);
  if (has)
  {
    if ((v7 & 1) == 0 || self->_app != *(equalCopy + 2))
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

    v8 = *(equalCopy + 40);
    if (self->_firstNameAdj)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(equalCopy + 40))
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

    v9 = *(equalCopy + 42);
    if (self->_lastNameAdj)
    {
      if ((*(equalCopy + 42) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(equalCopy + 42))
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
    if ((*(equalCopy + 24) & 0x100) == 0)
    {
      goto LABEL_69;
    }

    v10 = *(equalCopy + 43);
    if (self->_middleNameAdj)
    {
      if ((*(equalCopy + 43) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(equalCopy + 43))
    {
      goto LABEL_69;
    }
  }

  else if ((*(equalCopy + 24) & 0x100) != 0)
  {
    goto LABEL_69;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_69;
    }

    v11 = *(equalCopy + 41);
    if (self->_isUpdate)
    {
      if ((*(equalCopy + 41) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(equalCopy + 41))
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
    if ((v7 & 2) == 0 || self->_extracted != *(equalCopy + 3))
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
    if ((v7 & 4) == 0 || self->_extractionModelVersion != *(equalCopy + 4))
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
    if ((*(equalCopy + 24) & 0x200) == 0)
    {
      goto LABEL_53;
    }

LABEL_69:
    v13 = 0;
    goto LABEL_70;
  }

  if ((*(equalCopy + 24) & 0x200) == 0)
  {
    goto LABEL_69;
  }

  v12 = *(equalCopy + 44);
  if (self->_selfId)
  {
    if ((*(equalCopy + 44) & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_69;
  }

LABEL_53:
  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_type != *(equalCopy + 8))
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
    if ((v7 & 0x10) == 0 || self->_uiType != *(equalCopy + 9))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_key)
  {
    v6 = toCopy;
    [toCopy setKey:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = self->_app;
    *(toCopy + 24) |= 1u;
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

  *(toCopy + 40) = self->_firstNameAdj;
  *(toCopy + 24) |= 0x20u;
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
  *(toCopy + 42) = self->_lastNameAdj;
  *(toCopy + 24) |= 0x80u;
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
  *(toCopy + 43) = self->_middleNameAdj;
  *(toCopy + 24) |= 0x100u;
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
  *(toCopy + 41) = self->_isUpdate;
  *(toCopy + 24) |= 0x40u;
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
  *(toCopy + 3) = self->_extracted;
  *(toCopy + 24) |= 2u;
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
  *(toCopy + 4) = self->_extractionModelVersion;
  *(toCopy + 24) |= 4u;
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
  *(toCopy + 44) = self->_selfId;
  *(toCopy + 24) |= 0x200u;
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
  *(toCopy + 8) = self->_type;
  *(toCopy + 24) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    *(toCopy + 9) = self->_uiType;
    *(toCopy + 24) |= 0x10u;
  }

LABEL_14:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v16 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v16;
  }

  has = self->_has;
  if (has)
  {
    app = self->_app;
    PBDataWriterWriteInt32Field();
    toCopy = v16;
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
  toCopy = v16;
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
  toCopy = v16;
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
  toCopy = v16;
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
  toCopy = v16;
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
  toCopy = v16;
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
  toCopy = v16;
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
  toCopy = v16;
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
  toCopy = v16;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    uiType = self->_uiType;
    PBDataWriterWriteInt32Field();
    toCopy = v16;
  }

LABEL_14:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
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
  dictionaryRepresentation = [(SGM2ContactConfirmed *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsUiType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Banner"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"DontSuggestButton"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Other"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Notification"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasUiType:(BOOL)type
{
  if (type)
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

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"SGMContactDetailTypeEmail"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"SGMContactDetailTypePhone"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SGMContactDetailTypeAddress"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"SGMContactDetailTypeOther"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"SGMContactDetailTypeBirthday"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)type
{
  if (type)
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

- (void)setHasSelfId:(BOOL)id
{
  if (id)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasExtractionModelVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)StringAsExtracted:(id)extracted
{
  extractedCopy = extracted;
  if ([extractedCopy isEqualToString:@"SGMBannerExtractionTypeSig"])
  {
    v4 = 0;
  }

  else if ([extractedCopy isEqualToString:@"SGMBannerExtractionTypePhrase"])
  {
    v4 = 1;
  }

  else if ([extractedCopy isEqualToString:@"SGMBannerExtractionTypeSigPhrase"])
  {
    v4 = 2;
  }

  else if ([extractedCopy isEqualToString:@"SGMBannerExtractionTypeOther"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasExtracted:(BOOL)extracted
{
  if (extracted)
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

- (void)setHasIsUpdate:(BOOL)update
{
  if (update)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasMiddleNameAdj:(BOOL)adj
{
  if (adj)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasLastNameAdj:(BOOL)adj
{
  if (adj)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasFirstNameAdj:(BOOL)adj
{
  if (adj)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)StringAsApp:(id)app
{
  appCopy = app;
  if ([appCopy isEqualToString:@"SGMBannerDisplayAppMail"])
  {
    v4 = 0;
  }

  else if ([appCopy isEqualToString:@"SGMBannerDisplayAppMessages"])
  {
    v4 = 1;
  }

  else if ([appCopy isEqualToString:@"SGMBannerDisplayAppOther"])
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