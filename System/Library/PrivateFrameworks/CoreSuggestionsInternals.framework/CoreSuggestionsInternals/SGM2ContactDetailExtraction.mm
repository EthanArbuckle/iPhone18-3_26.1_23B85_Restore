@interface SGM2ContactDetailExtraction
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDetail:(id)a3;
- (int)StringAsExtractionSignatureSource:(id)a3;
- (int)StringAsFoundInSenderCNContact:(id)a3;
- (int)StringAsOutcome:(id)a3;
- (int)StringAsSource:(id)a3;
- (int)detail;
- (int)extractionSignatureSource;
- (int)foundInSenderCNContact;
- (int)outcome;
- (int)source;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasExtractionModelVersion:(BOOL)a3;
- (void)setHasExtractionSignatureSource:(BOOL)a3;
- (void)setHasFoundInSenderCNContact:(BOOL)a3;
- (void)setHasIsUnlikelyPhone:(BOOL)a3;
- (void)setHasOutcome:(BOOL)a3;
- (void)setHasSignature:(BOOL)a3;
- (void)setHasSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2ContactDetailExtraction

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 3))
  {
    v6 = v4;
    [(SGM2ContactDetailExtraction *)self setKey:?];
    v4 = v6;
  }

  v5 = *(v4 + 44);
  if ((v5 & 0x20) != 0)
  {
    self->_source = *(v4 + 9);
    *&self->_has |= 0x20u;
    v5 = *(v4 + 44);
    if ((v5 & 0x80) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*(v4 + 44) & 0x80) == 0)
  {
    goto LABEL_5;
  }

  self->_signature = *(v4 + 41);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 44);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_detail = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_outcome = *(v4 + 8);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 44);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_foundInSenderCNContact = *(v4 + 5);
  *&self->_has |= 8u;
  v5 = *(v4 + 44);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_extractionModelVersion = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  self->_isUnlikelyPhone = *(v4 + 40);
  *&self->_has |= 0x40u;
  if ((*(v4 + 44) & 4) != 0)
  {
LABEL_11:
    self->_extractionSignatureSource = *(v4 + 4);
    *&self->_has |= 4u;
  }

LABEL_12:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v4 = 2654435761 * self->_source;
    if ((*&self->_has & 0x80) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_signature;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if (*&self->_has)
  {
LABEL_4:
    v6 = 2654435761 * self->_detail;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v6 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_outcome;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_foundInSenderCNContact;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    v9 = 2654435761 * self->_extractionModelVersion;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v10 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_15:
  v9 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v10 = 2654435761 * self->_isUnlikelyPhone;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v11 = 2654435761 * self->_extractionSignatureSource;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  key = self->_key;
  if (key | *(v4 + 3))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_44;
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 44) & 0x20) == 0 || self->_source != *(v4 + 9))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 44) & 0x20) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(v4 + 44) & 0x80) == 0)
    {
      goto LABEL_44;
    }

    v6 = *(v4 + 41);
    if (self->_signature)
    {
      if ((*(v4 + 41) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (*(v4 + 41))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 44) & 0x80) != 0)
  {
    goto LABEL_44;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_detail != *(v4 + 2))
    {
      goto LABEL_44;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 44) & 0x10) == 0 || self->_outcome != *(v4 + 8))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 44) & 0x10) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 44) & 8) == 0 || self->_foundInSenderCNContact != *(v4 + 5))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 44) & 8) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_extractionModelVersion != *(v4 + 3))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 0x40) == 0)
  {
    if ((*(v4 + 44) & 0x40) == 0)
    {
      goto LABEL_39;
    }

LABEL_44:
    v7 = 0;
    goto LABEL_45;
  }

  if ((*(v4 + 44) & 0x40) == 0)
  {
    goto LABEL_44;
  }

  v9 = *(v4 + 40);
  if (self->_isUnlikelyPhone)
  {
    if ((*(v4 + 40) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_44;
  }

LABEL_39:
  v7 = (*(v4 + 44) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_extractionSignatureSource != *(v4 + 4))
    {
      goto LABEL_44;
    }

    v7 = 1;
  }

LABEL_45:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 36) = self->_source;
    *(v5 + 44) |= 0x20u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 41) = self->_signature;
  *(v5 + 44) |= 0x80u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v5 + 8) = self->_detail;
  *(v5 + 44) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 32) = self->_outcome;
  *(v5 + 44) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 20) = self->_foundInSenderCNContact;
  *(v5 + 44) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    *(v5 + 40) = self->_isUnlikelyPhone;
    *(v5 + 44) |= 0x40u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_9;
  }

LABEL_16:
  *(v5 + 12) = self->_extractionModelVersion;
  *(v5 + 44) |= 2u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((has & 4) != 0)
  {
LABEL_9:
    *(v5 + 16) = self->_extractionSignatureSource;
    *(v5 + 44) |= 4u;
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
  if ((has & 0x20) != 0)
  {
    *(v4 + 9) = self->_source;
    *(v4 + 44) |= 0x20u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 41) = self->_signature;
  *(v4 + 44) |= 0x80u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v4 + 2) = self->_detail;
  *(v4 + 44) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 8) = self->_outcome;
  *(v4 + 44) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v4 + 5) = self->_foundInSenderCNContact;
  *(v4 + 44) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v4 + 3) = self->_extractionModelVersion;
  *(v4 + 44) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(v4 + 40) = self->_isUnlikelyPhone;
  *(v4 + 44) |= 0x40u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    *(v4 + 4) = self->_extractionSignatureSource;
    *(v4 + 44) |= 4u;
  }

LABEL_12:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v14 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v14;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    source = self->_source;
    PBDataWriterWriteInt32Field();
    v4 = v14;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_5;
  }

  signature = self->_signature;
  PBDataWriterWriteBOOLField();
  v4 = v14;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  detail = self->_detail;
  PBDataWriterWriteInt32Field();
  v4 = v14;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  outcome = self->_outcome;
  PBDataWriterWriteInt32Field();
  v4 = v14;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  foundInSenderCNContact = self->_foundInSenderCNContact;
  PBDataWriterWriteInt32Field();
  v4 = v14;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  extractionModelVersion = self->_extractionModelVersion;
  PBDataWriterWriteUint32Field();
  v4 = v14;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  isUnlikelyPhone = self->_isUnlikelyPhone;
  PBDataWriterWriteBOOLField();
  v4 = v14;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    extractionSignatureSource = self->_extractionSignatureSource;
    PBDataWriterWriteInt32Field();
    v4 = v14;
  }

LABEL_12:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    source = self->_source;
    if (source)
    {
      if (source == 1)
      {
        v8 = @"SGMDocumentTypeMessage";
      }

      else
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_source];
      }
    }

    else
    {
      v8 = @"SGMDocumentTypeEmail";
    }

    [v4 setObject:v8 forKey:@"source"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_5;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_signature];
  [v4 setObject:v9 forKey:@"signature"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_19:
  detail = self->_detail;
  if (detail >= 5)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_detail];
  }

  else
  {
    v11 = off_27894AF08[detail];
  }

  [v4 setObject:v11 forKey:@"detail"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_23:
  outcome = self->_outcome;
  if (outcome >= 5)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_outcome];
  }

  else
  {
    v13 = off_27894AF30[outcome];
  }

  [v4 setObject:v13 forKey:@"outcome"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_27:
  foundInSenderCNContact = self->_foundInSenderCNContact;
  if (foundInSenderCNContact >= 3)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_foundInSenderCNContact];
  }

  else
  {
    v15 = off_27894AF58[foundInSenderCNContact];
  }

  [v4 setObject:v15 forKey:@"foundInSenderCNContact"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_isUnlikelyPhone];
    [v4 setObject:v17 forKey:@"isUnlikelyPhone"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_37;
    }

LABEL_33:
    extractionSignatureSource = self->_extractionSignatureSource;
    if (extractionSignatureSource >= 3)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_extractionSignatureSource];
    }

    else
    {
      v19 = off_27894AF70[extractionSignatureSource];
    }

    [v4 setObject:v19 forKey:@"extractionSignatureSource"];

    goto LABEL_37;
  }

LABEL_31:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_extractionModelVersion];
  [v4 setObject:v16 forKey:@"extractionModelVersion"];

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  if ((has & 4) != 0)
  {
    goto LABEL_33;
  }

LABEL_37:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGM2ContactDetailExtraction;
  v4 = [(SGM2ContactDetailExtraction *)&v8 description];
  v5 = [(SGM2ContactDetailExtraction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsExtractionSignatureSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMContactDetailExtractionSignatureSourceHMM"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailExtractionSignatureSourceDataDetectors"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailExtractionSignatureSourceNoSignatureSource"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasExtractionSignatureSource:(BOOL)a3
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

- (int)extractionSignatureSource
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_extractionSignatureSource;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIsUnlikelyPhone:(BOOL)a3
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

- (void)setHasExtractionModelVersion:(BOOL)a3
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

- (int)StringAsFoundInSenderCNContact:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMContactDetailOwnerNotFound"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailOwnerSender"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailOwnerNotSender"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasFoundInSenderCNContact:(BOOL)a3
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

- (int)foundInSenderCNContact
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_foundInSenderCNContact;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsOutcome:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMContactDetailExtractionOutcomeExtracted"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailExtractionOutcomeIgnoredSuspectedBulkMail"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailExtractionOutcomeIgnoredQuotedRegion"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailExtractionOutcomeIgnoredPattern"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailExtractionOutcomeIgnored"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasOutcome:(BOOL)a3
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

- (int)outcome
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_outcome;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDetail:(id)a3
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

- (int)detail
{
  if (*&self->_has)
  {
    return self->_detail;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSignature:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (int)StringAsSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMDocumentTypeEmail"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"SGMDocumentTypeMessage"];
  }

  return v4;
}

- (void)setHasSource:(BOOL)a3
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

- (int)source
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_source;
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
    return @"ContactDetailExtraction";
  }
}

@end