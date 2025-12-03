@interface SGMIMetricsRegexSignatureStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStats:(id)stats;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumberOfLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20:(BOOL)of20;
- (void)setHasNumberOfPredictedAttachmentOnLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20:(BOOL)of20;
- (void)setHasNumberOfPredictedAttachmentOnLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20:(BOOL)of20;
- (void)setHasTotalNumberOfEmailsProcessedForAttachmentDetectionRoundedToClosestMultipleOf20:(BOOL)of20;
- (void)setHasTotalNumberOfEmailsProcessedForFollowUpDetectionRoundedToClosestMultipleOf20:(BOOL)of20;
- (void)setHasTotalNumberOfEmailsProcessedForRecipientDetectionRoundedToClosestMultipleOf20:(BOOL)of20;
- (void)writeTo:(id)to;
@end

@implementation SGMIMetricsRegexSignatureStats

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  trialMetadata = self->_trialMetadata;
  v6 = *(fromCopy + 7);
  if (trialMetadata)
  {
    if (v6)
    {
      [(SGMIMetricsTrialMetadata *)trialMetadata mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SGMIMetricsRegexSignatureStats *)self setTrialMetadata:?];
  }

  if (*(fromCopy + 1))
  {
    [(SGMIMetricsRegexSignatureStats *)self setLocale:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(fromCopy + 4);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SGMIMetricsRegexSignatureStats *)self addStats:*(*(&v14 + 1) + 8 * i), v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *(fromCopy + 64);
  if ((v12 & 0x10) != 0)
  {
    self->_totalNumberOfEmailsProcessedForAttachmentDetectionRoundedToClosestMultipleOf20 = *(fromCopy + 10);
    *&self->_has |= 0x10u;
    v12 = *(fromCopy + 64);
    if ((v12 & 0x40) == 0)
    {
LABEL_17:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }
  }

  else if ((*(fromCopy + 64) & 0x40) == 0)
  {
    goto LABEL_17;
  }

  self->_totalNumberOfEmailsProcessedForRecipientDetectionRoundedToClosestMultipleOf20 = *(fromCopy + 12);
  *&self->_has |= 0x40u;
  v12 = *(fromCopy + 64);
  if ((v12 & 0x20) == 0)
  {
LABEL_18:
    if ((v12 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_totalNumberOfEmailsProcessedForFollowUpDetectionRoundedToClosestMultipleOf20 = *(fromCopy + 11);
  *&self->_has |= 0x20u;
  v12 = *(fromCopy + 64);
  if ((v12 & 4) == 0)
  {
LABEL_19:
    if ((v12 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_numberOfPredictedAttachmentOnLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20 = *(fromCopy + 6);
  *&self->_has |= 4u;
  v12 = *(fromCopy + 64);
  if ((v12 & 1) == 0)
  {
LABEL_20:
    if ((v12 & 8) == 0)
    {
      goto LABEL_21;
    }

LABEL_29:
    self->_numberOfPredictedAttachmentOnLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20 = *(fromCopy + 7);
    *&self->_has |= 8u;
    if ((*(fromCopy + 64) & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_28:
  self->_numberOfLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20 = *(fromCopy + 4);
  *&self->_has |= 1u;
  v12 = *(fromCopy + 64);
  if ((v12 & 8) != 0)
  {
    goto LABEL_29;
  }

LABEL_21:
  if ((v12 & 2) != 0)
  {
LABEL_22:
    self->_numberOfLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20 = *(fromCopy + 5);
    *&self->_has |= 2u;
  }

LABEL_23:

  v13 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v3 = [(SGMIMetricsTrialMetadata *)self->_trialMetadata hash];
  v4 = [(NSString *)self->_locale hash];
  v5 = [(NSMutableArray *)self->_stats hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v6 = 2654435761 * self->_totalNumberOfEmailsProcessedForAttachmentDetectionRoundedToClosestMultipleOf20;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_totalNumberOfEmailsProcessedForRecipientDetectionRoundedToClosestMultipleOf20;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v8 = 2654435761 * self->_totalNumberOfEmailsProcessedForFollowUpDetectionRoundedToClosestMultipleOf20;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v9 = 2654435761 * self->_numberOfPredictedAttachmentOnLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = 0;
  if (*&self->_has)
  {
LABEL_6:
    v10 = 2654435761 * self->_numberOfLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v11 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_13:
  v10 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v11 = 2654435761 * self->_numberOfPredictedAttachmentOnLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v12 = 2654435761 * self->_numberOfLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  trialMetadata = self->_trialMetadata;
  if (trialMetadata | *(equalCopy + 7))
  {
    if (![(SGMIMetricsTrialMetadata *)trialMetadata isEqual:?])
    {
      goto LABEL_42;
    }
  }

  locale = self->_locale;
  if (locale | *(equalCopy + 1))
  {
    if (![(NSString *)locale isEqual:?])
    {
      goto LABEL_42;
    }
  }

  stats = self->_stats;
  if (stats | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)stats isEqual:?])
    {
      goto LABEL_42;
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 64) & 0x10) == 0 || self->_totalNumberOfEmailsProcessedForAttachmentDetectionRoundedToClosestMultipleOf20 != *(equalCopy + 10))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 64) & 0x10) != 0)
  {
LABEL_42:
    v8 = 0;
    goto LABEL_43;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 64) & 0x40) == 0 || self->_totalNumberOfEmailsProcessedForRecipientDetectionRoundedToClosestMultipleOf20 != *(equalCopy + 12))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 64) & 0x40) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 64) & 0x20) == 0 || self->_totalNumberOfEmailsProcessedForFollowUpDetectionRoundedToClosestMultipleOf20 != *(equalCopy + 11))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 64) & 0x20) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_numberOfPredictedAttachmentOnLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20 != *(equalCopy + 6))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_42;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_numberOfLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20 != *(equalCopy + 4))
    {
      goto LABEL_42;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0 || self->_numberOfPredictedAttachmentOnLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20 != *(equalCopy + 7))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 64) & 8) != 0)
  {
    goto LABEL_42;
  }

  v8 = (*(equalCopy + 64) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_numberOfLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20 != *(equalCopy + 5))
    {
      goto LABEL_42;
    }

    v8 = 1;
  }

LABEL_43:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SGMIMetricsTrialMetadata *)self->_trialMetadata copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_locale copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_stats;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{zone, v19}];
        [v5 addStats:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 40) = self->_totalNumberOfEmailsProcessedForAttachmentDetectionRoundedToClosestMultipleOf20;
    *(v5 + 64) |= 0x10u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_10:
      if ((has & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 48) = self->_totalNumberOfEmailsProcessedForRecipientDetectionRoundedToClosestMultipleOf20;
  *(v5 + 64) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 44) = self->_totalNumberOfEmailsProcessedForFollowUpDetectionRoundedToClosestMultipleOf20;
  *(v5 + 64) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 24) = self->_numberOfPredictedAttachmentOnLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20;
  *(v5 + 64) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_22:
    *(v5 + 28) = self->_numberOfPredictedAttachmentOnLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20;
    *(v5 + 64) |= 8u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_21:
  *(v5 + 16) = self->_numberOfLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20;
  *(v5 + 64) |= 1u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  if ((has & 2) != 0)
  {
LABEL_15:
    *(v5 + 20) = self->_numberOfLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20;
    *(v5 + 64) |= 2u;
  }

LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_trialMetadata)
  {
    [toCopy setTrialMetadata:?];
  }

  if (self->_locale)
  {
    [toCopy setLocale:?];
  }

  if ([(SGMIMetricsRegexSignatureStats *)self statsCount])
  {
    [toCopy clearStats];
    statsCount = [(SGMIMetricsRegexSignatureStats *)self statsCount];
    if (statsCount)
    {
      v5 = statsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SGMIMetricsRegexSignatureStats *)self statsAtIndex:i];
        [toCopy addStats:v7];
      }
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(toCopy + 10) = self->_totalNumberOfEmailsProcessedForAttachmentDetectionRoundedToClosestMultipleOf20;
    *(toCopy + 64) |= 0x10u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_11:
      if ((has & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_11;
  }

  *(toCopy + 12) = self->_totalNumberOfEmailsProcessedForRecipientDetectionRoundedToClosestMultipleOf20;
  *(toCopy + 64) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(toCopy + 11) = self->_totalNumberOfEmailsProcessedForFollowUpDetectionRoundedToClosestMultipleOf20;
  *(toCopy + 64) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(toCopy + 6) = self->_numberOfPredictedAttachmentOnLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20;
  *(toCopy + 64) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(toCopy + 4) = self->_numberOfLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20;
  *(toCopy + 64) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_15:
    if ((has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_25:
  *(toCopy + 7) = self->_numberOfPredictedAttachmentOnLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20;
  *(toCopy + 64) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_16:
    *(toCopy + 5) = self->_numberOfLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20;
    *(toCopy + 64) |= 2u;
  }

LABEL_17:
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_trialMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_stats;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    totalNumberOfEmailsProcessedForAttachmentDetectionRoundedToClosestMultipleOf20 = self->_totalNumberOfEmailsProcessedForAttachmentDetectionRoundedToClosestMultipleOf20;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_14:
      if ((has & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_14;
  }

  totalNumberOfEmailsProcessedForRecipientDetectionRoundedToClosestMultipleOf20 = self->_totalNumberOfEmailsProcessedForRecipientDetectionRoundedToClosestMultipleOf20;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_15:
    if ((has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  totalNumberOfEmailsProcessedForFollowUpDetectionRoundedToClosestMultipleOf20 = self->_totalNumberOfEmailsProcessedForFollowUpDetectionRoundedToClosestMultipleOf20;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_16:
    if ((has & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  numberOfPredictedAttachmentOnLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20 = self->_numberOfPredictedAttachmentOnLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_17:
    if ((has & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    numberOfPredictedAttachmentOnLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20 = self->_numberOfPredictedAttachmentOnLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_25:
  numberOfLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20 = self->_numberOfLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  if ((has & 2) != 0)
  {
LABEL_19:
    numberOfLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20 = self->_numberOfLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20;
    PBDataWriterWriteUint32Field();
  }

LABEL_20:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  trialMetadata = self->_trialMetadata;
  if (trialMetadata)
  {
    dictionaryRepresentation = [(SGMIMetricsTrialMetadata *)trialMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"trialMetadata"];
  }

  locale = self->_locale;
  if (locale)
  {
    [dictionary setObject:locale forKey:@"locale"];
  }

  if ([(NSMutableArray *)self->_stats count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_stats, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = self->_stats;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation2];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"stats"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_totalNumberOfEmailsProcessedForAttachmentDetectionRoundedToClosestMultipleOf20];
    [dictionary setObject:v18 forKey:@"totalNumberOfEmailsProcessedForAttachmentDetectionRoundedToClosestMultipleOf20"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_16:
      if ((has & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_16;
  }

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_totalNumberOfEmailsProcessedForRecipientDetectionRoundedToClosestMultipleOf20, v24}];
  [dictionary setObject:v19 forKey:@"totalNumberOfEmailsProcessedForRecipientDetectionRoundedToClosestMultipleOf20"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_17:
    if ((has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_totalNumberOfEmailsProcessedForFollowUpDetectionRoundedToClosestMultipleOf20, v24}];
  [dictionary setObject:v20 forKey:@"totalNumberOfEmailsProcessedForFollowUpDetectionRoundedToClosestMultipleOf20"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_18:
    if ((has & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_numberOfPredictedAttachmentOnLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20, v24}];
  [dictionary setObject:v21 forKey:@"numberOfPredictedAttachmentOnLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_19:
    if ((has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_numberOfLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20, v24}];
  [dictionary setObject:v22 forKey:@"numberOfLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_20:
    if ((has & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_30:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_numberOfPredictedAttachmentOnLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20, v24}];
  [dictionary setObject:v23 forKey:@"numberOfPredictedAttachmentOnLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_21:
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_numberOfLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20, v24}];
    [dictionary setObject:v15 forKey:@"numberOfLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20"];
  }

LABEL_22:
  v16 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGMIMetricsRegexSignatureStats;
  v4 = [(SGMIMetricsRegexSignatureStats *)&v8 description];
  dictionaryRepresentation = [(SGMIMetricsRegexSignatureStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasNumberOfLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20:(BOOL)of20
{
  if (of20)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasNumberOfPredictedAttachmentOnLargeOutgoingMailsWithAttachmentRoundedToClosestMultipleOf20:(BOOL)of20
{
  if (of20)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumberOfPredictedAttachmentOnLargeIncomingMailsWithAttachmentRoundedToClosestMultipleOf20:(BOOL)of20
{
  if (of20)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTotalNumberOfEmailsProcessedForFollowUpDetectionRoundedToClosestMultipleOf20:(BOOL)of20
{
  if (of20)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTotalNumberOfEmailsProcessedForRecipientDetectionRoundedToClosestMultipleOf20:(BOOL)of20
{
  if (of20)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasTotalNumberOfEmailsProcessedForAttachmentDetectionRoundedToClosestMultipleOf20:(BOOL)of20
{
  if (of20)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addStats:(id)stats
{
  statsCopy = stats;
  stats = self->_stats;
  v8 = statsCopy;
  if (!stats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_stats;
    self->_stats = v6;

    statsCopy = v8;
    stats = self->_stats;
  }

  [(NSMutableArray *)stats addObject:statsCopy];
}

@end