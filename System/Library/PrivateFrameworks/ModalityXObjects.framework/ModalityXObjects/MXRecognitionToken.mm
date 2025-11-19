@interface MXRecognitionToken
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAddSpaceAfter:(BOOL)a3;
- (void)setHasEndMilliSeconds:(BOOL)a3;
- (void)setHasSilenceStartMilliSeconds:(BOOL)a3;
- (void)setHasStartMilliSeconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXRecognitionToken

- (void)setHasStartMilliSeconds:(BOOL)a3
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

- (void)setHasEndMilliSeconds:(BOOL)a3
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

- (void)setHasSilenceStartMilliSeconds:(BOOL)a3
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

- (void)setHasAddSpaceAfter:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXRecognitionToken;
  v4 = [(MXRecognitionToken *)&v8 description];
  v5 = [(MXRecognitionToken *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  tokenText = self->_tokenText;
  if (tokenText)
  {
    [v3 setObject:tokenText forKey:@"token_text"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_startMilliSeconds];
    [v4 setObject:v11 forKey:@"start_milli_seconds"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_endMilliSeconds];
  [v4 setObject:v12 forKey:@"end_milli_seconds"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = [MEMORY[0x277CCABB0] numberWithInt:self->_silenceStartMilliSeconds];
  [v4 setObject:v13 forKey:@"silence_start_milli_seconds"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  v14 = [MEMORY[0x277CCABB0] numberWithInt:self->_confidence];
  [v4 setObject:v14 forKey:@"confidence"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_8:
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_addSpaceAfter];
    [v4 setObject:v7 forKey:@"add_space_after"];
  }

LABEL_9:
  phoneSeq = self->_phoneSeq;
  if (phoneSeq)
  {
    [v4 setObject:phoneSeq forKey:@"phone_seq"];
  }

  ipaPhoneSeq = self->_ipaPhoneSeq;
  if (ipaPhoneSeq)
  {
    [v4 setObject:ipaPhoneSeq forKey:@"ipa_phone_seq"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_tokenText)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    startMilliSeconds = self->_startMilliSeconds;
    PBDataWriterWriteInt32Field();
    v4 = v11;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  endMilliSeconds = self->_endMilliSeconds;
  PBDataWriterWriteInt32Field();
  v4 = v11;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  silenceStartMilliSeconds = self->_silenceStartMilliSeconds;
  PBDataWriterWriteInt32Field();
  v4 = v11;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  confidence = self->_confidence;
  PBDataWriterWriteInt32Field();
  v4 = v11;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_8:
    addSpaceAfter = self->_addSpaceAfter;
    PBDataWriterWriteBOOLField();
    v4 = v11;
  }

LABEL_9:
  if (self->_phoneSeq)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if (self->_ipaPhoneSeq)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_tokenText)
  {
    [v4 setTokenText:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 9) = self->_startMilliSeconds;
    *(v4 + 52) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 3) = self->_endMilliSeconds;
  *(v4 + 52) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 8) = self->_silenceStartMilliSeconds;
  *(v4 + 52) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  *(v4 + 2) = self->_confidence;
  *(v4 + 52) |= 1u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_8:
    *(v4 + 48) = self->_addSpaceAfter;
    *(v4 + 52) |= 0x10u;
  }

LABEL_9:
  if (self->_phoneSeq)
  {
    [v6 setPhoneSeq:?];
    v4 = v6;
  }

  if (self->_ipaPhoneSeq)
  {
    [v6 setIpaPhoneSeq:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_tokenText copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 36) = self->_startMilliSeconds;
    *(v5 + 52) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 12) = self->_endMilliSeconds;
  *(v5 + 52) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v5 + 8) = self->_confidence;
    *(v5 + 52) |= 1u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v5 + 32) = self->_silenceStartMilliSeconds;
  *(v5 + 52) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 0x10) != 0)
  {
LABEL_6:
    *(v5 + 48) = self->_addSpaceAfter;
    *(v5 + 52) |= 0x10u;
  }

LABEL_7:
  v9 = [(NSString *)self->_phoneSeq copyWithZone:a3];
  v10 = *(v5 + 24);
  *(v5 + 24) = v9;

  v11 = [(NSString *)self->_ipaPhoneSeq copyWithZone:a3];
  v12 = *(v5 + 16);
  *(v5 + 16) = v11;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  tokenText = self->_tokenText;
  if (tokenText | *(v4 + 5))
  {
    if (![(NSString *)tokenText isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v6 = *(v4 + 52);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 52) & 8) == 0 || self->_startMilliSeconds != *(v4 + 9))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 52) & 8) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_endMilliSeconds != *(v4 + 3))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_silenceStartMilliSeconds != *(v4 + 8))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_confidence != *(v4 + 2))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(v4 + 52) & 0x10) == 0)
    {
      goto LABEL_26;
    }

LABEL_31:
    v9 = 0;
    goto LABEL_32;
  }

  if ((*(v4 + 52) & 0x10) == 0)
  {
    goto LABEL_31;
  }

  v11 = *(v4 + 48);
  if (self->_addSpaceAfter)
  {
    if ((*(v4 + 48) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_31;
  }

LABEL_26:
  phoneSeq = self->_phoneSeq;
  if (phoneSeq | *(v4 + 3) && ![(NSString *)phoneSeq isEqual:?])
  {
    goto LABEL_31;
  }

  ipaPhoneSeq = self->_ipaPhoneSeq;
  if (ipaPhoneSeq | *(v4 + 2))
  {
    v9 = [(NSString *)ipaPhoneSeq isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_32:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_tokenText hash];
  if ((*&self->_has & 8) != 0)
  {
    v4 = 2654435761 * self->_startMilliSeconds;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_endMilliSeconds;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_silenceStartMilliSeconds;
    if (*&self->_has)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

LABEL_9:
  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761 * self->_confidence;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = 2654435761 * self->_addSpaceAfter;
LABEL_12:
  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_phoneSeq hash];
  return v9 ^ [(NSString *)self->_ipaPhoneSeq hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 5))
  {
    [(MXRecognitionToken *)self setTokenText:?];
    v4 = v6;
  }

  v5 = *(v4 + 52);
  if ((v5 & 8) != 0)
  {
    self->_startMilliSeconds = *(v4 + 9);
    *&self->_has |= 8u;
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((*(v4 + 52) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_endMilliSeconds = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_silenceStartMilliSeconds = *(v4 + 8);
  *&self->_has |= 4u;
  v5 = *(v4 + 52);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  self->_confidence = *(v4 + 2);
  *&self->_has |= 1u;
  if ((*(v4 + 52) & 0x10) != 0)
  {
LABEL_8:
    self->_addSpaceAfter = *(v4 + 48);
    *&self->_has |= 0x10u;
  }

LABEL_9:
  if (*(v4 + 3))
  {
    [(MXRecognitionToken *)self setPhoneSeq:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(MXRecognitionToken *)self setIpaPhoneSeq:?];
    v4 = v6;
  }
}

@end