@interface SGM2NLEventInBanner
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsActionType:(id)type;
- (int)StringAsDateAdj:(id)adj;
- (int)StringAsDuraAdj:(id)adj;
- (int)StringAsExtractionLevel:(id)level;
- (int)StringAsInterface:(id)interface;
- (int)StringAsLocationAdj:(id)adj;
- (int)StringAsMailAppUsageLevel:(id)level;
- (int)StringAsMessagesAppUsageLevel:(id)level;
- (int)StringAsSignificantSender:(id)sender;
- (int)StringAsTitleAdj:(id)adj;
- (int)StringAsTitleSource:(id)source;
- (int)actionType;
- (int)dateAdj;
- (int)duraAdj;
- (int)extractionLevel;
- (int)interface;
- (int)locationAdj;
- (int)mailAppUsageLevel;
- (int)messagesAppUsageLevel;
- (int)significantSender;
- (int)titleAdj;
- (int)titleSource;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConfidenceScore:(BOOL)score;
- (void)setHasDateAdj:(BOOL)adj;
- (void)setHasDaysFromStartDate:(BOOL)date;
- (void)setHasDuraAdj:(BOOL)adj;
- (void)setHasExtractionLevel:(BOOL)level;
- (void)setHasInterface:(BOOL)interface;
- (void)setHasLocationAdj:(BOOL)adj;
- (void)setHasMailAppUsageLevel:(BOOL)level;
- (void)setHasMessagesAppUsageLevel:(BOOL)level;
- (void)setHasParticipantCount:(BOOL)count;
- (void)setHasSignificantSender:(BOOL)sender;
- (void)setHasTitleAdj:(BOOL)adj;
- (void)setHasTitleSource:(BOOL)source;
- (void)setHasUsedBubblesCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation SGM2NLEventInBanner

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 8))
  {
    [(SGM2NLEventInBanner *)self setKey:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 56);
  if ((v5 & 0x40) != 0)
  {
    self->_interface = *(fromCopy + 15);
    *&self->_has |= 0x40u;
    v5 = *(fromCopy + 56);
  }

  if (v5)
  {
    self->_actionType = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 6))
  {
    [(SGM2NLEventInBanner *)self setEventType:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 9))
  {
    [(SGM2NLEventInBanner *)self setLanguageID:?];
    fromCopy = v8;
  }

  v6 = *(fromCopy + 56);
  if ((v6 & 8) != 0)
  {
    self->_daysFromStartDate = *(fromCopy + 10);
    *&self->_has |= 8u;
    v6 = *(fromCopy + 56);
    if ((v6 & 2) == 0)
    {
LABEL_13:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_13;
  }

  self->_confidenceScore = *(fromCopy + 8);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 56);
  if ((v6 & 0x800) == 0)
  {
LABEL_14:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_significantSender = *(fromCopy + 24);
  *&self->_has |= 0x800u;
  v6 = *(fromCopy + 56);
  if ((v6 & 0x400) == 0)
  {
LABEL_15:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_participantCount = *(fromCopy + 23);
  *&self->_has |= 0x400u;
  v6 = *(fromCopy + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_16:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_extractionLevel = *(fromCopy + 14);
  *&self->_has |= 0x20u;
  v6 = *(fromCopy + 56);
  if ((v6 & 0x4000) == 0)
  {
LABEL_17:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_usedBubblesCount = *(fromCopy + 27);
  *&self->_has |= 0x4000u;
  v6 = *(fromCopy + 56);
  if ((v6 & 0x2000) == 0)
  {
LABEL_18:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_titleSource = *(fromCopy + 26);
  *&self->_has |= 0x2000u;
  v6 = *(fromCopy + 56);
  if ((v6 & 0x1000) == 0)
  {
LABEL_19:
    if ((v6 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_titleAdj = *(fromCopy + 25);
  *&self->_has |= 0x1000u;
  v6 = *(fromCopy + 56);
  if ((v6 & 4) == 0)
  {
LABEL_20:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_dateAdj = *(fromCopy + 9);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_21:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_43:
  self->_duraAdj = *(fromCopy + 11);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 56) & 0x80) != 0)
  {
LABEL_22:
    self->_locationAdj = *(fromCopy + 20);
    *&self->_has |= 0x80u;
  }

LABEL_23:
  if (*(fromCopy + 2))
  {
    [(SGM2NLEventInBanner *)self setAddedAttendeesCount:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 3))
  {
    [(SGM2NLEventInBanner *)self setCalendarAppUsageLevel:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 56);
  if ((v7 & 0x100) != 0)
  {
    self->_mailAppUsageLevel = *(fromCopy + 21);
    *&self->_has |= 0x100u;
    v7 = *(fromCopy + 56);
  }

  if ((v7 & 0x200) != 0)
  {
    self->_messagesAppUsageLevel = *(fromCopy + 22);
    *&self->_has |= 0x200u;
  }
}

- (unint64_t)hash
{
  v26 = [(NSString *)self->_key hash];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v25 = 2654435761 * self->_interface;
    if (has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = 0;
    if (has)
    {
LABEL_3:
      v24 = 2654435761 * self->_actionType;
      goto LABEL_6;
    }
  }

  v24 = 0;
LABEL_6:
  v23 = [(NSString *)self->_eventType hash];
  v22 = [(NSString *)self->_languageID hash];
  v4 = self->_has;
  if ((v4 & 8) != 0)
  {
    v21 = 2654435761 * self->_daysFromStartDate;
    if ((v4 & 2) != 0)
    {
LABEL_8:
      v20 = 2654435761 * self->_confidenceScore;
      if ((*&self->_has & 0x800) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v21 = 0;
    if ((v4 & 2) != 0)
    {
      goto LABEL_8;
    }
  }

  v20 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_9:
    v19 = 2654435761 * self->_significantSender;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v19 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_10:
    v18 = 2654435761 * self->_participantCount;
    if ((v4 & 0x20) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v18 = 0;
  if ((v4 & 0x20) != 0)
  {
LABEL_11:
    v16 = 2654435761 * self->_extractionLevel;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_12:
    v5 = 2654435761 * self->_usedBubblesCount;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v5 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_13:
    v6 = 2654435761 * self->_titleSource;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v6 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    v7 = 2654435761 * self->_titleAdj;
    if ((v4 & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v7 = 0;
  if ((v4 & 4) != 0)
  {
LABEL_15:
    v8 = 2654435761 * self->_dateAdj;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_16;
    }

LABEL_27:
    v9 = 0;
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

LABEL_26:
  v8 = 0;
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  v9 = 2654435761 * self->_duraAdj;
  if ((v4 & 0x80) != 0)
  {
LABEL_17:
    v10 = 2654435761 * self->_locationAdj;
    goto LABEL_29;
  }

LABEL_28:
  v10 = 0;
LABEL_29:
  v11 = [(NSString *)self->_addedAttendeesCount hash];
  v12 = [(NSString *)self->_calendarAppUsageLevel hash];
  if ((*&self->_has & 0x100) != 0)
  {
    v13 = 2654435761 * self->_mailAppUsageLevel;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_31;
    }

LABEL_33:
    v14 = 0;
    return v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

  v13 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_33;
  }

LABEL_31:
  v14 = 2654435761 * self->_messagesAppUsageLevel;
  return v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_87;
  }

  key = self->_key;
  if (key | *(equalCopy + 8))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_87;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 56);
  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_interface != *(equalCopy + 15))
    {
      goto LABEL_87;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
LABEL_87:
    v14 = 0;
    goto LABEL_88;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_actionType != *(equalCopy + 2))
    {
      goto LABEL_87;
    }
  }

  else if (v7)
  {
    goto LABEL_87;
  }

  eventType = self->_eventType;
  if (eventType | *(equalCopy + 6) && ![(NSString *)eventType isEqual:?])
  {
    goto LABEL_87;
  }

  languageID = self->_languageID;
  if (languageID | *(equalCopy + 9))
  {
    if (![(NSString *)languageID isEqual:?])
    {
      goto LABEL_87;
    }
  }

  v10 = self->_has;
  v11 = *(equalCopy + 56);
  if ((v10 & 8) != 0)
  {
    if ((v11 & 8) == 0 || self->_daysFromStartDate != *(equalCopy + 10))
    {
      goto LABEL_87;
    }
  }

  else if ((v11 & 8) != 0)
  {
    goto LABEL_87;
  }

  if ((v10 & 2) != 0)
  {
    if ((v11 & 2) == 0 || self->_confidenceScore != *(equalCopy + 8))
    {
      goto LABEL_87;
    }
  }

  else if ((v11 & 2) != 0)
  {
    goto LABEL_87;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 56) & 0x800) == 0 || self->_significantSender != *(equalCopy + 24))
    {
      goto LABEL_87;
    }
  }

  else if ((*(equalCopy + 56) & 0x800) != 0)
  {
    goto LABEL_87;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 56) & 0x400) == 0 || self->_participantCount != *(equalCopy + 23))
    {
      goto LABEL_87;
    }
  }

  else if ((*(equalCopy + 56) & 0x400) != 0)
  {
    goto LABEL_87;
  }

  if ((v10 & 0x20) != 0)
  {
    if ((v11 & 0x20) == 0 || self->_extractionLevel != *(equalCopy + 14))
    {
      goto LABEL_87;
    }
  }

  else if ((v11 & 0x20) != 0)
  {
    goto LABEL_87;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(equalCopy + 56) & 0x4000) == 0 || self->_usedBubblesCount != *(equalCopy + 27))
    {
      goto LABEL_87;
    }
  }

  else if ((*(equalCopy + 56) & 0x4000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equalCopy + 56) & 0x2000) == 0 || self->_titleSource != *(equalCopy + 26))
    {
      goto LABEL_87;
    }
  }

  else if ((*(equalCopy + 56) & 0x2000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 56) & 0x1000) == 0 || self->_titleAdj != *(equalCopy + 25))
    {
      goto LABEL_87;
    }
  }

  else if ((*(equalCopy + 56) & 0x1000) != 0)
  {
    goto LABEL_87;
  }

  if ((v10 & 4) != 0)
  {
    if ((v11 & 4) == 0 || self->_dateAdj != *(equalCopy + 9))
    {
      goto LABEL_87;
    }
  }

  else if ((v11 & 4) != 0)
  {
    goto LABEL_87;
  }

  if ((v10 & 0x10) != 0)
  {
    if ((v11 & 0x10) == 0 || self->_duraAdj != *(equalCopy + 11))
    {
      goto LABEL_87;
    }
  }

  else if ((v11 & 0x10) != 0)
  {
    goto LABEL_87;
  }

  if ((v10 & 0x80) != 0)
  {
    if ((v11 & 0x80) == 0 || self->_locationAdj != *(equalCopy + 20))
    {
      goto LABEL_87;
    }
  }

  else if ((v11 & 0x80) != 0)
  {
    goto LABEL_87;
  }

  addedAttendeesCount = self->_addedAttendeesCount;
  if (addedAttendeesCount | *(equalCopy + 2) && ![(NSString *)addedAttendeesCount isEqual:?])
  {
    goto LABEL_87;
  }

  calendarAppUsageLevel = self->_calendarAppUsageLevel;
  if (calendarAppUsageLevel | *(equalCopy + 3))
  {
    if (![(NSString *)calendarAppUsageLevel isEqual:?])
    {
      goto LABEL_87;
    }
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 56) & 0x100) == 0 || self->_mailAppUsageLevel != *(equalCopy + 21))
    {
      goto LABEL_87;
    }
  }

  else if ((*(equalCopy + 56) & 0x100) != 0)
  {
    goto LABEL_87;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 56) & 0x200) == 0 || self->_messagesAppUsageLevel != *(equalCopy + 22))
    {
      goto LABEL_87;
    }

    v14 = 1;
  }

  else
  {
    v14 = (*(equalCopy + 56) & 0x200) == 0;
  }

LABEL_88:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v5 + 60) = self->_interface;
    *(v5 + 112) |= 0x40u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_actionType;
    *(v5 + 112) |= 1u;
  }

  v9 = [(NSString *)self->_eventType copyWithZone:zone];
  v10 = *(v5 + 48);
  *(v5 + 48) = v9;

  v11 = [(NSString *)self->_languageID copyWithZone:zone];
  v12 = *(v5 + 72);
  *(v5 + 72) = v11;

  v13 = self->_has;
  if ((v13 & 8) != 0)
  {
    *(v5 + 40) = self->_daysFromStartDate;
    *(v5 + 112) |= 8u;
    v13 = self->_has;
    if ((v13 & 2) == 0)
    {
LABEL_7:
      if ((v13 & 0x800) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_7;
  }

  *(v5 + 32) = self->_confidenceScore;
  *(v5 + 112) |= 2u;
  v13 = self->_has;
  if ((v13 & 0x800) == 0)
  {
LABEL_8:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 96) = self->_significantSender;
  *(v5 + 112) |= 0x800u;
  v13 = self->_has;
  if ((v13 & 0x400) == 0)
  {
LABEL_9:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 92) = self->_participantCount;
  *(v5 + 112) |= 0x400u;
  v13 = self->_has;
  if ((v13 & 0x20) == 0)
  {
LABEL_10:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 56) = self->_extractionLevel;
  *(v5 + 112) |= 0x20u;
  v13 = self->_has;
  if ((v13 & 0x4000) == 0)
  {
LABEL_11:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 108) = self->_usedBubblesCount;
  *(v5 + 112) |= 0x4000u;
  v13 = self->_has;
  if ((v13 & 0x2000) == 0)
  {
LABEL_12:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 104) = self->_titleSource;
  *(v5 + 112) |= 0x2000u;
  v13 = self->_has;
  if ((v13 & 0x1000) == 0)
  {
LABEL_13:
    if ((v13 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 100) = self->_titleAdj;
  *(v5 + 112) |= 0x1000u;
  v13 = self->_has;
  if ((v13 & 4) == 0)
  {
LABEL_14:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 36) = self->_dateAdj;
  *(v5 + 112) |= 4u;
  v13 = self->_has;
  if ((v13 & 0x10) == 0)
  {
LABEL_15:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_31:
  *(v5 + 44) = self->_duraAdj;
  *(v5 + 112) |= 0x10u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_16:
    *(v5 + 80) = self->_locationAdj;
    *(v5 + 112) |= 0x80u;
  }

LABEL_17:
  v14 = [(NSString *)self->_addedAttendeesCount copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  v16 = [(NSString *)self->_calendarAppUsageLevel copyWithZone:zone];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  v18 = self->_has;
  if ((v18 & 0x100) != 0)
  {
    *(v5 + 84) = self->_mailAppUsageLevel;
    *(v5 + 112) |= 0x100u;
    v18 = self->_has;
  }

  if ((v18 & 0x200) != 0)
  {
    *(v5 + 88) = self->_messagesAppUsageLevel;
    *(v5 + 112) |= 0x200u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(toCopy + 15) = self->_interface;
    *(toCopy + 56) |= 0x40u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 2) = self->_actionType;
    *(toCopy + 56) |= 1u;
  }

  if (self->_eventType)
  {
    [v8 setEventType:?];
    toCopy = v8;
  }

  if (self->_languageID)
  {
    [v8 setLanguageID:?];
    toCopy = v8;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(toCopy + 10) = self->_daysFromStartDate;
    *(toCopy + 56) |= 8u;
    v6 = self->_has;
    if ((v6 & 2) == 0)
    {
LABEL_13:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_13;
  }

  *(toCopy + 8) = self->_confidenceScore;
  *(toCopy + 56) |= 2u;
  v6 = self->_has;
  if ((v6 & 0x800) == 0)
  {
LABEL_14:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 24) = self->_significantSender;
  *(toCopy + 56) |= 0x800u;
  v6 = self->_has;
  if ((v6 & 0x400) == 0)
  {
LABEL_15:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(toCopy + 23) = self->_participantCount;
  *(toCopy + 56) |= 0x400u;
  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
LABEL_16:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 14) = self->_extractionLevel;
  *(toCopy + 56) |= 0x20u;
  v6 = self->_has;
  if ((v6 & 0x4000) == 0)
  {
LABEL_17:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 27) = self->_usedBubblesCount;
  *(toCopy + 56) |= 0x4000u;
  v6 = self->_has;
  if ((v6 & 0x2000) == 0)
  {
LABEL_18:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 26) = self->_titleSource;
  *(toCopy + 56) |= 0x2000u;
  v6 = self->_has;
  if ((v6 & 0x1000) == 0)
  {
LABEL_19:
    if ((v6 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(toCopy + 25) = self->_titleAdj;
  *(toCopy + 56) |= 0x1000u;
  v6 = self->_has;
  if ((v6 & 4) == 0)
  {
LABEL_20:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 9) = self->_dateAdj;
  *(toCopy + 56) |= 4u;
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_21:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_43:
  *(toCopy + 11) = self->_duraAdj;
  *(toCopy + 56) |= 0x10u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_22:
    *(toCopy + 20) = self->_locationAdj;
    *(toCopy + 56) |= 0x80u;
  }

LABEL_23:
  if (self->_addedAttendeesCount)
  {
    [v8 setAddedAttendeesCount:?];
    toCopy = v8;
  }

  if (self->_calendarAppUsageLevel)
  {
    [v8 setCalendarAppUsageLevel:?];
    toCopy = v8;
  }

  v7 = self->_has;
  if ((v7 & 0x100) != 0)
  {
    *(toCopy + 21) = self->_mailAppUsageLevel;
    *(toCopy + 56) |= 0x100u;
    v7 = self->_has;
  }

  if ((v7 & 0x200) != 0)
  {
    *(toCopy + 22) = self->_messagesAppUsageLevel;
    *(toCopy + 56) |= 0x200u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v23 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v23;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    interface = self->_interface;
    PBDataWriterWriteInt32Field();
    toCopy = v23;
    has = self->_has;
  }

  if (has)
  {
    actionType = self->_actionType;
    PBDataWriterWriteInt32Field();
    toCopy = v23;
  }

  if (self->_eventType)
  {
    PBDataWriterWriteStringField();
    toCopy = v23;
  }

  if (self->_languageID)
  {
    PBDataWriterWriteStringField();
    toCopy = v23;
  }

  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    daysFromStartDate = self->_daysFromStartDate;
    PBDataWriterWriteUint32Field();
    toCopy = v23;
    v8 = self->_has;
    if ((v8 & 2) == 0)
    {
LABEL_13:
      if ((v8 & 0x800) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_36;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_13;
  }

  confidenceScore = self->_confidenceScore;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  v8 = self->_has;
  if ((v8 & 0x800) == 0)
  {
LABEL_14:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  significantSender = self->_significantSender;
  PBDataWriterWriteInt32Field();
  toCopy = v23;
  v8 = self->_has;
  if ((v8 & 0x400) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  participantCount = self->_participantCount;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  v8 = self->_has;
  if ((v8 & 0x20) == 0)
  {
LABEL_16:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  extractionLevel = self->_extractionLevel;
  PBDataWriterWriteInt32Field();
  toCopy = v23;
  v8 = self->_has;
  if ((v8 & 0x4000) == 0)
  {
LABEL_17:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  usedBubblesCount = self->_usedBubblesCount;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  v8 = self->_has;
  if ((v8 & 0x2000) == 0)
  {
LABEL_18:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  titleSource = self->_titleSource;
  PBDataWriterWriteInt32Field();
  toCopy = v23;
  v8 = self->_has;
  if ((v8 & 0x1000) == 0)
  {
LABEL_19:
    if ((v8 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  titleAdj = self->_titleAdj;
  PBDataWriterWriteInt32Field();
  toCopy = v23;
  v8 = self->_has;
  if ((v8 & 4) == 0)
  {
LABEL_20:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  dateAdj = self->_dateAdj;
  PBDataWriterWriteInt32Field();
  toCopy = v23;
  v8 = self->_has;
  if ((v8 & 0x10) == 0)
  {
LABEL_21:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_43:
  duraAdj = self->_duraAdj;
  PBDataWriterWriteInt32Field();
  toCopy = v23;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_22:
    locationAdj = self->_locationAdj;
    PBDataWriterWriteInt32Field();
    toCopy = v23;
  }

LABEL_23:
  if (self->_addedAttendeesCount)
  {
    PBDataWriterWriteStringField();
    toCopy = v23;
  }

  if (self->_calendarAppUsageLevel)
  {
    PBDataWriterWriteStringField();
    toCopy = v23;
  }

  v10 = self->_has;
  if ((v10 & 0x100) != 0)
  {
    mailAppUsageLevel = self->_mailAppUsageLevel;
    PBDataWriterWriteInt32Field();
    toCopy = v23;
    v10 = self->_has;
  }

  if ((v10 & 0x200) != 0)
  {
    messagesAppUsageLevel = self->_messagesAppUsageLevel;
    PBDataWriterWriteInt32Field();
    toCopy = v23;
  }
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
  if ((has & 0x40) != 0)
  {
    interface = self->_interface;
    if (interface >= 0x14)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_interface];
    }

    else
    {
      v8 = off_1E7EFB170[interface];
    }

    [v4 setObject:v8 forKey:@"interface"];

    has = self->_has;
  }

  if (has)
  {
    actionType = self->_actionType;
    if (actionType >= 9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_actionType];
    }

    else
    {
      v10 = off_1E7EFB210[actionType];
    }

    [v4 setObject:v10 forKey:@"actionType"];
  }

  eventType = self->_eventType;
  if (eventType)
  {
    [v4 setObject:eventType forKey:@"eventType"];
  }

  languageID = self->_languageID;
  if (languageID)
  {
    [v4 setObject:languageID forKey:@"languageID"];
  }

  v13 = self->_has;
  if ((v13 & 8) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_daysFromStartDate];
    [v4 setObject:v14 forKey:@"daysFromStartDate"];

    v13 = self->_has;
    if ((v13 & 2) == 0)
    {
LABEL_19:
      if ((v13 & 0x800) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_31;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_19;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_confidenceScore];
  [v4 setObject:v15 forKey:@"confidenceScore"];

  v13 = self->_has;
  if ((v13 & 0x800) == 0)
  {
LABEL_20:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_31:
  significantSender = self->_significantSender;
  if (significantSender >= 3)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_significantSender];
  }

  else
  {
    v17 = off_1E7EFB258[significantSender];
  }

  [v4 setObject:v17 forKey:@"significantSender"];

  v13 = self->_has;
  if ((v13 & 0x400) == 0)
  {
LABEL_21:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_participantCount];
  [v4 setObject:v18 forKey:@"participantCount"];

  v13 = self->_has;
  if ((v13 & 0x20) == 0)
  {
LABEL_22:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_36:
  extractionLevel = self->_extractionLevel;
  if (extractionLevel >= 6)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_extractionLevel];
  }

  else
  {
    v20 = off_1E7EFB270[extractionLevel];
  }

  [v4 setObject:v20 forKey:@"extractionLevel"];

  v13 = self->_has;
  if ((v13 & 0x4000) == 0)
  {
LABEL_23:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_41;
  }

LABEL_40:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_usedBubblesCount];
  [v4 setObject:v21 forKey:@"usedBubblesCount"];

  v13 = self->_has;
  if ((v13 & 0x2000) == 0)
  {
LABEL_24:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_41:
  titleSource = self->_titleSource;
  if (titleSource >= 4)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_titleSource];
  }

  else
  {
    v23 = off_1E7EFB2A0[titleSource];
  }

  [v4 setObject:v23 forKey:@"titleSource"];

  v13 = self->_has;
  if ((v13 & 0x1000) == 0)
  {
LABEL_25:
    if ((v13 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_45:
  titleAdj = self->_titleAdj;
  if (titleAdj >= 5)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_titleAdj];
  }

  else
  {
    v25 = off_1E7EFB2C0[titleAdj];
  }

  [v4 setObject:v25 forKey:@"titleAdj"];

  v13 = self->_has;
  if ((v13 & 4) == 0)
  {
LABEL_26:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_49:
  dateAdj = self->_dateAdj;
  if (dateAdj >= 0xA)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_dateAdj];
  }

  else
  {
    v27 = off_1E7EFB2E8[dateAdj];
  }

  [v4 setObject:v27 forKey:@"dateAdj"];

  v13 = self->_has;
  if ((v13 & 0x10) == 0)
  {
LABEL_27:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

LABEL_53:
  duraAdj = self->_duraAdj;
  if (duraAdj >= 6)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_duraAdj];
  }

  else
  {
    v29 = off_1E7EFB338[duraAdj];
  }

  [v4 setObject:v29 forKey:@"duraAdj"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_57:
    locationAdj = self->_locationAdj;
    if (locationAdj >= 5)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_locationAdj];
    }

    else
    {
      v31 = off_1E7EFB368[locationAdj];
    }

    [v4 setObject:v31 forKey:@"locationAdj"];
  }

LABEL_61:
  addedAttendeesCount = self->_addedAttendeesCount;
  if (addedAttendeesCount)
  {
    [v4 setObject:addedAttendeesCount forKey:@"addedAttendeesCount"];
  }

  calendarAppUsageLevel = self->_calendarAppUsageLevel;
  if (calendarAppUsageLevel)
  {
    [v4 setObject:calendarAppUsageLevel forKey:@"calendarAppUsageLevel"];
  }

  v34 = self->_has;
  if ((v34 & 0x100) != 0)
  {
    mailAppUsageLevel = self->_mailAppUsageLevel;
    if (mailAppUsageLevel >= 4)
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_mailAppUsageLevel];
    }

    else
    {
      v36 = off_1E7EFB390[mailAppUsageLevel];
    }

    [v4 setObject:v36 forKey:@"mailAppUsageLevel"];

    v34 = self->_has;
  }

  if ((v34 & 0x200) != 0)
  {
    messagesAppUsageLevel = self->_messagesAppUsageLevel;
    if (messagesAppUsageLevel >= 4)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_messagesAppUsageLevel];
    }

    else
    {
      v38 = off_1E7EFB390[messagesAppUsageLevel];
    }

    [v4 setObject:v38 forKey:@"messagesAppUsageLevel"];
  }

  v39 = v4;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGM2NLEventInBanner;
  v4 = [(SGM2NLEventInBanner *)&v8 description];
  dictionaryRepresentation = [(SGM2NLEventInBanner *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsMessagesAppUsageLevel:(id)level
{
  levelCopy = level;
  if ([levelCopy isEqualToString:@"SGMAppUsageLevelNA"])
  {
    v4 = 0;
  }

  else if ([levelCopy isEqualToString:@"SGMAppUsageLevelLow"])
  {
    v4 = 1;
  }

  else if ([levelCopy isEqualToString:@"SGMAppUsageLevelMedium"])
  {
    v4 = 2;
  }

  else if ([levelCopy isEqualToString:@"SGMAppUsageLevelHigh"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMessagesAppUsageLevel:(BOOL)level
{
  if (level)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (int)messagesAppUsageLevel
{
  if ((*&self->_has & 0x200) != 0)
  {
    return self->_messagesAppUsageLevel;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsMailAppUsageLevel:(id)level
{
  levelCopy = level;
  if ([levelCopy isEqualToString:@"SGMAppUsageLevelNA"])
  {
    v4 = 0;
  }

  else if ([levelCopy isEqualToString:@"SGMAppUsageLevelLow"])
  {
    v4 = 1;
  }

  else if ([levelCopy isEqualToString:@"SGMAppUsageLevelMedium"])
  {
    v4 = 2;
  }

  else if ([levelCopy isEqualToString:@"SGMAppUsageLevelHigh"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMailAppUsageLevel:(BOOL)level
{
  if (level)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)mailAppUsageLevel
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_mailAppUsageLevel;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsLocationAdj:(id)adj
{
  adjCopy = adj;
  if ([adjCopy isEqualToString:@"SGMEventLocationAdjNA"])
  {
    v4 = 0;
  }

  else if ([adjCopy isEqualToString:@"SGMEventLocationAdjConfirmed"])
  {
    v4 = 1;
  }

  else if ([adjCopy isEqualToString:@"SGMEventLocationAdjModified"])
  {
    v4 = 2;
  }

  else if ([adjCopy isEqualToString:@"SGMEventLocationAdjAdded"])
  {
    v4 = 3;
  }

  else if ([adjCopy isEqualToString:@"SGMEventLocationAdjRemoved"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLocationAdj:(BOOL)adj
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

- (int)locationAdj
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_locationAdj;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDuraAdj:(id)adj
{
  adjCopy = adj;
  if ([adjCopy isEqualToString:@"SGMEventDurationAdjNA"])
  {
    v4 = 0;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDurationAdjConfirmed"])
  {
    v4 = 1;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDurationAdjLessThan30Min"])
  {
    v4 = 2;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDurationAdj30To60Min"])
  {
    v4 = 3;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDurationAdj1To2Hours"])
  {
    v4 = 4;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDurationAdjMoreThan2Hours"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDuraAdj:(BOOL)adj
{
  if (adj)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)duraAdj
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_duraAdj;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDateAdj:(id)adj
{
  adjCopy = adj;
  if ([adjCopy isEqualToString:@"SGMEventDateAdjNA"])
  {
    v4 = 0;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjConfirmed"])
  {
    v4 = 1;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjChangedDay"])
  {
    v4 = 2;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjSubTime2hPlus"])
  {
    v4 = 3;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjSubTime2h"])
  {
    v4 = 4;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjSubTime1h"])
  {
    v4 = 5;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjAddTime1h"])
  {
    v4 = 6;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjAddTime2h"])
  {
    v4 = 7;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjAddTime2hPlus"])
  {
    v4 = 8;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjChangedDayAndTime"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDateAdj:(BOOL)adj
{
  if (adj)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)dateAdj
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_dateAdj;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsTitleAdj:(id)adj
{
  adjCopy = adj;
  if ([adjCopy isEqualToString:@"SGMEventStringAdjNA"])
  {
    v4 = 0;
  }

  else if ([adjCopy isEqualToString:@"SGMEventStringAdjConfirmed"])
  {
    v4 = 1;
  }

  else if ([adjCopy isEqualToString:@"SGMEventStringAdjPrefixAdded"])
  {
    v4 = 2;
  }

  else if ([adjCopy isEqualToString:@"SGMEventStringAdjSuffixAdded"])
  {
    v4 = 3;
  }

  else if ([adjCopy isEqualToString:@"SGMEventStringAdjReplaced"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTitleAdj:(BOOL)adj
{
  if (adj)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (int)titleAdj
{
  if ((*&self->_has & 0x1000) != 0)
  {
    return self->_titleAdj;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsTitleSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"SGMEventTitleSourceNA"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"SGMEventTitleSourceSubject"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"SGMEventTitleSourceTemplate"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"SGMEventTitleSourceMLModel"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTitleSource:(BOOL)source
{
  if (source)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (int)titleSource
{
  if ((*&self->_has & 0x2000) != 0)
  {
    return self->_titleSource;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUsedBubblesCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (int)StringAsExtractionLevel:(id)level
{
  levelCopy = level;
  if ([levelCopy isEqualToString:@"SGMNLEventExtractionLevelNA"])
  {
    v4 = 0;
  }

  else if ([levelCopy isEqualToString:@"SGMNLEventExtractionLevelFullEvent"])
  {
    v4 = 1;
  }

  else if ([levelCopy isEqualToString:@"SGMNLEventExtractionLevelTypeOnly"])
  {
    v4 = 2;
  }

  else if ([levelCopy isEqualToString:@"SGMNLEventExtractionLevelNone"])
  {
    v4 = 3;
  }

  else if ([levelCopy isEqualToString:@"SGMNLEventExtractionLevelFullEventWithTitleGeneration"])
  {
    v4 = 4;
  }

  else if ([levelCopy isEqualToString:@"SGMNLEventExtractionLevelTypeOnlyWithTitleGeneration"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasExtractionLevel:(BOOL)level
{
  if (level)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)extractionLevel
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_extractionLevel;
  }

  else
  {
    return 0;
  }
}

- (void)setHasParticipantCount:(BOOL)count
{
  if (count)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (int)StringAsSignificantSender:(id)sender
{
  senderCopy = sender;
  if ([senderCopy isEqualToString:@"SGMBoolOptionFalse"])
  {
    v4 = 0;
  }

  else if ([senderCopy isEqualToString:@"SGMBoolOptionTrue"])
  {
    v4 = 1;
  }

  else if ([senderCopy isEqualToString:@"SGMBoolOptionNA"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSignificantSender:(BOOL)sender
{
  if (sender)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (int)significantSender
{
  if ((*&self->_has & 0x800) != 0)
  {
    return self->_significantSender;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConfidenceScore:(BOOL)score
{
  if (score)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasDaysFromStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)StringAsActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"SGMNLEventActionTypeDissected"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"SGMNLEventActionTypeHarvested"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SGMNLEventActionTypeFiltered"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"SGMNLEventActionTypeFound"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"SGMNLEventActionTypeShown"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"SGMNLEventActionTypeEngaged"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"SGMNLEventActionTypeConfirmed"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"SGMNLEventActionTypeRejected"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"SGMNLEventActionTypeDismissed"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)actionType
{
  if (*&self->_has)
  {
    return self->_actionType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsInterface:(id)interface
{
  interfaceCopy = interface;
  if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceSuggestd"])
  {
    v4 = 0;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMail"])
  {
    v4 = 1;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMailBanner"])
  {
    v4 = 2;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMailDDLink"])
  {
    v4 = 3;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMessages"])
  {
    v4 = 4;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMessagesBanner"])
  {
    v4 = 5;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMessagesDDLink"])
  {
    v4 = 6;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendar"])
  {
    v4 = 7;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarNotification"])
  {
    v4 = 8;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarInbox"])
  {
    v4 = 9;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarEventDetails"])
  {
    v4 = 10;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarCanvas"])
  {
    v4 = 11;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarWidget"])
  {
    v4 = 12;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarWidgetUpNext"])
  {
    v4 = 13;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarZKW"])
  {
    v4 = 14;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceCalendarAutocomplete"])
  {
    v4 = 15;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMaps"])
  {
    v4 = 16;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceMapsWidget"])
  {
    v4 = 17;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceTTLNotification"])
  {
    v4 = 18;
  }

  else if ([interfaceCopy isEqualToString:@"SGMNLEventInterfaceSpotlight"])
  {
    v4 = 19;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasInterface:(BOOL)interface
{
  if (interface)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int)interface
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_interface;
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
    return @"NLEventInBanner";
  }
}

@end