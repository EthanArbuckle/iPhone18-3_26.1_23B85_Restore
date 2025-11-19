@interface SGMIMetricsSubmodelsStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGMIMetricsSubmodelsStats

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  personFromSenderStats = self->_personFromSenderStats;
  v31 = v4;
  v6 = v4[9];
  if (personFromSenderStats)
  {
    if (v6)
    {
      [(SGMIMetricsSubmodelStats *)personFromSenderStats mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SGMIMetricsSubmodelsStats *)self setPersonFromSenderStats:?];
  }

  personFromSenderInDyadicConversationStats = self->_personFromSenderInDyadicConversationStats;
  v8 = v31[8];
  if (personFromSenderInDyadicConversationStats)
  {
    if (v8)
    {
      [(SGMIMetricsSubmodelStats *)personFromSenderInDyadicConversationStats mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SGMIMetricsSubmodelsStats *)self setPersonFromSenderInDyadicConversationStats:?];
  }

  subjectContentStats = self->_subjectContentStats;
  v10 = v31[12];
  if (subjectContentStats)
  {
    if (v10)
    {
      [(SGMIMetricsSubmodelStats *)subjectContentStats mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SGMIMetricsSubmodelsStats *)self setSubjectContentStats:?];
  }

  personToRecipientsStats = self->_personToRecipientsStats;
  v12 = v31[10];
  if (personToRecipientsStats)
  {
    if (v12)
    {
      [(SGMIMetricsSubmodelStats *)personToRecipientsStats mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(SGMIMetricsSubmodelsStats *)self setPersonToRecipientsStats:?];
  }

  personCCRecipientsStats = self->_personCCRecipientsStats;
  v14 = v31[7];
  if (personCCRecipientsStats)
  {
    if (v14)
    {
      [(SGMIMetricsSubmodelStats *)personCCRecipientsStats mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(SGMIMetricsSubmodelsStats *)self setPersonCCRecipientsStats:?];
  }

  domainFromSenderStats = self->_domainFromSenderStats;
  v16 = v31[3];
  if (domainFromSenderStats)
  {
    if (v16)
    {
      [(SGMIMetricsSubmodelStats *)domainFromSenderStats mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(SGMIMetricsSubmodelsStats *)self setDomainFromSenderStats:?];
  }

  conversationStats = self->_conversationStats;
  v18 = v31[2];
  if (conversationStats)
  {
    if (v18)
    {
      [(SGMIMetricsSubmodelStats *)conversationStats mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(SGMIMetricsSubmodelsStats *)self setConversationStats:?];
  }

  listIdStats = self->_listIdStats;
  v20 = v31[4];
  if (listIdStats)
  {
    if (v20)
    {
      [(SGMIMetricsSubmodelStats *)listIdStats mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(SGMIMetricsSubmodelsStats *)self setListIdStats:?];
  }

  attachmentsStats = self->_attachmentsStats;
  v22 = v31[1];
  if (attachmentsStats)
  {
    if (v22)
    {
      [(SGMIMetricsSubmodelStats *)attachmentsStats mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(SGMIMetricsSubmodelsStats *)self setAttachmentsStats:?];
  }

  subjectCountStatsStats = self->_subjectCountStatsStats;
  v24 = v31[13];
  if (subjectCountStatsStats)
  {
    if (v24)
    {
      [(SGMIMetricsSubmodelStats *)subjectCountStatsStats mergeFrom:?];
    }
  }

  else if (v24)
  {
    [(SGMIMetricsSubmodelsStats *)self setSubjectCountStatsStats:?];
  }

  standardMailRulesStats = self->_standardMailRulesStats;
  v26 = v31[11];
  if (standardMailRulesStats)
  {
    if (v26)
    {
      [(SGMIMetricsSubmodelStats *)standardMailRulesStats mergeFrom:?];
    }
  }

  else if (v26)
  {
    [(SGMIMetricsSubmodelsStats *)self setStandardMailRulesStats:?];
  }

  mailboxStats = self->_mailboxStats;
  v28 = v31[5];
  if (mailboxStats)
  {
    if (v28)
    {
      [(SGMIMetricsSubmodelStats *)mailboxStats mergeFrom:?];
    }
  }

  else if (v28)
  {
    [(SGMIMetricsSubmodelsStats *)self setMailboxStats:?];
  }

  mailboxTypeStats = self->_mailboxTypeStats;
  v30 = v31[6];
  if (mailboxTypeStats)
  {
    if (v30)
    {
      [(SGMIMetricsSubmodelStats *)mailboxTypeStats mergeFrom:?];
    }
  }

  else if (v30)
  {
    [(SGMIMetricsSubmodelsStats *)self setMailboxTypeStats:?];
  }
}

- (unint64_t)hash
{
  v3 = [(SGMIMetricsSubmodelStats *)self->_personFromSenderStats hash];
  v4 = [(SGMIMetricsSubmodelStats *)self->_personFromSenderInDyadicConversationStats hash]^ v3;
  v5 = [(SGMIMetricsSubmodelStats *)self->_subjectContentStats hash];
  v6 = v4 ^ v5 ^ [(SGMIMetricsSubmodelStats *)self->_personToRecipientsStats hash];
  v7 = [(SGMIMetricsSubmodelStats *)self->_personCCRecipientsStats hash];
  v8 = v7 ^ [(SGMIMetricsSubmodelStats *)self->_domainFromSenderStats hash];
  v9 = v6 ^ v8 ^ [(SGMIMetricsSubmodelStats *)self->_conversationStats hash];
  v10 = [(SGMIMetricsSubmodelStats *)self->_listIdStats hash];
  v11 = v10 ^ [(SGMIMetricsSubmodelStats *)self->_attachmentsStats hash];
  v12 = v11 ^ [(SGMIMetricsSubmodelStats *)self->_subjectCountStatsStats hash];
  v13 = v9 ^ v12 ^ [(SGMIMetricsSubmodelStats *)self->_standardMailRulesStats hash];
  v14 = [(SGMIMetricsSubmodelStats *)self->_mailboxStats hash];
  return v13 ^ v14 ^ [(SGMIMetricsSubmodelStats *)self->_mailboxTypeStats hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  personFromSenderStats = self->_personFromSenderStats;
  if (personFromSenderStats | v4[9])
  {
    if (![(SGMIMetricsSubmodelStats *)personFromSenderStats isEqual:?])
    {
      goto LABEL_28;
    }
  }

  personFromSenderInDyadicConversationStats = self->_personFromSenderInDyadicConversationStats;
  if (personFromSenderInDyadicConversationStats | v4[8] && ![(SGMIMetricsSubmodelStats *)personFromSenderInDyadicConversationStats isEqual:?])
  {
    goto LABEL_28;
  }

  subjectContentStats = self->_subjectContentStats;
  if (subjectContentStats | v4[12] && ![(SGMIMetricsSubmodelStats *)subjectContentStats isEqual:?])
  {
    goto LABEL_28;
  }

  personToRecipientsStats = self->_personToRecipientsStats;
  if (personToRecipientsStats | v4[10] && ![(SGMIMetricsSubmodelStats *)personToRecipientsStats isEqual:?])
  {
    goto LABEL_28;
  }

  personCCRecipientsStats = self->_personCCRecipientsStats;
  if (personCCRecipientsStats | v4[7] && ![(SGMIMetricsSubmodelStats *)personCCRecipientsStats isEqual:?])
  {
    goto LABEL_28;
  }

  if (((domainFromSenderStats = self->_domainFromSenderStats, !(domainFromSenderStats | v4[3])) || [(SGMIMetricsSubmodelStats *)domainFromSenderStats isEqual:?]) && ((conversationStats = self->_conversationStats, !(conversationStats | v4[2])) || [(SGMIMetricsSubmodelStats *)conversationStats isEqual:?]) && ((listIdStats = self->_listIdStats, !(listIdStats | v4[4])) || [(SGMIMetricsSubmodelStats *)listIdStats isEqual:?]) && ((attachmentsStats = self->_attachmentsStats, !(attachmentsStats | v4[1])) || [(SGMIMetricsSubmodelStats *)attachmentsStats isEqual:?]) && ((subjectCountStatsStats = self->_subjectCountStatsStats, !(subjectCountStatsStats | v4[13])) || [(SGMIMetricsSubmodelStats *)subjectCountStatsStats isEqual:?]) && ((standardMailRulesStats = self->_standardMailRulesStats, !(standardMailRulesStats | v4[11])) || [(SGMIMetricsSubmodelStats *)standardMailRulesStats isEqual:?]) && ((mailboxStats = self->_mailboxStats, !(mailboxStats | v4[5])) || [(SGMIMetricsSubmodelStats *)mailboxStats isEqual:?]))
  {
    mailboxTypeStats = self->_mailboxTypeStats;
    if (mailboxTypeStats | v4[6])
    {
      v18 = [(SGMIMetricsSubmodelStats *)mailboxTypeStats isEqual:?];
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
LABEL_28:
    v18 = 0;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SGMIMetricsSubmodelStats *)self->_personFromSenderStats copyWithZone:a3];
  v7 = v5[9];
  v5[9] = v6;

  v8 = [(SGMIMetricsSubmodelStats *)self->_personFromSenderInDyadicConversationStats copyWithZone:a3];
  v9 = v5[8];
  v5[8] = v8;

  v10 = [(SGMIMetricsSubmodelStats *)self->_subjectContentStats copyWithZone:a3];
  v11 = v5[12];
  v5[12] = v10;

  v12 = [(SGMIMetricsSubmodelStats *)self->_personToRecipientsStats copyWithZone:a3];
  v13 = v5[10];
  v5[10] = v12;

  v14 = [(SGMIMetricsSubmodelStats *)self->_personCCRecipientsStats copyWithZone:a3];
  v15 = v5[7];
  v5[7] = v14;

  v16 = [(SGMIMetricsSubmodelStats *)self->_domainFromSenderStats copyWithZone:a3];
  v17 = v5[3];
  v5[3] = v16;

  v18 = [(SGMIMetricsSubmodelStats *)self->_conversationStats copyWithZone:a3];
  v19 = v5[2];
  v5[2] = v18;

  v20 = [(SGMIMetricsSubmodelStats *)self->_listIdStats copyWithZone:a3];
  v21 = v5[4];
  v5[4] = v20;

  v22 = [(SGMIMetricsSubmodelStats *)self->_attachmentsStats copyWithZone:a3];
  v23 = v5[1];
  v5[1] = v22;

  v24 = [(SGMIMetricsSubmodelStats *)self->_subjectCountStatsStats copyWithZone:a3];
  v25 = v5[13];
  v5[13] = v24;

  v26 = [(SGMIMetricsSubmodelStats *)self->_standardMailRulesStats copyWithZone:a3];
  v27 = v5[11];
  v5[11] = v26;

  v28 = [(SGMIMetricsSubmodelStats *)self->_mailboxStats copyWithZone:a3];
  v29 = v5[5];
  v5[5] = v28;

  v30 = [(SGMIMetricsSubmodelStats *)self->_mailboxTypeStats copyWithZone:a3];
  v31 = v5[6];
  v5[6] = v30;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_personFromSenderStats)
  {
    [v4 setPersonFromSenderStats:?];
    v4 = v5;
  }

  if (self->_personFromSenderInDyadicConversationStats)
  {
    [v5 setPersonFromSenderInDyadicConversationStats:?];
    v4 = v5;
  }

  if (self->_subjectContentStats)
  {
    [v5 setSubjectContentStats:?];
    v4 = v5;
  }

  if (self->_personToRecipientsStats)
  {
    [v5 setPersonToRecipientsStats:?];
    v4 = v5;
  }

  if (self->_personCCRecipientsStats)
  {
    [v5 setPersonCCRecipientsStats:?];
    v4 = v5;
  }

  if (self->_domainFromSenderStats)
  {
    [v5 setDomainFromSenderStats:?];
    v4 = v5;
  }

  if (self->_conversationStats)
  {
    [v5 setConversationStats:?];
    v4 = v5;
  }

  if (self->_listIdStats)
  {
    [v5 setListIdStats:?];
    v4 = v5;
  }

  if (self->_attachmentsStats)
  {
    [v5 setAttachmentsStats:?];
    v4 = v5;
  }

  if (self->_subjectCountStatsStats)
  {
    [v5 setSubjectCountStatsStats:?];
    v4 = v5;
  }

  if (self->_standardMailRulesStats)
  {
    [v5 setStandardMailRulesStats:?];
    v4 = v5;
  }

  if (self->_mailboxStats)
  {
    [v5 setMailboxStats:?];
    v4 = v5;
  }

  if (self->_mailboxTypeStats)
  {
    [v5 setMailboxTypeStats:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_personFromSenderStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_personFromSenderInDyadicConversationStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_subjectContentStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_personToRecipientsStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_personCCRecipientsStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_domainFromSenderStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_conversationStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_listIdStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_attachmentsStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_subjectCountStatsStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_standardMailRulesStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_mailboxStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_mailboxTypeStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  personFromSenderStats = self->_personFromSenderStats;
  if (personFromSenderStats)
  {
    v5 = [(SGMIMetricsSubmodelStats *)personFromSenderStats dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"personFromSenderStats"];
  }

  personFromSenderInDyadicConversationStats = self->_personFromSenderInDyadicConversationStats;
  if (personFromSenderInDyadicConversationStats)
  {
    v7 = [(SGMIMetricsSubmodelStats *)personFromSenderInDyadicConversationStats dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"personFromSenderInDyadicConversationStats"];
  }

  subjectContentStats = self->_subjectContentStats;
  if (subjectContentStats)
  {
    v9 = [(SGMIMetricsSubmodelStats *)subjectContentStats dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"subjectContentStats"];
  }

  personToRecipientsStats = self->_personToRecipientsStats;
  if (personToRecipientsStats)
  {
    v11 = [(SGMIMetricsSubmodelStats *)personToRecipientsStats dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"personToRecipientsStats"];
  }

  personCCRecipientsStats = self->_personCCRecipientsStats;
  if (personCCRecipientsStats)
  {
    v13 = [(SGMIMetricsSubmodelStats *)personCCRecipientsStats dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"personCCRecipientsStats"];
  }

  domainFromSenderStats = self->_domainFromSenderStats;
  if (domainFromSenderStats)
  {
    v15 = [(SGMIMetricsSubmodelStats *)domainFromSenderStats dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"domainFromSenderStats"];
  }

  conversationStats = self->_conversationStats;
  if (conversationStats)
  {
    v17 = [(SGMIMetricsSubmodelStats *)conversationStats dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"conversationStats"];
  }

  listIdStats = self->_listIdStats;
  if (listIdStats)
  {
    v19 = [(SGMIMetricsSubmodelStats *)listIdStats dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"listIdStats"];
  }

  attachmentsStats = self->_attachmentsStats;
  if (attachmentsStats)
  {
    v21 = [(SGMIMetricsSubmodelStats *)attachmentsStats dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"attachmentsStats"];
  }

  subjectCountStatsStats = self->_subjectCountStatsStats;
  if (subjectCountStatsStats)
  {
    v23 = [(SGMIMetricsSubmodelStats *)subjectCountStatsStats dictionaryRepresentation];
    [v3 setObject:v23 forKey:@"subjectCountStatsStats"];
  }

  standardMailRulesStats = self->_standardMailRulesStats;
  if (standardMailRulesStats)
  {
    v25 = [(SGMIMetricsSubmodelStats *)standardMailRulesStats dictionaryRepresentation];
    [v3 setObject:v25 forKey:@"standardMailRulesStats"];
  }

  mailboxStats = self->_mailboxStats;
  if (mailboxStats)
  {
    v27 = [(SGMIMetricsSubmodelStats *)mailboxStats dictionaryRepresentation];
    [v3 setObject:v27 forKey:@"mailboxStats"];
  }

  mailboxTypeStats = self->_mailboxTypeStats;
  if (mailboxTypeStats)
  {
    v29 = [(SGMIMetricsSubmodelStats *)mailboxTypeStats dictionaryRepresentation];
    [v3 setObject:v29 forKey:@"mailboxTypeStats"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGMIMetricsSubmodelsStats;
  v4 = [(SGMIMetricsSubmodelsStats *)&v8 description];
  v5 = [(SGMIMetricsSubmodelsStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end