@interface SGMIMetricsSubmodelsProbabilities
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConversationProbability:(BOOL)probability;
- (void)setHasDomainFromSenderProbability:(BOOL)probability;
- (void)setHasListIdProbability:(BOOL)probability;
- (void)setHasMailboxProbability:(BOOL)probability;
- (void)setHasMailboxTypeProbability:(BOOL)probability;
- (void)setHasPersonCCRecipientsProbability:(BOOL)probability;
- (void)setHasPersonFromSenderInDyadicConversationProbability:(BOOL)probability;
- (void)setHasPersonFromSenderProbability:(BOOL)probability;
- (void)setHasPersonToRecipientsProbability:(BOOL)probability;
- (void)setHasStandardMailRulesProbability:(BOOL)probability;
- (void)setHasSubjectContentProbability:(BOOL)probability;
- (void)setHasSubjectCountStatsProbability:(BOOL)probability;
- (void)writeTo:(id)to;
@end

@implementation SGMIMetricsSubmodelsProbabilities

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x100) != 0)
  {
    self->_personFromSenderProbability = *(fromCopy + 10);
    *&self->_has |= 0x100u;
    v5 = *(fromCopy + 30);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_personFromSenderInDyadicConversationProbability = *(fromCopy + 9);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x800) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_subjectContentProbability = *(fromCopy + 13);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_personToRecipientsProbability = *(fromCopy + 11);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_personCCRecipientsProbability = *(fromCopy + 8);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 30);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_domainFromSenderProbability = *(fromCopy + 4);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 30);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_conversationProbability = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 30);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_listIdProbability = *(fromCopy + 5);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 30);
  if ((v5 & 1) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_attachmentsProbability = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x1000) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_subjectCountStatsProbability = *(fromCopy + 14);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_standardMailRulesProbability = *(fromCopy + 12);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_13:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  self->_mailboxProbability = *(fromCopy + 6);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 30) & 0x20) != 0)
  {
LABEL_14:
    self->_mailboxTypeProbability = *(fromCopy + 7);
    *&self->_has |= 0x20u;
  }

LABEL_15:
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    personFromSenderProbability = self->_personFromSenderProbability;
    if (personFromSenderProbability < 0.0)
    {
      personFromSenderProbability = -personFromSenderProbability;
    }

    *v2.i32 = floorf(personFromSenderProbability + 0.5);
    v7 = (personFromSenderProbability - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v8.i64[0] = 0x8000000080000000;
    v8.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v8, v3, v2);
    v5 = 2654435761u * *v2.i32;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabsf(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((has & 0x80) != 0)
  {
    personFromSenderInDyadicConversationProbability = self->_personFromSenderInDyadicConversationProbability;
    if (personFromSenderInDyadicConversationProbability < 0.0)
    {
      personFromSenderInDyadicConversationProbability = -personFromSenderInDyadicConversationProbability;
    }

    *v2.i32 = floorf(personFromSenderInDyadicConversationProbability + 0.5);
    v11 = (personFromSenderInDyadicConversationProbability - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v12, v3, v2);
    v9 = 2654435761u * *v2.i32;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabsf(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    subjectContentProbability = self->_subjectContentProbability;
    if (subjectContentProbability < 0.0)
    {
      subjectContentProbability = -subjectContentProbability;
    }

    *v2.i32 = floorf(subjectContentProbability + 0.5);
    v15 = (subjectContentProbability - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v16.i64[0] = 0x8000000080000000;
    v16.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v16, v3, v2);
    v13 = 2654435761u * *v2.i32;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabsf(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    personToRecipientsProbability = self->_personToRecipientsProbability;
    if (personToRecipientsProbability < 0.0)
    {
      personToRecipientsProbability = -personToRecipientsProbability;
    }

    *v2.i32 = floorf(personToRecipientsProbability + 0.5);
    v19 = (personToRecipientsProbability - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v20, v3, v2);
    v17 = 2654435761u * *v2.i32;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabsf(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((has & 0x40) != 0)
  {
    personCCRecipientsProbability = self->_personCCRecipientsProbability;
    if (personCCRecipientsProbability < 0.0)
    {
      personCCRecipientsProbability = -personCCRecipientsProbability;
    }

    *v2.i32 = floorf(personCCRecipientsProbability + 0.5);
    v23 = (personCCRecipientsProbability - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v24.i64[0] = 0x8000000080000000;
    v24.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v24, v3, v2);
    v21 = 2654435761u * *v2.i32;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabsf(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((has & 4) != 0)
  {
    domainFromSenderProbability = self->_domainFromSenderProbability;
    if (domainFromSenderProbability < 0.0)
    {
      domainFromSenderProbability = -domainFromSenderProbability;
    }

    *v2.i32 = floorf(domainFromSenderProbability + 0.5);
    v27 = (domainFromSenderProbability - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v28.i64[0] = 0x8000000080000000;
    v28.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v28, v3, v2);
    v25 = 2654435761u * *v2.i32;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabsf(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((has & 2) != 0)
  {
    conversationProbability = self->_conversationProbability;
    if (conversationProbability < 0.0)
    {
      conversationProbability = -conversationProbability;
    }

    *v2.i32 = floorf(conversationProbability + 0.5);
    v31 = (conversationProbability - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v32.i64[0] = 0x8000000080000000;
    v32.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v32, v3, v2);
    v29 = 2654435761u * *v2.i32;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v29 += v31;
      }
    }

    else
    {
      v29 -= fabsf(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  if ((has & 8) != 0)
  {
    listIdProbability = self->_listIdProbability;
    if (listIdProbability < 0.0)
    {
      listIdProbability = -listIdProbability;
    }

    *v2.i32 = floorf(listIdProbability + 0.5);
    v35 = (listIdProbability - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v36.i64[0] = 0x8000000080000000;
    v36.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v36, v3, v2);
    v33 = 2654435761u * *v2.i32;
    if (v35 >= 0.0)
    {
      if (v35 > 0.0)
      {
        v33 += v35;
      }
    }

    else
    {
      v33 -= fabsf(v35);
    }
  }

  else
  {
    v33 = 0;
  }

  if (has)
  {
    attachmentsProbability = self->_attachmentsProbability;
    if (attachmentsProbability < 0.0)
    {
      attachmentsProbability = -attachmentsProbability;
    }

    *v2.i32 = floorf(attachmentsProbability + 0.5);
    v39 = (attachmentsProbability - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v40.i64[0] = 0x8000000080000000;
    v40.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v40, v3, v2);
    v37 = 2654435761u * *v2.i32;
    if (v39 >= 0.0)
    {
      if (v39 > 0.0)
      {
        v37 += v39;
      }
    }

    else
    {
      v37 -= fabsf(v39);
    }
  }

  else
  {
    v37 = 0;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    subjectCountStatsProbability = self->_subjectCountStatsProbability;
    if (subjectCountStatsProbability < 0.0)
    {
      subjectCountStatsProbability = -subjectCountStatsProbability;
    }

    *v2.i32 = floorf(subjectCountStatsProbability + 0.5);
    v43 = (subjectCountStatsProbability - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v44.i64[0] = 0x8000000080000000;
    v44.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v44, v3, v2);
    v41 = 2654435761u * *v2.i32;
    if (v43 >= 0.0)
    {
      if (v43 > 0.0)
      {
        v41 += v43;
      }
    }

    else
    {
      v41 -= fabsf(v43);
    }
  }

  else
  {
    v41 = 0;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    standardMailRulesProbability = self->_standardMailRulesProbability;
    if (standardMailRulesProbability < 0.0)
    {
      standardMailRulesProbability = -standardMailRulesProbability;
    }

    *v2.i32 = floorf(standardMailRulesProbability + 0.5);
    v47 = (standardMailRulesProbability - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v48.i64[0] = 0x8000000080000000;
    v48.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v48, v3, v2);
    v45 = 2654435761u * *v2.i32;
    if (v47 >= 0.0)
    {
      if (v47 > 0.0)
      {
        v45 += v47;
      }
    }

    else
    {
      v45 -= fabsf(v47);
    }
  }

  else
  {
    v45 = 0;
  }

  if ((has & 0x10) != 0)
  {
    mailboxProbability = self->_mailboxProbability;
    if (mailboxProbability < 0.0)
    {
      mailboxProbability = -mailboxProbability;
    }

    *v2.i32 = floorf(mailboxProbability + 0.5);
    v51 = (mailboxProbability - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v52.i64[0] = 0x8000000080000000;
    v52.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v52, v3, v2);
    v49 = 2654435761u * *v2.i32;
    if (v51 >= 0.0)
    {
      if (v51 > 0.0)
      {
        v49 += v51;
      }
    }

    else
    {
      v49 -= fabsf(v51);
    }
  }

  else
  {
    v49 = 0;
  }

  if ((has & 0x20) != 0)
  {
    mailboxTypeProbability = self->_mailboxTypeProbability;
    if (mailboxTypeProbability < 0.0)
    {
      mailboxTypeProbability = -mailboxTypeProbability;
    }

    *v2.i32 = floorf(mailboxTypeProbability + 0.5);
    v55 = (mailboxTypeProbability - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v56.i64[0] = 0x8000000080000000;
    v56.i64[1] = 0x8000000080000000;
    v53 = 2654435761u * *vbslq_s8(v56, v3, v2).i32;
    if (v55 >= 0.0)
    {
      if (v55 > 0.0)
      {
        v53 += v55;
      }
    }

    else
    {
      v53 -= fabsf(v55);
    }
  }

  else
  {
    v53 = 0;
  }

  return v9 ^ v5 ^ v13 ^ v17 ^ v21 ^ v25 ^ v29 ^ v33 ^ v37 ^ v41 ^ v45 ^ v49 ^ v53;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_67;
  }

  has = self->_has;
  v6 = *(equalCopy + 30);
  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 30) & 0x100) == 0 || self->_personFromSenderProbability != *(equalCopy + 10))
    {
      goto LABEL_67;
    }
  }

  else if ((*(equalCopy + 30) & 0x100) != 0)
  {
LABEL_67:
    v7 = 0;
    goto LABEL_68;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_personFromSenderInDyadicConversationProbability != *(equalCopy + 9))
    {
      goto LABEL_67;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 30) & 0x800) == 0 || self->_subjectContentProbability != *(equalCopy + 13))
    {
      goto LABEL_67;
    }
  }

  else if ((*(equalCopy + 30) & 0x800) != 0)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 30) & 0x200) == 0 || self->_personToRecipientsProbability != *(equalCopy + 11))
    {
      goto LABEL_67;
    }
  }

  else if ((*(equalCopy + 30) & 0x200) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_personCCRecipientsProbability != *(equalCopy + 8))
    {
      goto LABEL_67;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_domainFromSenderProbability != *(equalCopy + 4))
    {
      goto LABEL_67;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_conversationProbability != *(equalCopy + 3))
    {
      goto LABEL_67;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_listIdProbability != *(equalCopy + 5))
    {
      goto LABEL_67;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_67;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_attachmentsProbability != *(equalCopy + 2))
    {
      goto LABEL_67;
    }
  }

  else if (v6)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 30) & 0x1000) == 0 || self->_subjectCountStatsProbability != *(equalCopy + 14))
    {
      goto LABEL_67;
    }
  }

  else if ((*(equalCopy + 30) & 0x1000) != 0)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 30) & 0x400) == 0 || self->_standardMailRulesProbability != *(equalCopy + 12))
    {
      goto LABEL_67;
    }
  }

  else if ((*(equalCopy + 30) & 0x400) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_mailboxProbability != *(equalCopy + 6))
    {
      goto LABEL_67;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_mailboxTypeProbability != *(equalCopy + 7))
    {
      goto LABEL_67;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x20) == 0;
  }

LABEL_68:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(result + 10) = LODWORD(self->_personFromSenderProbability);
    *(result + 30) |= 0x100u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(result + 9) = LODWORD(self->_personFromSenderInDyadicConversationProbability);
  *(result + 30) |= 0x80u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 13) = LODWORD(self->_subjectContentProbability);
  *(result + 30) |= 0x800u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 11) = LODWORD(self->_personToRecipientsProbability);
  *(result + 30) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 8) = LODWORD(self->_personCCRecipientsProbability);
  *(result + 30) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 4) = LODWORD(self->_domainFromSenderProbability);
  *(result + 30) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 3) = LODWORD(self->_conversationProbability);
  *(result + 30) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 5) = LODWORD(self->_listIdProbability);
  *(result + 30) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 2) = LODWORD(self->_attachmentsProbability);
  *(result + 30) |= 1u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 14) = LODWORD(self->_subjectCountStatsProbability);
  *(result + 30) |= 0x1000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 12) = LODWORD(self->_standardMailRulesProbability);
  *(result + 30) |= 0x400u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_27:
  *(result + 6) = LODWORD(self->_mailboxProbability);
  *(result + 30) |= 0x10u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_14:
  *(result + 7) = LODWORD(self->_mailboxTypeProbability);
  *(result + 30) |= 0x20u;
  return result;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    toCopy[10] = LODWORD(self->_personFromSenderProbability);
    *(toCopy + 30) |= 0x100u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  toCopy[9] = LODWORD(self->_personFromSenderInDyadicConversationProbability);
  *(toCopy + 30) |= 0x80u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  toCopy[13] = LODWORD(self->_subjectContentProbability);
  *(toCopy + 30) |= 0x800u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  toCopy[11] = LODWORD(self->_personToRecipientsProbability);
  *(toCopy + 30) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  toCopy[8] = LODWORD(self->_personCCRecipientsProbability);
  *(toCopy + 30) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  toCopy[4] = LODWORD(self->_domainFromSenderProbability);
  *(toCopy + 30) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  toCopy[3] = LODWORD(self->_conversationProbability);
  *(toCopy + 30) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  toCopy[5] = LODWORD(self->_listIdProbability);
  *(toCopy + 30) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  toCopy[2] = LODWORD(self->_attachmentsProbability);
  *(toCopy + 30) |= 1u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  toCopy[14] = LODWORD(self->_subjectCountStatsProbability);
  *(toCopy + 30) |= 0x1000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  toCopy[12] = LODWORD(self->_standardMailRulesProbability);
  *(toCopy + 30) |= 0x400u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  toCopy[6] = LODWORD(self->_mailboxProbability);
  *(toCopy + 30) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_14:
    toCopy[7] = LODWORD(self->_mailboxTypeProbability);
    *(toCopy + 30) |= 0x20u;
  }

LABEL_15:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    personFromSenderProbability = self->_personFromSenderProbability;
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  personFromSenderInDyadicConversationProbability = self->_personFromSenderInDyadicConversationProbability;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  subjectContentProbability = self->_subjectContentProbability;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  personToRecipientsProbability = self->_personToRecipientsProbability;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  personCCRecipientsProbability = self->_personCCRecipientsProbability;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  domainFromSenderProbability = self->_domainFromSenderProbability;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  conversationProbability = self->_conversationProbability;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  listIdProbability = self->_listIdProbability;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  attachmentsProbability = self->_attachmentsProbability;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  subjectCountStatsProbability = self->_subjectCountStatsProbability;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  standardMailRulesProbability = self->_standardMailRulesProbability;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  mailboxProbability = self->_mailboxProbability;
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_14:
    mailboxTypeProbability = self->_mailboxTypeProbability;
    PBDataWriterWriteFloatField();
  }

LABEL_15:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *&v4 = self->_personFromSenderProbability;
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v8 forKey:@"personFromSenderProbability"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *&v4 = self->_personFromSenderInDyadicConversationProbability;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v9 forKey:@"personFromSenderInDyadicConversationProbability"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *&v4 = self->_subjectContentProbability;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v10 forKey:@"subjectContentProbability"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *&v4 = self->_personToRecipientsProbability;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v11 forKey:@"personToRecipientsProbability"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *&v4 = self->_personCCRecipientsProbability;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v12 forKey:@"personCCRecipientsProbability"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *&v4 = self->_domainFromSenderProbability;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v13 forKey:@"domainFromSenderProbability"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *&v4 = self->_conversationProbability;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v14 forKey:@"conversationProbability"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  *&v4 = self->_listIdProbability;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v15 forKey:@"listIdProbability"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  *&v4 = self->_attachmentsProbability;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v16 forKey:@"attachmentsProbability"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  *&v4 = self->_subjectCountStatsProbability;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v17 forKey:@"subjectCountStatsProbability"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  *&v4 = self->_standardMailRulesProbability;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v18 forKey:@"standardMailRulesProbability"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  *&v4 = self->_mailboxProbability;
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v19 forKey:@"mailboxProbability"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_14:
    *&v4 = self->_mailboxTypeProbability;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v6 forKey:@"mailboxTypeProbability"];
  }

LABEL_15:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGMIMetricsSubmodelsProbabilities;
  v4 = [(SGMIMetricsSubmodelsProbabilities *)&v8 description];
  dictionaryRepresentation = [(SGMIMetricsSubmodelsProbabilities *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasMailboxTypeProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasMailboxProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasStandardMailRulesProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasSubjectCountStatsProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasListIdProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasConversationProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasDomainFromSenderProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPersonCCRecipientsProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasPersonToRecipientsProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasSubjectContentProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasPersonFromSenderInDyadicConversationProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasPersonFromSenderProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

@end