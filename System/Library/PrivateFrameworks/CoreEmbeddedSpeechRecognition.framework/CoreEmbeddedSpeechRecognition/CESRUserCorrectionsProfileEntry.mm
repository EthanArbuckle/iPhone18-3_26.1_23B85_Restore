@interface CESRUserCorrectionsProfileEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSpellingCorrectionsCount:(BOOL)count;
- (void)setHasTap2editCorrectionsCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation CESRUserCorrectionsProfileEntry

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(CESRUserCorrectionsProfileEntry *)self setCorrectedText:?];
    fromCopy = v8;
  }

  pronunciationData = self->_pronunciationData;
  v6 = *(fromCopy + 3);
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

  fromCopy = v8;
LABEL_9:
  v7 = *(fromCopy + 40);
  if ((v7 & 2) != 0)
  {
    self->_spellingCorrectionsCount = fromCopy[8];
    *&self->_has |= 2u;
    v7 = *(fromCopy + 40);
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

  else if ((fromCopy[10] & 4) == 0)
  {
    goto LABEL_11;
  }

  self->_tap2editCorrectionsCount = fromCopy[9];
  *&self->_has |= 4u;
  if (fromCopy[10])
  {
LABEL_12:
    self->_alternativesCorrectionsCount = fromCopy[2];
    *&self->_has |= 1u;
  }

LABEL_13:

  MEMORY[0x2821F96F8](pronunciationData, fromCopy);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  correctedText = self->_correctedText;
  if (correctedText | *(equalCopy + 2))
  {
    if (![(NSString *)correctedText isEqual:?])
    {
      goto LABEL_20;
    }
  }

  pronunciationData = self->_pronunciationData;
  if (pronunciationData | *(equalCopy + 3))
  {
    if (![(CESRCorrectionPronunciation *)pronunciationData isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_spellingCorrectionsCount != *(equalCopy + 8))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_tap2editCorrectionsCount != *(equalCopy + 9))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_20;
  }

  v7 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_alternativesCorrectionsCount != *(equalCopy + 2))
    {
      goto LABEL_20;
    }

    v7 = 1;
  }

LABEL_21:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_correctedText copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(CESRCorrectionPronunciation *)self->_pronunciationData copyWithZone:zone];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_correctedText)
  {
    [toCopy setCorrectedText:?];
    toCopy = v6;
  }

  if (self->_pronunciationData)
  {
    [v6 setPronunciationData:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 8) = self->_spellingCorrectionsCount;
    *(toCopy + 40) |= 2u;
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

  *(toCopy + 9) = self->_tap2editCorrectionsCount;
  *(toCopy + 40) |= 4u;
  if (*&self->_has)
  {
LABEL_8:
    *(toCopy + 2) = self->_alternativesCorrectionsCount;
    *(toCopy + 40) |= 1u;
  }

LABEL_9:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_correctedText)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_pronunciationData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    spellingCorrectionsCount = self->_spellingCorrectionsCount;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
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
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_8:
    alternativesCorrectionsCount = self->_alternativesCorrectionsCount;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

LABEL_9:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  correctedText = self->_correctedText;
  if (correctedText)
  {
    [dictionary setObject:correctedText forKey:@"corrected_text"];
  }

  pronunciationData = self->_pronunciationData;
  if (pronunciationData)
  {
    dictionaryRepresentation = [(CESRCorrectionPronunciation *)pronunciationData dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"pronunciation_data"];
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
  dictionaryRepresentation = [(CESRUserCorrectionsProfileEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasTap2editCorrectionsCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSpellingCorrectionsCount:(BOOL)count
{
  if (count)
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