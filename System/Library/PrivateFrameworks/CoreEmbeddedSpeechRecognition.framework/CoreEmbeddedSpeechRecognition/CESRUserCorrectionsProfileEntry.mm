@interface CESRUserCorrectionsProfileEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSpellingCorrectionsCount:(BOOL)a3;
- (void)setHasTap2editCorrectionsCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CESRUserCorrectionsProfileEntry

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 2))
  {
    [(CESRUserCorrectionsProfileEntry *)self setCorrectedText:?];
    v4 = v8;
  }

  pronunciationData = self->_pronunciationData;
  v6 = *(v4 + 3);
  if (pronunciationData)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    pronunciationData = [(CESRCorrectionPronunciation *)pronunciationData mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    pronunciationData = [(CESRUserCorrectionsProfileEntry *)self setPronunciationData:?];
  }

  v4 = v8;
LABEL_9:
  v7 = *(v4 + 40);
  if ((v7 & 2) != 0)
  {
    self->_spellingCorrectionsCount = v4[8];
    *&self->_has |= 2u;
    v7 = *(v4 + 40);
    if ((v7 & 4) == 0)
    {
LABEL_11:
      if ((v7 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v4[10] & 4) == 0)
  {
    goto LABEL_11;
  }

  self->_tap2editCorrectionsCount = v4[9];
  *&self->_has |= 4u;
  if (v4[10])
  {
LABEL_12:
    self->_alternativesCorrectionsCount = v4[2];
    *&self->_has |= 1u;
  }

LABEL_13:

  MEMORY[0x2821F96F8](pronunciationData, v4);
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_correctedText hash];
  v4 = [(CESRCorrectionPronunciation *)self->_pronunciationData hash];
  if ((*&self->_has & 2) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_spellingCorrectionsCount;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761 * self->_tap2editCorrectionsCount;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = 2654435761 * self->_alternativesCorrectionsCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  correctedText = self->_correctedText;
  if (correctedText | *(v4 + 2))
  {
    if (![(NSString *)correctedText isEqual:?])
    {
      goto LABEL_20;
    }
  }

  pronunciationData = self->_pronunciationData;
  if (pronunciationData | *(v4 + 3))
  {
    if (![(CESRCorrectionPronunciation *)pronunciationData isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_spellingCorrectionsCount != *(v4 + 8))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_tap2editCorrectionsCount != *(v4 + 9))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_20;
  }

  v7 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_alternativesCorrectionsCount != *(v4 + 2))
    {
      goto LABEL_20;
    }

    v7 = 1;
  }

LABEL_21:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_correctedText copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(CESRCorrectionPronunciation *)self->_pronunciationData copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 36) = self->_tap2editCorrectionsCount;
    *(v5 + 40) |= 4u;
    if ((*&self->_has & 1) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 32) = self->_spellingCorrectionsCount;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_alternativesCorrectionsCount;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_correctedText)
  {
    [v4 setCorrectedText:?];
    v4 = v6;
  }

  if (self->_pronunciationData)
  {
    [v6 setPronunciationData:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 8) = self->_spellingCorrectionsCount;
    *(v4 + 40) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
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

  *(v4 + 9) = self->_tap2editCorrectionsCount;
  *(v4 + 40) |= 4u;
  if (*&self->_has)
  {
LABEL_8:
    *(v4 + 2) = self->_alternativesCorrectionsCount;
    *(v4 + 40) |= 1u;
  }

LABEL_9:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_correctedText)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_pronunciationData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    spellingCorrectionsCount = self->_spellingCorrectionsCount;
    PBDataWriterWriteUint32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
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

  tap2editCorrectionsCount = self->_tap2editCorrectionsCount;
  PBDataWriterWriteUint32Field();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_8:
    alternativesCorrectionsCount = self->_alternativesCorrectionsCount;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

LABEL_9:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  correctedText = self->_correctedText;
  if (correctedText)
  {
    [v3 setObject:correctedText forKey:@"corrected_text"];
  }

  pronunciationData = self->_pronunciationData;
  if (pronunciationData)
  {
    v7 = [(CESRCorrectionPronunciation *)pronunciationData dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"pronunciation_data"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_spellingCorrectionsCount];
    [v4 setObject:v11 forKey:@"spelling_corrections_count"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
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

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tap2editCorrectionsCount];
  [v4 setObject:v12 forKey:@"tap2edit_corrections_count"];

  if (*&self->_has)
  {
LABEL_8:
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_alternativesCorrectionsCount];
    [v4 setObject:v9 forKey:@"alternatives_corrections_count"];
  }

LABEL_9:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CESRUserCorrectionsProfileEntry;
  v4 = [(CESRUserCorrectionsProfileEntry *)&v8 description];
  v5 = [(CESRUserCorrectionsProfileEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasTap2editCorrectionsCount:(BOOL)a3
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

- (void)setHasSpellingCorrectionsCount:(BOOL)a3
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

@end