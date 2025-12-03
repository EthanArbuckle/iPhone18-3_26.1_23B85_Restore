@interface SGMIMetricsUpdateProcessInformation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCtsJobConstraints:(id)constraints;
- (int)ctsJobConstraintsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasCumulatedSubmodelsRollbackForPostDeletionPolicyPerformanceInMilliSeconds:(BOOL)seconds;
- (void)setHasDaysAvailableDuringIncrementalUpdate:(BOOL)update;
- (void)setHasDaysProcessedDuringIncrementalUpdate:(BOOL)update;
- (void)setHasDeletedEmailsCount:(BOOL)count;
- (void)setHasDeletedTokensCountToComplyToCappingPolicy:(BOOL)policy;
- (void)setHasHoursSinceLastIncrementalUpdate:(BOOL)update;
- (void)setHasHoursSinceReference:(BOOL)reference;
- (void)setHasIsSubmodelRebuilt:(BOOL)rebuilt;
- (void)setHasMailsProcessedDuringIncrementalUpdate:(BOOL)update;
- (void)setHasRollbackedEmailsCountToComplyToPostDeletionPolicy:(BOOL)policy;
- (void)setHasRollbackedSlicesCountToComplyToPostDeletionPolicy:(BOOL)policy;
- (void)setHasSubmodelsPruningForCappingPolicyPerformanceInMilliSeconds:(BOOL)seconds;
- (void)setHasSubmodelsUpdatePerformanceInMilliSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation SGMIMetricsUpdateProcessInformation

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  trialMetadata = self->_trialMetadata;
  v6 = *(fromCopy + 15);
  v17 = fromCopy;
  if (trialMetadata)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SGMIMetricsTrialMetadata *)trialMetadata mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SGMIMetricsUpdateProcessInformation *)self setTrialMetadata:?];
  }

  fromCopy = v17;
LABEL_7:
  backgroundTrialMetadata = self->_backgroundTrialMetadata;
  v8 = *(fromCopy + 8);
  if (backgroundTrialMetadata)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(SGMIMetricsTrialMetadata *)backgroundTrialMetadata mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(SGMIMetricsUpdateProcessInformation *)self setBackgroundTrialMetadata:?];
  }

  fromCopy = v17;
LABEL_13:
  if ((*(fromCopy + 66) & 0x200) != 0)
  {
    self->_hoursSinceReference = *(fromCopy + 23);
    *&self->_has |= 0x200u;
  }

  ctsJobConstraintsCount = [fromCopy ctsJobConstraintsCount];
  if (ctsJobConstraintsCount)
  {
    v10 = ctsJobConstraintsCount;
    for (i = 0; i != v10; ++i)
    {
      -[SGMIMetricsUpdateProcessInformation addCtsJobConstraints:](self, "addCtsJobConstraints:", [v17 ctsJobConstraintsAtIndex:i]);
    }
  }

  v12 = v17;
  v13 = *(v17 + 66);
  if ((v13 & 0x100) != 0)
  {
    self->_hoursSinceLastIncrementalUpdate = *(v17 + 22);
    *&self->_has |= 0x100u;
    v13 = *(v17 + 66);
    if ((v13 & 0x2000) == 0)
    {
LABEL_20:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }
  }

  else if ((*(v17 + 66) & 0x2000) == 0)
  {
    goto LABEL_20;
  }

  self->_isSubmodelRebuilt = *(v17 + 128);
  *&self->_has |= 0x2000u;
  v13 = *(v17 + 66);
  if ((v13 & 0x10) == 0)
  {
LABEL_21:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_daysAvailableDuringIncrementalUpdate = *(v17 + 18);
  *&self->_has |= 0x10u;
  v13 = *(v17 + 66);
  if ((v13 & 0x20) == 0)
  {
LABEL_22:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_daysProcessedDuringIncrementalUpdate = *(v17 + 19);
  *&self->_has |= 0x20u;
  v13 = *(v17 + 66);
  if ((v13 & 0x400) == 0)
  {
LABEL_23:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_mailsProcessedDuringIncrementalUpdate = *(v17 + 24);
  *&self->_has |= 0x400u;
  v13 = *(v17 + 66);
  if ((v13 & 0x80) == 0)
  {
LABEL_24:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_deletedTokensCountToComplyToCappingPolicy = *(v17 + 21);
  *&self->_has |= 0x80u;
  v13 = *(v17 + 66);
  if ((v13 & 0x40) == 0)
  {
LABEL_25:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_deletedEmailsCount = *(v17 + 20);
  *&self->_has |= 0x40u;
  v13 = *(v17 + 66);
  if ((v13 & 0x1000) == 0)
  {
LABEL_26:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_38:
  self->_rollbackedSlicesCountToComplyToPostDeletionPolicy = *(v17 + 26);
  *&self->_has |= 0x1000u;
  if ((*(v17 + 66) & 0x800) != 0)
  {
LABEL_27:
    self->_rollbackedEmailsCountToComplyToPostDeletionPolicy = *(v17 + 25);
    *&self->_has |= 0x800u;
  }

LABEL_28:
  submodelsStats = self->_submodelsStats;
  v15 = *(v17 + 14);
  if (submodelsStats)
  {
    if (!v15)
    {
      goto LABEL_43;
    }

    [(SGMIMetricsSubmodelsStats *)submodelsStats mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_43;
    }

    [(SGMIMetricsUpdateProcessInformation *)self setSubmodelsStats:?];
  }

  v12 = v17;
LABEL_43:
  v16 = *(v12 + 66);
  if (v16)
  {
    self->_biomeAggregationPerformanceInMilliSeconds = *(v12 + 4);
    *&self->_has |= 1u;
    v16 = *(v12 + 66);
    if ((v16 & 8) == 0)
    {
LABEL_45:
      if ((v16 & 4) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_53;
    }
  }

  else if ((v16 & 8) == 0)
  {
    goto LABEL_45;
  }

  self->_submodelsUpdatePerformanceInMilliSeconds = *(v12 + 7);
  *&self->_has |= 8u;
  v16 = *(v12 + 66);
  if ((v16 & 4) == 0)
  {
LABEL_46:
    if ((v16 & 2) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_53:
  self->_submodelsPruningForCappingPolicyPerformanceInMilliSeconds = *(v12 + 6);
  *&self->_has |= 4u;
  if ((*(v12 + 66) & 2) != 0)
  {
LABEL_47:
    self->_cumulatedSubmodelsRollbackForPostDeletionPolicyPerformanceInMilliSeconds = *(v12 + 5);
    *&self->_has |= 2u;
  }

LABEL_48:

  MEMORY[0x2821F96F8]();
}

- (unint64_t)hash
{
  v24 = [(SGMIMetricsTrialMetadata *)self->_trialMetadata hash];
  v23 = [(SGMIMetricsTrialMetadata *)self->_backgroundTrialMetadata hash];
  if ((*&self->_has & 0x200) != 0)
  {
    v22 = 2654435761 * self->_hoursSinceReference;
  }

  else
  {
    v22 = 0;
  }

  v21 = PBRepeatedInt32Hash();
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v20 = 2654435761 * self->_hoursSinceLastIncrementalUpdate;
    if ((*&self->_has & 0x2000) != 0)
    {
LABEL_6:
      v18 = 2654435761 * self->_isSubmodelRebuilt;
      if ((has & 0x10) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v20 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_6;
    }
  }

  v18 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v4 = 2654435761 * self->_daysAvailableDuringIncrementalUpdate;
    if ((has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_8:
    v5 = 2654435761 * self->_daysProcessedDuringIncrementalUpdate;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_9:
    v6 = 2654435761 * self->_mailsProcessedDuringIncrementalUpdate;
    if ((has & 0x80) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_10:
    v7 = 2654435761 * self->_deletedTokensCountToComplyToCappingPolicy;
    if ((has & 0x40) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_11:
    v8 = 2654435761 * self->_deletedEmailsCount;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v9 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_20:
  v8 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v9 = 2654435761 * self->_rollbackedSlicesCountToComplyToPostDeletionPolicy;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_13:
    v10 = 2654435761 * self->_rollbackedEmailsCountToComplyToPostDeletionPolicy;
    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
LABEL_23:
  v11 = [(SGMIMetricsSubmodelsStats *)self->_submodelsStats hash];
  v12 = self->_has;
  if (v12)
  {
    v13 = 2654435761u * self->_biomeAggregationPerformanceInMilliSeconds;
    if ((v12 & 8) != 0)
    {
LABEL_25:
      v14 = 2654435761u * self->_submodelsUpdatePerformanceInMilliSeconds;
      if ((v12 & 4) != 0)
      {
        goto LABEL_26;
      }

LABEL_30:
      v15 = 0;
      if ((v12 & 2) != 0)
      {
        goto LABEL_27;
      }

LABEL_31:
      v16 = 0;
      return v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v19 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16;
    }
  }

  else
  {
    v13 = 0;
    if ((v12 & 8) != 0)
    {
      goto LABEL_25;
    }
  }

  v14 = 0;
  if ((v12 & 4) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  v15 = 2654435761u * self->_submodelsPruningForCappingPolicyPerformanceInMilliSeconds;
  if ((v12 & 2) == 0)
  {
    goto LABEL_31;
  }

LABEL_27:
  v16 = 2654435761u * self->_cumulatedSubmodelsRollbackForPostDeletionPolicyPerformanceInMilliSeconds;
  return v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v19 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_83;
  }

  trialMetadata = self->_trialMetadata;
  if (trialMetadata | *(equalCopy + 15))
  {
    if (![(SGMIMetricsTrialMetadata *)trialMetadata isEqual:?])
    {
      goto LABEL_83;
    }
  }

  backgroundTrialMetadata = self->_backgroundTrialMetadata;
  if (backgroundTrialMetadata | *(equalCopy + 8))
  {
    if (![(SGMIMetricsTrialMetadata *)backgroundTrialMetadata isEqual:?])
    {
      goto LABEL_83;
    }
  }

  v7 = *(equalCopy + 66);
  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 66) & 0x200) == 0 || self->_hoursSinceReference != *(equalCopy + 23))
    {
      goto LABEL_83;
    }
  }

  else if ((*(equalCopy + 66) & 0x200) != 0)
  {
    goto LABEL_83;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_83;
  }

  has = self->_has;
  v9 = *(equalCopy + 66);
  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 66) & 0x100) == 0 || self->_hoursSinceLastIncrementalUpdate != *(equalCopy + 22))
    {
      goto LABEL_83;
    }
  }

  else if ((*(equalCopy + 66) & 0x100) != 0)
  {
    goto LABEL_83;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equalCopy + 66) & 0x2000) == 0)
    {
      goto LABEL_83;
    }

    v10 = *(equalCopy + 128);
    if (self->_isSubmodelRebuilt)
    {
      if ((*(equalCopy + 128) & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    else if (*(equalCopy + 128))
    {
      goto LABEL_83;
    }
  }

  else if ((*(equalCopy + 66) & 0x2000) != 0)
  {
    goto LABEL_83;
  }

  if ((has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_daysAvailableDuringIncrementalUpdate != *(equalCopy + 18))
    {
      goto LABEL_83;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_83;
  }

  if ((has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_daysProcessedDuringIncrementalUpdate != *(equalCopy + 19))
    {
      goto LABEL_83;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    goto LABEL_83;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 66) & 0x400) == 0 || self->_mailsProcessedDuringIncrementalUpdate != *(equalCopy + 24))
    {
      goto LABEL_83;
    }
  }

  else if ((*(equalCopy + 66) & 0x400) != 0)
  {
    goto LABEL_83;
  }

  if ((has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0 || self->_deletedTokensCountToComplyToCappingPolicy != *(equalCopy + 21))
    {
      goto LABEL_83;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_83;
  }

  if ((has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_deletedEmailsCount != *(equalCopy + 20))
    {
      goto LABEL_83;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_83;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 66) & 0x1000) == 0 || self->_rollbackedSlicesCountToComplyToPostDeletionPolicy != *(equalCopy + 26))
    {
      goto LABEL_83;
    }
  }

  else if ((*(equalCopy + 66) & 0x1000) != 0)
  {
    goto LABEL_83;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 66) & 0x800) == 0 || self->_rollbackedEmailsCountToComplyToPostDeletionPolicy != *(equalCopy + 25))
    {
      goto LABEL_83;
    }
  }

  else if ((*(equalCopy + 66) & 0x800) != 0)
  {
    goto LABEL_83;
  }

  submodelsStats = self->_submodelsStats;
  if (submodelsStats | *(equalCopy + 14))
  {
    if ([(SGMIMetricsSubmodelsStats *)submodelsStats isEqual:?])
    {
      has = self->_has;
      v9 = *(equalCopy + 66);
      goto LABEL_63;
    }

LABEL_83:
    v12 = 0;
    goto LABEL_84;
  }

LABEL_63:
  if (has)
  {
    if ((v9 & 1) == 0 || self->_biomeAggregationPerformanceInMilliSeconds != *(equalCopy + 4))
    {
      goto LABEL_83;
    }
  }

  else if (v9)
  {
    goto LABEL_83;
  }

  if ((has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_submodelsUpdatePerformanceInMilliSeconds != *(equalCopy + 7))
    {
      goto LABEL_83;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_83;
  }

  if ((has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_submodelsPruningForCappingPolicyPerformanceInMilliSeconds != *(equalCopy + 6))
    {
      goto LABEL_83;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_83;
  }

  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_cumulatedSubmodelsRollbackForPostDeletionPolicyPerformanceInMilliSeconds != *(equalCopy + 5))
    {
      goto LABEL_83;
    }

    v12 = 1;
  }

  else
  {
    v12 = (v9 & 2) == 0;
  }

LABEL_84:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SGMIMetricsTrialMetadata *)self->_trialMetadata copyWithZone:zone];
  v7 = *(v5 + 120);
  *(v5 + 120) = v6;

  v8 = [(SGMIMetricsTrialMetadata *)self->_backgroundTrialMetadata copyWithZone:zone];
  v9 = *(v5 + 64);
  *(v5 + 64) = v8;

  if ((*&self->_has & 0x200) != 0)
  {
    *(v5 + 92) = self->_hoursSinceReference;
    *(v5 + 132) |= 0x200u;
  }

  PBRepeatedInt32Copy();
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(v5 + 88) = self->_hoursSinceLastIncrementalUpdate;
    *(v5 + 132) |= 0x100u;
    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 128) = self->_isSubmodelRebuilt;
  *(v5 + 132) |= 0x2000u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 72) = self->_daysAvailableDuringIncrementalUpdate;
  *(v5 + 132) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 76) = self->_daysProcessedDuringIncrementalUpdate;
  *(v5 + 132) |= 0x20u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 96) = self->_mailsProcessedDuringIncrementalUpdate;
  *(v5 + 132) |= 0x400u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 84) = self->_deletedTokensCountToComplyToCappingPolicy;
  *(v5 + 132) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 80) = self->_deletedEmailsCount;
  *(v5 + 132) |= 0x40u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_26:
  *(v5 + 104) = self->_rollbackedSlicesCountToComplyToPostDeletionPolicy;
  *(v5 + 132) |= 0x1000u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_12:
    *(v5 + 100) = self->_rollbackedEmailsCountToComplyToPostDeletionPolicy;
    *(v5 + 132) |= 0x800u;
  }

LABEL_13:
  v11 = [(SGMIMetricsSubmodelsStats *)self->_submodelsStats copyWithZone:zone];
  v12 = *(v5 + 112);
  *(v5 + 112) = v11;

  v13 = self->_has;
  if (v13)
  {
    *(v5 + 32) = self->_biomeAggregationPerformanceInMilliSeconds;
    *(v5 + 132) |= 1u;
    v13 = self->_has;
    if ((v13 & 8) == 0)
    {
LABEL_15:
      if ((v13 & 4) == 0)
      {
        goto LABEL_16;
      }

LABEL_30:
      *(v5 + 48) = self->_submodelsPruningForCappingPolicyPerformanceInMilliSeconds;
      *(v5 + 132) |= 4u;
      if ((*&self->_has & 2) == 0)
      {
        return v5;
      }

      goto LABEL_17;
    }
  }

  else if ((v13 & 8) == 0)
  {
    goto LABEL_15;
  }

  *(v5 + 56) = self->_submodelsUpdatePerformanceInMilliSeconds;
  *(v5 + 132) |= 8u;
  v13 = self->_has;
  if ((v13 & 4) != 0)
  {
    goto LABEL_30;
  }

LABEL_16:
  if ((v13 & 2) != 0)
  {
LABEL_17:
    *(v5 + 40) = self->_cumulatedSubmodelsRollbackForPostDeletionPolicyPerformanceInMilliSeconds;
    *(v5 + 132) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if (self->_trialMetadata)
  {
    [toCopy setTrialMetadata:?];
    toCopy = v11;
  }

  if (self->_backgroundTrialMetadata)
  {
    [v11 setBackgroundTrialMetadata:?];
    toCopy = v11;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    *(toCopy + 23) = self->_hoursSinceReference;
    *(toCopy + 66) |= 0x200u;
  }

  if ([(SGMIMetricsUpdateProcessInformation *)self ctsJobConstraintsCount])
  {
    [v11 clearCtsJobConstraints];
    ctsJobConstraintsCount = [(SGMIMetricsUpdateProcessInformation *)self ctsJobConstraintsCount];
    if (ctsJobConstraintsCount)
    {
      v6 = ctsJobConstraintsCount;
      for (i = 0; i != v6; ++i)
      {
        [v11 addCtsJobConstraints:{-[SGMIMetricsUpdateProcessInformation ctsJobConstraintsAtIndex:](self, "ctsJobConstraintsAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  v9 = v11;
  if ((has & 0x100) != 0)
  {
    *(v11 + 22) = self->_hoursSinceLastIncrementalUpdate;
    *(v11 + 66) |= 0x100u;
    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_13:
      if ((has & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_13;
  }

  *(v11 + 128) = self->_isSubmodelRebuilt;
  *(v11 + 66) |= 0x2000u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v11 + 18) = self->_daysAvailableDuringIncrementalUpdate;
  *(v11 + 66) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v11 + 19) = self->_daysProcessedDuringIncrementalUpdate;
  *(v11 + 66) |= 0x20u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_16:
    if ((has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v11 + 24) = self->_mailsProcessedDuringIncrementalUpdate;
  *(v11 + 66) |= 0x400u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_17:
    if ((has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v11 + 21) = self->_deletedTokensCountToComplyToCappingPolicy;
  *(v11 + 66) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_18:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v11 + 20) = self->_deletedEmailsCount;
  *(v11 + 66) |= 0x40u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_19:
    if ((has & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_38:
  *(v11 + 26) = self->_rollbackedSlicesCountToComplyToPostDeletionPolicy;
  *(v11 + 66) |= 0x1000u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_20:
    *(v11 + 25) = self->_rollbackedEmailsCountToComplyToPostDeletionPolicy;
    *(v11 + 66) |= 0x800u;
  }

LABEL_21:
  if (self->_submodelsStats)
  {
    [v11 setSubmodelsStats:?];
    v9 = v11;
  }

  v10 = self->_has;
  if (v10)
  {
    v9[4] = self->_biomeAggregationPerformanceInMilliSeconds;
    *(v9 + 66) |= 1u;
    v10 = self->_has;
    if ((v10 & 8) == 0)
    {
LABEL_25:
      if ((v10 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_42;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_25;
  }

  v9[7] = self->_submodelsUpdatePerformanceInMilliSeconds;
  *(v9 + 66) |= 8u;
  v10 = self->_has;
  if ((v10 & 4) == 0)
  {
LABEL_26:
    if ((v10 & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_42:
  v9[6] = self->_submodelsPruningForCappingPolicyPerformanceInMilliSeconds;
  *(v9 + 66) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_27:
    v9[5] = self->_cumulatedSubmodelsRollbackForPostDeletionPolicyPerformanceInMilliSeconds;
    *(v9 + 66) |= 2u;
  }

LABEL_28:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v23 = toCopy;
  if (self->_trialMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v23;
  }

  if (self->_backgroundTrialMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v23;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    hoursSinceReference = self->_hoursSinceReference;
    PBDataWriterWriteUint32Field();
    toCopy = v23;
  }

  if (self->_ctsJobConstraints.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_ctsJobConstraints.list[v6];
      PBDataWriterWriteInt32Field();
      toCopy = v23;
      ++v6;
    }

    while (v6 < self->_ctsJobConstraints.count);
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    hoursSinceLastIncrementalUpdate = self->_hoursSinceLastIncrementalUpdate;
    PBDataWriterWriteUint32Field();
    toCopy = v23;
    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_12:
      if ((has & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_12;
  }

  isSubmodelRebuilt = self->_isSubmodelRebuilt;
  PBDataWriterWriteBOOLField();
  toCopy = v23;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  daysAvailableDuringIncrementalUpdate = self->_daysAvailableDuringIncrementalUpdate;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_14:
    if ((has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  daysProcessedDuringIncrementalUpdate = self->_daysProcessedDuringIncrementalUpdate;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  mailsProcessedDuringIncrementalUpdate = self->_mailsProcessedDuringIncrementalUpdate;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_16:
    if ((has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  deletedTokensCountToComplyToCappingPolicy = self->_deletedTokensCountToComplyToCappingPolicy;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_17:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  deletedEmailsCount = self->_deletedEmailsCount;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_18:
    if ((has & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_37:
  rollbackedSlicesCountToComplyToPostDeletionPolicy = self->_rollbackedSlicesCountToComplyToPostDeletionPolicy;
  PBDataWriterWriteUint32Field();
  toCopy = v23;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_19:
    rollbackedEmailsCountToComplyToPostDeletionPolicy = self->_rollbackedEmailsCountToComplyToPostDeletionPolicy;
    PBDataWriterWriteUint32Field();
    toCopy = v23;
  }

LABEL_20:
  if (self->_submodelsStats)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v23;
  }

  v10 = self->_has;
  if (v10)
  {
    biomeAggregationPerformanceInMilliSeconds = self->_biomeAggregationPerformanceInMilliSeconds;
    PBDataWriterWriteUint64Field();
    toCopy = v23;
    v10 = self->_has;
    if ((v10 & 8) == 0)
    {
LABEL_24:
      if ((v10 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_41;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_24;
  }

  submodelsUpdatePerformanceInMilliSeconds = self->_submodelsUpdatePerformanceInMilliSeconds;
  PBDataWriterWriteUint64Field();
  toCopy = v23;
  v10 = self->_has;
  if ((v10 & 4) == 0)
  {
LABEL_25:
    if ((v10 & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_41:
  submodelsPruningForCappingPolicyPerformanceInMilliSeconds = self->_submodelsPruningForCappingPolicyPerformanceInMilliSeconds;
  PBDataWriterWriteUint64Field();
  toCopy = v23;
  if ((*&self->_has & 2) != 0)
  {
LABEL_26:
    cumulatedSubmodelsRollbackForPostDeletionPolicyPerformanceInMilliSeconds = self->_cumulatedSubmodelsRollbackForPostDeletionPolicyPerformanceInMilliSeconds;
    PBDataWriterWriteUint64Field();
    toCopy = v23;
  }

LABEL_27:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  trialMetadata = self->_trialMetadata;
  if (trialMetadata)
  {
    dictionaryRepresentation = [(SGMIMetricsTrialMetadata *)trialMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"trialMetadata"];
  }

  backgroundTrialMetadata = self->_backgroundTrialMetadata;
  if (backgroundTrialMetadata)
  {
    dictionaryRepresentation2 = [(SGMIMetricsTrialMetadata *)backgroundTrialMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"backgroundTrialMetadata"];
  }

  if ((*&self->_has & 0x200) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hoursSinceReference];
    [dictionary setObject:v8 forKey:@"hoursSinceReference"];
  }

  p_ctsJobConstraints = &self->_ctsJobConstraints;
  if (self->_ctsJobConstraints.count)
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_ctsJobConstraints.count)
    {
      v11 = 0;
      do
      {
        v12 = p_ctsJobConstraints->list[v11] - 1;
        if (v12 >= 0x11)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_ctsJobConstraints->list[v11]];
        }

        else
        {
          v13 = off_27894B208[v12];
        }

        [v10 addObject:v13];

        ++v11;
      }

      while (v11 < self->_ctsJobConstraints.count);
    }

    [dictionary setObject:v10 forKey:@"ctsJobConstraints"];
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hoursSinceLastIncrementalUpdate];
    [dictionary setObject:v21 forKey:@"hoursSinceLastIncrementalUpdate"];

    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_17:
      if ((has & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_37;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_17;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSubmodelRebuilt];
  [dictionary setObject:v22 forKey:@"isSubmodelRebuilt"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_18:
    if ((has & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_daysAvailableDuringIncrementalUpdate];
  [dictionary setObject:v23 forKey:@"daysAvailableDuringIncrementalUpdate"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_19:
    if ((has & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_daysProcessedDuringIncrementalUpdate];
  [dictionary setObject:v24 forKey:@"daysProcessedDuringIncrementalUpdate"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_20:
    if ((has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_mailsProcessedDuringIncrementalUpdate];
  [dictionary setObject:v25 forKey:@"mailsProcessedDuringIncrementalUpdate"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_21:
    if ((has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_deletedTokensCountToComplyToCappingPolicy];
  [dictionary setObject:v26 forKey:@"deletedTokensCountToComplyToCappingPolicy"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_22:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_deletedEmailsCount];
  [dictionary setObject:v27 forKey:@"deletedEmailsCount"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_23:
    if ((has & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_42:
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rollbackedSlicesCountToComplyToPostDeletionPolicy];
  [dictionary setObject:v28 forKey:@"rollbackedSlicesCountToComplyToPostDeletionPolicy"];

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_24:
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rollbackedEmailsCountToComplyToPostDeletionPolicy];
    [dictionary setObject:v15 forKey:@"rollbackedEmailsCountToComplyToPostDeletionPolicy"];
  }

LABEL_25:
  submodelsStats = self->_submodelsStats;
  if (submodelsStats)
  {
    dictionaryRepresentation3 = [(SGMIMetricsSubmodelsStats *)submodelsStats dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"submodelsStats"];
  }

  v18 = self->_has;
  if (v18)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_biomeAggregationPerformanceInMilliSeconds];
    [dictionary setObject:v29 forKey:@"biomeAggregationPerformanceInMilliSeconds"];

    v18 = self->_has;
    if ((v18 & 8) == 0)
    {
LABEL_29:
      if ((v18 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_46;
    }
  }

  else if ((v18 & 8) == 0)
  {
    goto LABEL_29;
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_submodelsUpdatePerformanceInMilliSeconds];
  [dictionary setObject:v30 forKey:@"submodelsUpdatePerformanceInMilliSeconds"];

  v18 = self->_has;
  if ((v18 & 4) == 0)
  {
LABEL_30:
    if ((v18 & 2) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_46:
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_submodelsPruningForCappingPolicyPerformanceInMilliSeconds];
  [dictionary setObject:v31 forKey:@"submodelsPruningForCappingPolicyPerformanceInMilliSeconds"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_31:
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_cumulatedSubmodelsRollbackForPostDeletionPolicyPerformanceInMilliSeconds];
    [dictionary setObject:v19 forKey:@"cumulatedSubmodelsRollbackForPostDeletionPolicyPerformanceInMilliSeconds"];
  }

LABEL_32:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGMIMetricsUpdateProcessInformation;
  v4 = [(SGMIMetricsUpdateProcessInformation *)&v8 description];
  dictionaryRepresentation = [(SGMIMetricsUpdateProcessInformation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasCumulatedSubmodelsRollbackForPostDeletionPolicyPerformanceInMilliSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSubmodelsPruningForCappingPolicyPerformanceInMilliSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasSubmodelsUpdatePerformanceInMilliSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRollbackedEmailsCountToComplyToPostDeletionPolicy:(BOOL)policy
{
  if (policy)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasRollbackedSlicesCountToComplyToPostDeletionPolicy:(BOOL)policy
{
  if (policy)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasDeletedEmailsCount:(BOOL)count
{
  if (count)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasDeletedTokensCountToComplyToCappingPolicy:(BOOL)policy
{
  if (policy)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasMailsProcessedDuringIncrementalUpdate:(BOOL)update
{
  if (update)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasDaysProcessedDuringIncrementalUpdate:(BOOL)update
{
  if (update)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasDaysAvailableDuringIncrementalUpdate:(BOOL)update
{
  if (update)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsSubmodelRebuilt:(BOOL)rebuilt
{
  if (rebuilt)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasHoursSinceLastIncrementalUpdate:(BOOL)update
{
  if (update)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)StringAsCtsJobConstraints:(id)constraints
{
  constraintsCopy = constraints;
  if ([constraintsCopy isEqualToString:@"CancelAfterDeadline"])
  {
    v4 = 1;
  }

  else if ([constraintsCopy isEqualToString:@"CpuIntensive"])
  {
    v4 = 2;
  }

  else if ([constraintsCopy isEqualToString:@"DiskIntensive"])
  {
    v4 = 3;
  }

  else if ([constraintsCopy isEqualToString:@"StartHandler"])
  {
    v4 = 4;
  }

  else if ([constraintsCopy isEqualToString:@"SuspendHandler"])
  {
    v4 = 5;
  }

  else if ([constraintsCopy isEqualToString:@"MemoryIntensive"])
  {
    v4 = 6;
  }

  else if ([constraintsCopy isEqualToString:@"SchedulingPriorityBackground"])
  {
    v4 = 7;
  }

  else if ([constraintsCopy isEqualToString:@"SchedulingPriorityDefault"])
  {
    v4 = 8;
  }

  else if ([constraintsCopy isEqualToString:@"SchedulingPriorityMaintenance"])
  {
    v4 = 9;
  }

  else if ([constraintsCopy isEqualToString:@"SchedulingPriorityUtility"])
  {
    v4 = 10;
  }

  else if ([constraintsCopy isEqualToString:@"SchedulingPriorityUserInitiated"])
  {
    v4 = 11;
  }

  else if ([constraintsCopy isEqualToString:@"SchedulingPriorityUserInitiatedOvercommit"])
  {
    v4 = 12;
  }

  else if ([constraintsCopy isEqualToString:@"RequestsApplicationLaunch"])
  {
    v4 = 13;
  }

  else if ([constraintsCopy isEqualToString:@"RequiresInexpensiveNetworking"])
  {
    v4 = 14;
  }

  else if ([constraintsCopy isEqualToString:@"RequiresNetwork"])
  {
    v4 = 15;
  }

  else if ([constraintsCopy isEqualToString:@"RequiresPlugin"])
  {
    v4 = 16;
  }

  else if ([constraintsCopy isEqualToString:@"TriggersRestart"])
  {
    v4 = 17;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)ctsJobConstraintsAtIndex:(unint64_t)index
{
  p_ctsJobConstraints = &self->_ctsJobConstraints;
  count = self->_ctsJobConstraints.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_ctsJobConstraints->list[index];
}

- (void)setHasHoursSinceReference:(BOOL)reference
{
  if (reference)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = SGMIMetricsUpdateProcessInformation;
  [(SGMIMetricsUpdateProcessInformation *)&v3 dealloc];
}

@end