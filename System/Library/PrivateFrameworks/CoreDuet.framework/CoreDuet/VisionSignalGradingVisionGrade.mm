@interface VisionSignalGradingVisionGrade
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addExtractedSignals:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCameraRollGrade:(BOOL)a3;
- (void)setHasChildGrade:(BOOL)a3;
- (void)setHasExtractedGrade:(BOOL)a3;
- (void)setHasImageGrade:(BOOL)a3;
- (void)setHasNumPeople:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation VisionSignalGradingVisionGrade

- (void)setHasImageGrade:(BOOL)a3
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

- (void)setHasNumPeople:(BOOL)a3
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

- (void)setHasCameraRollGrade:(BOOL)a3
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

- (void)addExtractedSignals:(id)a3
{
  v4 = a3;
  extractedSignals = self->_extractedSignals;
  v8 = v4;
  if (!extractedSignals)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_extractedSignals;
    self->_extractedSignals = v6;

    v4 = v8;
    extractedSignals = self->_extractedSignals;
  }

  [(NSMutableArray *)extractedSignals addObject:v4];
}

- (void)setHasExtractedGrade:(BOOL)a3
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

- (void)setHasChildGrade:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VisionSignalGradingVisionGrade;
  v4 = [(VisionSignalGradingVisionGrade *)&v8 description];
  v5 = [(VisionSignalGradingVisionGrade *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_imageGrade];
    [v4 setObject:v12 forKey:@"imageGrade"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInt:self->_numPeople];
  [v4 setObject:v13 forKey:@"numPeople"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_cameraRollGrade];
    [v4 setObject:v7 forKey:@"cameraRollGrade"];
  }

LABEL_7:
  extractedSignals = self->_extractedSignals;
  if (extractedSignals)
  {
    [v4 setObject:extractedSignals forKey:@"extractedSignals"];
  }

  v9 = self->_has;
  if ((v9 & 0x10) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_extractedGrade];
    [v4 setObject:v14 forKey:@"extractedGrade"];

    v9 = self->_has;
    if ((v9 & 8) == 0)
    {
LABEL_11:
      if ((v9 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_childGrade];
  [v4 setObject:v15 forKey:@"childGrade"];

  if (*&self->_has)
  {
LABEL_12:
    v10 = [MEMORY[0x1E696AD98] numberWithInt:self->_childAge];
    [v4 setObject:v10 forKey:@"childAge"];
  }

LABEL_13:

  return v4;
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    imageGrade = self->_imageGrade;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  numPeople = self->_numPeople;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    cameraRollGrade = self->_cameraRollGrade;
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_extractedSignals;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v13 = self->_has;
  if ((v13 & 0x10) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    childGrade = self->_childGrade;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  extractedGrade = self->_extractedGrade;
  PBDataWriterWriteBOOLField();
  v13 = self->_has;
  if ((v13 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v13)
  {
LABEL_17:
    childAge = self->_childAge;
    PBDataWriterWriteInt32Field();
  }

LABEL_18:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v11;
  }

  has = self->_has;
  if ((has & 0x20) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    *(v4 + 8) = self->_numPeople;
    *(v4 + 40) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(v4 + 39) = self->_imageGrade;
  *(v4 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  if ((has & 4) != 0)
  {
LABEL_6:
    *(v4 + 36) = self->_cameraRollGrade;
    *(v4 + 40) |= 4u;
  }

LABEL_7:
  if ([(VisionSignalGradingVisionGrade *)self extractedSignalsCount])
  {
    [v11 clearExtractedSignals];
    v6 = [(VisionSignalGradingVisionGrade *)self extractedSignalsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(VisionSignalGradingVisionGrade *)self extractedSignalsAtIndex:i];
        [v11 addExtractedSignals:v9];
      }
    }
  }

  v10 = self->_has;
  if ((v10 & 0x10) != 0)
  {
    *(v11 + 38) = self->_extractedGrade;
    *(v11 + 40) |= 0x10u;
    v10 = self->_has;
    if ((v10 & 8) == 0)
    {
LABEL_13:
      if ((v10 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

  *(v11 + 37) = self->_childGrade;
  *(v11 + 40) |= 8u;
  if (*&self->_has)
  {
LABEL_14:
    *(v11 + 2) = self->_childAge;
    *(v11 + 40) |= 1u;
  }

LABEL_15:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 39) = self->_imageGrade;
    *(v5 + 40) |= 0x20u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_numPeople;
  *(v5 + 40) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 36) = self->_cameraRollGrade;
    *(v5 + 40) |= 4u;
  }

LABEL_5:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_extractedSignals;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{a3, v18}];
        [v5 addExtractedSignals:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = self->_has;
  if ((v15 & 0x10) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_21:
    *(v5 + 37) = self->_childGrade;
    *(v5 + 40) |= 8u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *(v5 + 38) = self->_extractedGrade;
  *(v5 + 40) |= 0x10u;
  v15 = self->_has;
  if ((v15 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (v15)
  {
LABEL_15:
    *(v5 + 8) = self->_childAge;
    *(v5 + 40) |= 1u;
  }

LABEL_16:
  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_47;
    }
  }

  has = self->_has;
  v7 = *(v4 + 40);
  if ((has & 0x20) != 0)
  {
    if ((*(v4 + 40) & 0x20) == 0)
    {
      goto LABEL_47;
    }

    v8 = *(v4 + 39);
    if (self->_imageGrade)
    {
      if ((*(v4 + 39) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (*(v4 + 39))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 40) & 0x20) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_numPeople != *(v4 + 8))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0)
    {
      goto LABEL_47;
    }

    v11 = *(v4 + 36);
    if (self->_cameraRollGrade)
    {
      if ((*(v4 + 36) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (*(v4 + 36))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_47;
  }

  extractedSignals = self->_extractedSignals;
  if (extractedSignals | *(v4 + 2))
  {
    if (![(NSMutableArray *)extractedSignals isEqual:?])
    {
      goto LABEL_47;
    }

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 40) & 0x10) == 0)
    {
      goto LABEL_47;
    }

    v12 = *(v4 + 38);
    if (self->_extractedGrade)
    {
      if ((*(v4 + 38) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (*(v4 + 38))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 40) & 0x10) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 8) == 0)
  {
    if ((*(v4 + 40) & 8) == 0)
    {
      goto LABEL_24;
    }

LABEL_47:
    v10 = 0;
    goto LABEL_48;
  }

  if ((*(v4 + 40) & 8) == 0)
  {
    goto LABEL_47;
  }

  v13 = *(v4 + 37);
  if (self->_childGrade)
  {
    if ((*(v4 + 37) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (*(v4 + 37))
  {
    goto LABEL_47;
  }

LABEL_24:
  v10 = (*(v4 + 40) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_childAge != *(v4 + 2))
    {
      goto LABEL_47;
    }

    v10 = 1;
  }

LABEL_48:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if ((*&self->_has & 0x20) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = 2654435761 * self->_imageGrade;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_numPeople;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_cameraRollGrade;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
LABEL_8:
  v7 = [(NSMutableArray *)self->_extractedSignals hash];
  if ((*&self->_has & 0x10) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v9 = 0;
    if (*&self->_has)
    {
      goto LABEL_11;
    }

LABEL_14:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v8 = 2654435761 * self->_extractedGrade;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v9 = 2654435761 * self->_childGrade;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v10 = 2654435761 * self->_childAge;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 3))
  {
    [(VisionSignalGradingVisionGrade *)self setIdentifier:?];
  }

  v5 = *(v4 + 40);
  if ((v5 & 0x20) != 0)
  {
    self->_imageGrade = *(v4 + 39);
    *&self->_has |= 0x20u;
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_numPeople = *(v4 + 8);
  *&self->_has |= 2u;
  if ((*(v4 + 40) & 4) != 0)
  {
LABEL_6:
    self->_cameraRollGrade = *(v4 + 36);
    *&self->_has |= 4u;
  }

LABEL_7:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(v4 + 2);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(VisionSignalGradingVisionGrade *)self addExtractedSignals:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(v4 + 40);
  if ((v11 & 0x10) == 0)
  {
    if ((*(v4 + 40) & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    self->_childGrade = *(v4 + 37);
    *&self->_has |= 8u;
    if ((*(v4 + 40) & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  self->_extractedGrade = *(v4 + 38);
  *&self->_has |= 0x10u;
  v11 = *(v4 + 40);
  if ((v11 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v11)
  {
LABEL_17:
    self->_childAge = *(v4 + 2);
    *&self->_has |= 1u;
  }

LABEL_18:

  v12 = *MEMORY[0x1E69E9840];
}

@end