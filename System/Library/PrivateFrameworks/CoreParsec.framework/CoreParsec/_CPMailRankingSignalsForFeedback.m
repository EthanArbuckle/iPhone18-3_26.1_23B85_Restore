@interface _CPMailRankingSignalsForFeedback
- (BOOL)isEqual:(id)a3;
- (_CPMailRankingSignalsForFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPMailRankingSignalsForFeedback

- (unint64_t)hash
{
  v2.i32[0] = LODWORD(self->_l1Score);
  v3 = vdupq_n_s64(0x3BF0000000000000uLL);
  v4 = vdupq_n_s64(0x43F0000000000000uLL);
  v5 = vdupq_n_s64(0x41E3C6EF36200000uLL);
  countBigramMatchInAuthors = self->_countBigramMatchInAuthors;
  v7.i32[0] = v2.i32[0];
  v26 = 2654435761 * self->_countBigramMatchInAttachmentTypes;
  v25 = 2654435761 * self->_countNgramMatchInAttachmentTypes;
  v7.i32[1] = LODWORD(self->_l2Score);
  v7.i64[1] = *&self->_semanticScore;
  v8 = vcvtq_f64_f32(*&v7.u32[2]);
  v2.i32[1] = v7.i32[1];
  v9 = vcvtq_f64_f32(v2);
  v10 = vcltzq_f32(v7);
  v11.i64[0] = v10.i32[0];
  v11.i64[1] = v10.i32[1];
  v12 = v11;
  v11.i64[0] = v10.i32[2];
  v11.i64[1] = v10.i32[3];
  v13 = vbslq_s8(v11, vnegq_f64(v8), v8);
  v14 = vbslq_s8(v12, vnegq_f64(v9), v9);
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v15 = vrndaq_f64(v14);
  v16 = vrndaq_f64(v13);
  v17 = vnegq_f64(v8);
  v18 = veorq_s8(vaddq_s64(vcvtq_u64_f64(vmulq_f64(vbslq_s8(v17, vmlsq_f64(v15, v4, vrndq_f64(vmulq_f64(v15, v3))), v15), v5)), vcvtq_n_u64_f64(vsubq_f64(v14, v15), 0x40uLL)), vaddq_s64(vcvtq_u64_f64(vmulq_f64(vbslq_s8(v17, vmlsq_f64(v16, v4, vrndq_f64(vmulq_f64(v16, v3))), v16), v5)), vcvtq_n_u64_f64(vsubq_f64(v13, v16), 0x40uLL)));
  v24 = (2654435761 * self->_wasReorderedByRecency) ^ (2654435761u * self->_numDaysEngagedLast30Days);
  v23 = (2654435761 * self->_averageEngagementAgeLast7Days) ^ (2654435761 * self->_averageEngagementAgeLast14Days);
  v19 = (2654435761 * self->_countNgramPrefixMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countUnigramMatchInEmailAddresses) ^ (2654435761 * self->_countBigramMatchInEmailAddresses) ^ (2654435761 * self->_countNgramMatchInEmailAddresses) ^ (2654435761 * self->_countUnigramPrefixMatchInEmailAddresses) ^ (2654435761 * self->_countBigramPrefixMatchInEmailAddresses) ^ (2654435761 * self->_countNgramPrefixMatchInEmailAddresses) ^ (2654435761 * self->_countUnigramMatchInAttachmentTypes);
  v20 = v24 ^ v23 ^ (2654435761 * self->_averageEngagementAgeLast21Days) ^ (2654435761 * self->_averageEngagementAgeLast30Days) ^ (2654435761u * self->_daysSinceReceipt) ^ (2654435761 * self->_isFlagged) ^ (2654435761 * self->_isRepliedTo) ^ (2654435761 * self->_isSemanticMatch) ^ (2654435761 * self->_isSyntacticMatch) ^ (2654435761 * self->_countUnigramMatchInAuthors) ^ (2654435761 * countBigramMatchInAuthors) ^ (2654435761 * self->_countNgramMatchInAuthors) ^ (2654435761 * self->_countUnigramPrefixMatchInAuthors) ^ (2654435761 * self->_countBigramPrefixMatchInAuthors) ^ (2654435761 * self->_countNgramPrefixMatchInAuthors) ^ (2654435761 * self->_countUnigramMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countBigramMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countNgramMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countUnigramPrefixMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countBigramPrefixMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countNgramPrefixMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countUnigramMatchInSubject) ^ (2654435761 * self->_countBigramMatchInSubject) ^ (2654435761 * self->_countNgramMatchInSubject) ^ (2654435761 * self->_countUnigramPrefixMatchInSubject) ^ (2654435761 * self->_countBigramPrefixMatchInSubject) ^ (2654435761 * self->_countNgramPrefixMatchInSubject) ^ (2654435761 * self->_countUnigramMatchInTextContent);
  v21 = v20 ^ (2654435761 * self->_countBigramMatchInTextContent) ^ (2654435761 * self->_countNgramMatchInTextContent) ^ (2654435761 * self->_countUnigramPrefixMatchInTextContent) ^ (2654435761 * self->_countBigramPrefixMatchInTextContent) ^ (2654435761 * self->_countNgramPrefixMatchInTextContent) ^ (2654435761 * self->_countUnigramMatchInRecipients) ^ (2654435761 * self->_countBigramMatchInRecipients) ^ (2654435761 * self->_countNgramMatchInRecipients) ^ (2654435761 * self->_countUnigramPrefixMatchInRecipients) ^ (2654435761 * self->_countBigramPrefixMatchInRecipients) ^ (2654435761 * self->_countNgramPrefixMatchInRecipients) ^ (2654435761 * self->_countUnigramMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countBigramMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countNgramMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countUnigramPrefixMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countBigramPrefixMatchInRecipientEmailAddresses) ^ v19 ^ v26 ^ v25 ^ (2654435761 * self->_countUnigramPrefixMatchInAttachmentTypes) ^ (2654435761 * self->_countBigramPrefixMatchInAttachmentTypes) ^ (2654435761 * self->_countNgramPrefixMatchInAttachmentTypes) ^ (2654435761 * self->_countUnigramMatchInAttachmentNames) ^ (2654435761 * self->_countBigramMatchInAttachmentNames) ^ (2654435761 * self->_countNgramMatchInAttachmentNames) ^ (2654435761 * self->_countUnigramPrefixMatchInAttachmentNames) ^ (2654435761 * self->_countBigramPrefixMatchInAttachmentNames) ^ (2654435761 * self->_countNgramPrefixMatchInAttachmentNames);
  return *&veor_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) ^ (2654435761u * self->_numEngagements) ^ v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_72;
  }

  wasReorderedByRecency = self->_wasReorderedByRecency;
  if (wasReorderedByRecency != [v4 wasReorderedByRecency])
  {
    goto LABEL_72;
  }

  numEngagements = self->_numEngagements;
  if (numEngagements != [v4 numEngagements])
  {
    goto LABEL_72;
  }

  numDaysEngagedLast30Days = self->_numDaysEngagedLast30Days;
  if (numDaysEngagedLast30Days != [v4 numDaysEngagedLast30Days])
  {
    goto LABEL_72;
  }

  averageEngagementAgeLast7Days = self->_averageEngagementAgeLast7Days;
  if (averageEngagementAgeLast7Days != [v4 averageEngagementAgeLast7Days])
  {
    goto LABEL_72;
  }

  averageEngagementAgeLast14Days = self->_averageEngagementAgeLast14Days;
  if (averageEngagementAgeLast14Days != [v4 averageEngagementAgeLast14Days])
  {
    goto LABEL_72;
  }

  averageEngagementAgeLast21Days = self->_averageEngagementAgeLast21Days;
  if (averageEngagementAgeLast21Days != [v4 averageEngagementAgeLast21Days])
  {
    goto LABEL_72;
  }

  averageEngagementAgeLast30Days = self->_averageEngagementAgeLast30Days;
  if (averageEngagementAgeLast30Days != [v4 averageEngagementAgeLast30Days])
  {
    goto LABEL_72;
  }

  daysSinceReceipt = self->_daysSinceReceipt;
  if (daysSinceReceipt != [v4 daysSinceReceipt])
  {
    goto LABEL_72;
  }

  l1Score = self->_l1Score;
  [v4 l1Score];
  if (l1Score != v14)
  {
    goto LABEL_72;
  }

  l2Score = self->_l2Score;
  [v4 l2Score];
  if (l2Score != v16)
  {
    goto LABEL_72;
  }

  isFlagged = self->_isFlagged;
  if (isFlagged != [v4 isFlagged])
  {
    goto LABEL_72;
  }

  isRepliedTo = self->_isRepliedTo;
  if (isRepliedTo != [v4 isRepliedTo])
  {
    goto LABEL_72;
  }

  isSemanticMatch = self->_isSemanticMatch;
  if (isSemanticMatch != [v4 isSemanticMatch])
  {
    goto LABEL_72;
  }

  isSyntacticMatch = self->_isSyntacticMatch;
  if (isSyntacticMatch != [v4 isSyntacticMatch])
  {
    goto LABEL_72;
  }

  semanticScore = self->_semanticScore;
  [v4 semanticScore];
  if (semanticScore != v22)
  {
    goto LABEL_72;
  }

  syntacticScore = self->_syntacticScore;
  [v4 syntacticScore];
  if (syntacticScore != v24)
  {
    goto LABEL_72;
  }

  countUnigramMatchInAuthors = self->_countUnigramMatchInAuthors;
  if (countUnigramMatchInAuthors != [v4 countUnigramMatchInAuthors])
  {
    goto LABEL_72;
  }

  countBigramMatchInAuthors = self->_countBigramMatchInAuthors;
  if (countBigramMatchInAuthors != [v4 countBigramMatchInAuthors])
  {
    goto LABEL_72;
  }

  countNgramMatchInAuthors = self->_countNgramMatchInAuthors;
  if (countNgramMatchInAuthors != [v4 countNgramMatchInAuthors])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInAuthors = self->_countUnigramPrefixMatchInAuthors;
  if (countUnigramPrefixMatchInAuthors != [v4 countUnigramPrefixMatchInAuthors])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInAuthors = self->_countBigramPrefixMatchInAuthors;
  if (countBigramPrefixMatchInAuthors != [v4 countBigramPrefixMatchInAuthors])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInAuthors = self->_countNgramPrefixMatchInAuthors;
  if (countNgramPrefixMatchInAuthors != [v4 countNgramPrefixMatchInAuthors])
  {
    goto LABEL_72;
  }

  countUnigramMatchInAuthorEmailAddresses = self->_countUnigramMatchInAuthorEmailAddresses;
  if (countUnigramMatchInAuthorEmailAddresses != [v4 countUnigramMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramMatchInAuthorEmailAddresses = self->_countBigramMatchInAuthorEmailAddresses;
  if (countBigramMatchInAuthorEmailAddresses != [v4 countBigramMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramMatchInAuthorEmailAddresses = self->_countNgramMatchInAuthorEmailAddresses;
  if (countNgramMatchInAuthorEmailAddresses != [v4 countNgramMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInAuthorEmailAddresses = self->_countUnigramPrefixMatchInAuthorEmailAddresses;
  if (countUnigramPrefixMatchInAuthorEmailAddresses != [v4 countUnigramPrefixMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInAuthorEmailAddresses = self->_countBigramPrefixMatchInAuthorEmailAddresses;
  if (countBigramPrefixMatchInAuthorEmailAddresses != [v4 countBigramPrefixMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInAuthorEmailAddresses = self->_countNgramPrefixMatchInAuthorEmailAddresses;
  if (countNgramPrefixMatchInAuthorEmailAddresses != [v4 countNgramPrefixMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramMatchInSubject = self->_countUnigramMatchInSubject;
  if (countUnigramMatchInSubject != [v4 countUnigramMatchInSubject])
  {
    goto LABEL_72;
  }

  countBigramMatchInSubject = self->_countBigramMatchInSubject;
  if (countBigramMatchInSubject != [v4 countBigramMatchInSubject])
  {
    goto LABEL_72;
  }

  countNgramMatchInSubject = self->_countNgramMatchInSubject;
  if (countNgramMatchInSubject != [v4 countNgramMatchInSubject])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInSubject = self->_countUnigramPrefixMatchInSubject;
  if (countUnigramPrefixMatchInSubject != [v4 countUnigramPrefixMatchInSubject])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInSubject = self->_countBigramPrefixMatchInSubject;
  if (countBigramPrefixMatchInSubject != [v4 countBigramPrefixMatchInSubject])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInSubject = self->_countNgramPrefixMatchInSubject;
  if (countNgramPrefixMatchInSubject != [v4 countNgramPrefixMatchInSubject])
  {
    goto LABEL_72;
  }

  countUnigramMatchInTextContent = self->_countUnigramMatchInTextContent;
  if (countUnigramMatchInTextContent != [v4 countUnigramMatchInTextContent])
  {
    goto LABEL_72;
  }

  countBigramMatchInTextContent = self->_countBigramMatchInTextContent;
  if (countBigramMatchInTextContent != [v4 countBigramMatchInTextContent])
  {
    goto LABEL_72;
  }

  countNgramMatchInTextContent = self->_countNgramMatchInTextContent;
  if (countNgramMatchInTextContent != [v4 countNgramMatchInTextContent])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInTextContent = self->_countUnigramPrefixMatchInTextContent;
  if (countUnigramPrefixMatchInTextContent != [v4 countUnigramPrefixMatchInTextContent])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInTextContent = self->_countBigramPrefixMatchInTextContent;
  if (countBigramPrefixMatchInTextContent != [v4 countBigramPrefixMatchInTextContent])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInTextContent = self->_countNgramPrefixMatchInTextContent;
  if (countNgramPrefixMatchInTextContent != [v4 countNgramPrefixMatchInTextContent])
  {
    goto LABEL_72;
  }

  countUnigramMatchInRecipients = self->_countUnigramMatchInRecipients;
  if (countUnigramMatchInRecipients != [v4 countUnigramMatchInRecipients])
  {
    goto LABEL_72;
  }

  countBigramMatchInRecipients = self->_countBigramMatchInRecipients;
  if (countBigramMatchInRecipients != [v4 countBigramMatchInRecipients])
  {
    goto LABEL_72;
  }

  countNgramMatchInRecipients = self->_countNgramMatchInRecipients;
  if (countNgramMatchInRecipients != [v4 countNgramMatchInRecipients])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInRecipients = self->_countUnigramPrefixMatchInRecipients;
  if (countUnigramPrefixMatchInRecipients != [v4 countUnigramPrefixMatchInRecipients])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInRecipients = self->_countBigramPrefixMatchInRecipients;
  if (countBigramPrefixMatchInRecipients != [v4 countBigramPrefixMatchInRecipients])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInRecipients = self->_countNgramPrefixMatchInRecipients;
  if (countNgramPrefixMatchInRecipients != [v4 countNgramPrefixMatchInRecipients])
  {
    goto LABEL_72;
  }

  countUnigramMatchInRecipientEmailAddresses = self->_countUnigramMatchInRecipientEmailAddresses;
  if (countUnigramMatchInRecipientEmailAddresses != [v4 countUnigramMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramMatchInRecipientEmailAddresses = self->_countBigramMatchInRecipientEmailAddresses;
  if (countBigramMatchInRecipientEmailAddresses != [v4 countBigramMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramMatchInRecipientEmailAddresses = self->_countNgramMatchInRecipientEmailAddresses;
  if (countNgramMatchInRecipientEmailAddresses != [v4 countNgramMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInRecipientEmailAddresses = self->_countUnigramPrefixMatchInRecipientEmailAddresses;
  if (countUnigramPrefixMatchInRecipientEmailAddresses != [v4 countUnigramPrefixMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInRecipientEmailAddresses = self->_countBigramPrefixMatchInRecipientEmailAddresses;
  if (countBigramPrefixMatchInRecipientEmailAddresses != [v4 countBigramPrefixMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInRecipientEmailAddresses = self->_countNgramPrefixMatchInRecipientEmailAddresses;
  if (countNgramPrefixMatchInRecipientEmailAddresses != [v4 countNgramPrefixMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramMatchInEmailAddresses = self->_countUnigramMatchInEmailAddresses;
  if (countUnigramMatchInEmailAddresses != [v4 countUnigramMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramMatchInEmailAddresses = self->_countBigramMatchInEmailAddresses;
  if (countBigramMatchInEmailAddresses != [v4 countBigramMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramMatchInEmailAddresses = self->_countNgramMatchInEmailAddresses;
  if (countNgramMatchInEmailAddresses != [v4 countNgramMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInEmailAddresses = self->_countUnigramPrefixMatchInEmailAddresses;
  if (countUnigramPrefixMatchInEmailAddresses != [v4 countUnigramPrefixMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInEmailAddresses = self->_countBigramPrefixMatchInEmailAddresses;
  if (countBigramPrefixMatchInEmailAddresses != [v4 countBigramPrefixMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInEmailAddresses = self->_countNgramPrefixMatchInEmailAddresses;
  if (countNgramPrefixMatchInEmailAddresses != [v4 countNgramPrefixMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramMatchInAttachmentTypes = self->_countUnigramMatchInAttachmentTypes;
  if (countUnigramMatchInAttachmentTypes != [v4 countUnigramMatchInAttachmentTypes])
  {
    goto LABEL_72;
  }

  countBigramMatchInAttachmentTypes = self->_countBigramMatchInAttachmentTypes;
  if (countBigramMatchInAttachmentTypes != [v4 countBigramMatchInAttachmentTypes])
  {
    goto LABEL_72;
  }

  countNgramMatchInAttachmentTypes = self->_countNgramMatchInAttachmentTypes;
  if (countNgramMatchInAttachmentTypes != [v4 countNgramMatchInAttachmentTypes])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInAttachmentTypes = self->_countUnigramPrefixMatchInAttachmentTypes;
  if (countUnigramPrefixMatchInAttachmentTypes != [v4 countUnigramPrefixMatchInAttachmentTypes])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInAttachmentTypes = self->_countBigramPrefixMatchInAttachmentTypes;
  if (countBigramPrefixMatchInAttachmentTypes == [v4 countBigramPrefixMatchInAttachmentTypes] && (countNgramPrefixMatchInAttachmentTypes = self->_countNgramPrefixMatchInAttachmentTypes, countNgramPrefixMatchInAttachmentTypes == objc_msgSend(v4, "countNgramPrefixMatchInAttachmentTypes")) && (countUnigramMatchInAttachmentNames = self->_countUnigramMatchInAttachmentNames, countUnigramMatchInAttachmentNames == objc_msgSend(v4, "countUnigramMatchInAttachmentNames")) && (countBigramMatchInAttachmentNames = self->_countBigramMatchInAttachmentNames, countBigramMatchInAttachmentNames == objc_msgSend(v4, "countBigramMatchInAttachmentNames")) && (countNgramMatchInAttachmentNames = self->_countNgramMatchInAttachmentNames, countNgramMatchInAttachmentNames == objc_msgSend(v4, "countNgramMatchInAttachmentNames")) && (countUnigramPrefixMatchInAttachmentNames = self->_countUnigramPrefixMatchInAttachmentNames, countUnigramPrefixMatchInAttachmentNames == objc_msgSend(v4, "countUnigramPrefixMatchInAttachmentNames")) && (countBigramPrefixMatchInAttachmentNames = self->_countBigramPrefixMatchInAttachmentNames, countBigramPrefixMatchInAttachmentNames == objc_msgSend(v4, "countBigramPrefixMatchInAttachmentNames")))
  {
    countNgramPrefixMatchInAttachmentNames = self->_countNgramPrefixMatchInAttachmentNames;
    v79 = countNgramPrefixMatchInAttachmentNames == [v4 countNgramPrefixMatchInAttachmentNames];
  }

  else
  {
LABEL_72:
    v79 = 0;
  }

  return v79;
}

- (void)writeTo:(id)a3
{
  a3;
  if ([(_CPMailRankingSignalsForFeedback *)self wasReorderedByRecency])
  {
    wasReorderedByRecency = self->_wasReorderedByRecency;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self numEngagements])
  {
    numEngagements = self->_numEngagements;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self numDaysEngagedLast30Days])
  {
    numDaysEngagedLast30Days = self->_numDaysEngagedLast30Days;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self averageEngagementAgeLast7Days])
  {
    averageEngagementAgeLast7Days = self->_averageEngagementAgeLast7Days;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self averageEngagementAgeLast14Days])
  {
    averageEngagementAgeLast14Days = self->_averageEngagementAgeLast14Days;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self averageEngagementAgeLast21Days])
  {
    averageEngagementAgeLast21Days = self->_averageEngagementAgeLast21Days;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self averageEngagementAgeLast30Days])
  {
    averageEngagementAgeLast30Days = self->_averageEngagementAgeLast30Days;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self daysSinceReceipt])
  {
    daysSinceReceipt = self->_daysSinceReceipt;
    PBDataWriterWriteUint64Field();
  }

  [(_CPMailRankingSignalsForFeedback *)self l1Score];
  if (v12 != 0.0)
  {
    l1Score = self->_l1Score;
    PBDataWriterWriteFloatField();
  }

  [(_CPMailRankingSignalsForFeedback *)self l2Score];
  if (v14 != 0.0)
  {
    l2Score = self->_l2Score;
    PBDataWriterWriteFloatField();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self isFlagged])
  {
    isFlagged = self->_isFlagged;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self isRepliedTo])
  {
    isRepliedTo = self->_isRepliedTo;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self isSemanticMatch])
  {
    isSemanticMatch = self->_isSemanticMatch;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self isSyntacticMatch])
  {
    isSyntacticMatch = self->_isSyntacticMatch;
    PBDataWriterWriteBOOLField();
  }

  [(_CPMailRankingSignalsForFeedback *)self semanticScore];
  if (v20 != 0.0)
  {
    semanticScore = self->_semanticScore;
    PBDataWriterWriteFloatField();
  }

  [(_CPMailRankingSignalsForFeedback *)self syntacticScore];
  if (v22 != 0.0)
  {
    syntacticScore = self->_syntacticScore;
    PBDataWriterWriteFloatField();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInAuthors])
  {
    countUnigramMatchInAuthors = self->_countUnigramMatchInAuthors;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInAuthors])
  {
    countBigramMatchInAuthors = self->_countBigramMatchInAuthors;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInAuthors])
  {
    countNgramMatchInAuthors = self->_countNgramMatchInAuthors;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInAuthors])
  {
    countUnigramPrefixMatchInAuthors = self->_countUnigramPrefixMatchInAuthors;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInAuthors])
  {
    countBigramPrefixMatchInAuthors = self->_countBigramPrefixMatchInAuthors;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInAuthors])
  {
    countNgramPrefixMatchInAuthors = self->_countNgramPrefixMatchInAuthors;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInAuthorEmailAddresses])
  {
    countUnigramMatchInAuthorEmailAddresses = self->_countUnigramMatchInAuthorEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInAuthorEmailAddresses])
  {
    countBigramMatchInAuthorEmailAddresses = self->_countBigramMatchInAuthorEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInAuthorEmailAddresses])
  {
    countNgramMatchInAuthorEmailAddresses = self->_countNgramMatchInAuthorEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInAuthorEmailAddresses])
  {
    countUnigramPrefixMatchInAuthorEmailAddresses = self->_countUnigramPrefixMatchInAuthorEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInAuthorEmailAddresses])
  {
    countBigramPrefixMatchInAuthorEmailAddresses = self->_countBigramPrefixMatchInAuthorEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInAuthorEmailAddresses])
  {
    countNgramPrefixMatchInAuthorEmailAddresses = self->_countNgramPrefixMatchInAuthorEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInSubject])
  {
    countUnigramMatchInSubject = self->_countUnigramMatchInSubject;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInSubject])
  {
    countBigramMatchInSubject = self->_countBigramMatchInSubject;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInSubject])
  {
    countNgramMatchInSubject = self->_countNgramMatchInSubject;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInSubject])
  {
    countUnigramPrefixMatchInSubject = self->_countUnigramPrefixMatchInSubject;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInSubject])
  {
    countBigramPrefixMatchInSubject = self->_countBigramPrefixMatchInSubject;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInSubject])
  {
    countNgramPrefixMatchInSubject = self->_countNgramPrefixMatchInSubject;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInTextContent])
  {
    countUnigramMatchInTextContent = self->_countUnigramMatchInTextContent;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInTextContent])
  {
    countBigramMatchInTextContent = self->_countBigramMatchInTextContent;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInTextContent])
  {
    countNgramMatchInTextContent = self->_countNgramMatchInTextContent;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInTextContent])
  {
    countUnigramPrefixMatchInTextContent = self->_countUnigramPrefixMatchInTextContent;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInTextContent])
  {
    countBigramPrefixMatchInTextContent = self->_countBigramPrefixMatchInTextContent;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInTextContent])
  {
    countNgramPrefixMatchInTextContent = self->_countNgramPrefixMatchInTextContent;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInRecipients])
  {
    countUnigramMatchInRecipients = self->_countUnigramMatchInRecipients;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInRecipients])
  {
    countBigramMatchInRecipients = self->_countBigramMatchInRecipients;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInRecipients])
  {
    countNgramMatchInRecipients = self->_countNgramMatchInRecipients;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInRecipients])
  {
    countUnigramPrefixMatchInRecipients = self->_countUnigramPrefixMatchInRecipients;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInRecipients])
  {
    countBigramPrefixMatchInRecipients = self->_countBigramPrefixMatchInRecipients;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInRecipients])
  {
    countNgramPrefixMatchInRecipients = self->_countNgramPrefixMatchInRecipients;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInRecipientEmailAddresses])
  {
    countUnigramMatchInRecipientEmailAddresses = self->_countUnigramMatchInRecipientEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInRecipientEmailAddresses])
  {
    countBigramMatchInRecipientEmailAddresses = self->_countBigramMatchInRecipientEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInRecipientEmailAddresses])
  {
    countNgramMatchInRecipientEmailAddresses = self->_countNgramMatchInRecipientEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInRecipientEmailAddresses])
  {
    countUnigramPrefixMatchInRecipientEmailAddresses = self->_countUnigramPrefixMatchInRecipientEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInRecipientEmailAddresses])
  {
    countBigramPrefixMatchInRecipientEmailAddresses = self->_countBigramPrefixMatchInRecipientEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInRecipientEmailAddresses])
  {
    countNgramPrefixMatchInRecipientEmailAddresses = self->_countNgramPrefixMatchInRecipientEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInEmailAddresses])
  {
    countUnigramMatchInEmailAddresses = self->_countUnigramMatchInEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInEmailAddresses])
  {
    countBigramMatchInEmailAddresses = self->_countBigramMatchInEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInEmailAddresses])
  {
    countNgramMatchInEmailAddresses = self->_countNgramMatchInEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInEmailAddresses])
  {
    countUnigramPrefixMatchInEmailAddresses = self->_countUnigramPrefixMatchInEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInEmailAddresses])
  {
    countBigramPrefixMatchInEmailAddresses = self->_countBigramPrefixMatchInEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInEmailAddresses])
  {
    countNgramPrefixMatchInEmailAddresses = self->_countNgramPrefixMatchInEmailAddresses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInAttachmentTypes])
  {
    countUnigramMatchInAttachmentTypes = self->_countUnigramMatchInAttachmentTypes;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInAttachmentTypes])
  {
    countBigramMatchInAttachmentTypes = self->_countBigramMatchInAttachmentTypes;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInAttachmentTypes])
  {
    countNgramMatchInAttachmentTypes = self->_countNgramMatchInAttachmentTypes;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInAttachmentTypes])
  {
    countUnigramPrefixMatchInAttachmentTypes = self->_countUnigramPrefixMatchInAttachmentTypes;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInAttachmentTypes])
  {
    countBigramPrefixMatchInAttachmentTypes = self->_countBigramPrefixMatchInAttachmentTypes;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInAttachmentTypes])
  {
    countNgramPrefixMatchInAttachmentTypes = self->_countNgramPrefixMatchInAttachmentTypes;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInAttachmentNames])
  {
    countUnigramMatchInAttachmentNames = self->_countUnigramMatchInAttachmentNames;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInAttachmentNames])
  {
    countBigramMatchInAttachmentNames = self->_countBigramMatchInAttachmentNames;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInAttachmentNames])
  {
    countNgramMatchInAttachmentNames = self->_countNgramMatchInAttachmentNames;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInAttachmentNames])
  {
    countUnigramPrefixMatchInAttachmentNames = self->_countUnigramPrefixMatchInAttachmentNames;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInAttachmentNames])
  {
    countBigramPrefixMatchInAttachmentNames = self->_countBigramPrefixMatchInAttachmentNames;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInAttachmentNames])
  {
    countNgramPrefixMatchInAttachmentNames = self->_countNgramPrefixMatchInAttachmentNames;
    PBDataWriterWriteUint32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPMailRankingSignalsForFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = _CPMailRankingSignalsForFeedback;
  v5 = [(_CPMailRankingSignalsForFeedback *)&v24 init];
  if (v5)
  {
    -[_CPMailRankingSignalsForFeedback setWasReorderedByRecency:](v5, "setWasReorderedByRecency:", [v4 wasReorderedByRecency]);
    -[_CPMailRankingSignalsForFeedback setNumEngagements:](v5, "setNumEngagements:", [v4 numEngagements]);
    -[_CPMailRankingSignalsForFeedback setNumDaysEngagedLast30Days:](v5, "setNumDaysEngagedLast30Days:", [v4 numDaysEngagedLast30Days]);
    v6 = [v4 averageEngagementAgeLast7Days];

    if (v6)
    {
      v7 = [v4 averageEngagementAgeLast7Days];
      -[_CPMailRankingSignalsForFeedback setAverageEngagementAgeLast7Days:](v5, "setAverageEngagementAgeLast7Days:", [v7 intValue]);
    }

    v8 = [v4 averageEngagementAgeLast14Days];

    if (v8)
    {
      v9 = [v4 averageEngagementAgeLast14Days];
      -[_CPMailRankingSignalsForFeedback setAverageEngagementAgeLast14Days:](v5, "setAverageEngagementAgeLast14Days:", [v9 intValue]);
    }

    v10 = [v4 averageEngagementAgeLast21Days];

    if (v10)
    {
      v11 = [v4 averageEngagementAgeLast21Days];
      -[_CPMailRankingSignalsForFeedback setAverageEngagementAgeLast21Days:](v5, "setAverageEngagementAgeLast21Days:", [v11 intValue]);
    }

    v12 = [v4 averageEngagementAgeLast30Days];

    if (v12)
    {
      v13 = [v4 averageEngagementAgeLast30Days];
      -[_CPMailRankingSignalsForFeedback setAverageEngagementAgeLast30Days:](v5, "setAverageEngagementAgeLast30Days:", [v13 intValue]);
    }

    -[_CPMailRankingSignalsForFeedback setDaysSinceReceipt:](v5, "setDaysSinceReceipt:", [v4 daysSinceReceipt]);
    v14 = [v4 l1Score];

    if (v14)
    {
      v15 = [v4 l1Score];
      [v15 floatValue];
      [(_CPMailRankingSignalsForFeedback *)v5 setL1Score:?];
    }

    v16 = [v4 l2Score];

    if (v16)
    {
      v17 = [v4 l2Score];
      [v17 floatValue];
      [(_CPMailRankingSignalsForFeedback *)v5 setL2Score:?];
    }

    -[_CPMailRankingSignalsForFeedback setIsFlagged:](v5, "setIsFlagged:", [v4 isFlagged]);
    -[_CPMailRankingSignalsForFeedback setIsRepliedTo:](v5, "setIsRepliedTo:", [v4 isRepliedTo]);
    -[_CPMailRankingSignalsForFeedback setIsSemanticMatch:](v5, "setIsSemanticMatch:", [v4 isSemanticMatch]);
    -[_CPMailRankingSignalsForFeedback setIsSyntacticMatch:](v5, "setIsSyntacticMatch:", [v4 isSyntacticMatch]);
    v18 = [v4 semanticScore];

    if (v18)
    {
      v19 = [v4 semanticScore];
      [v19 floatValue];
      [(_CPMailRankingSignalsForFeedback *)v5 setSemanticScore:?];
    }

    v20 = [v4 syntacticScore];

    if (v20)
    {
      v21 = [v4 syntacticScore];
      [v21 floatValue];
      [(_CPMailRankingSignalsForFeedback *)v5 setSyntacticScore:?];
    }

    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInAuthors:](v5, "setCountUnigramMatchInAuthors:", [v4 countUnigramMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInAuthors:](v5, "setCountBigramMatchInAuthors:", [v4 countBigramMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInAuthors:](v5, "setCountNgramMatchInAuthors:", [v4 countNgramMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInAuthors:](v5, "setCountUnigramPrefixMatchInAuthors:", [v4 countUnigramPrefixMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInAuthors:](v5, "setCountBigramPrefixMatchInAuthors:", [v4 countBigramPrefixMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInAuthors:](v5, "setCountNgramPrefixMatchInAuthors:", [v4 countNgramPrefixMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInAuthorEmailAddresses:](v5, "setCountUnigramMatchInAuthorEmailAddresses:", [v4 countUnigramMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInAuthorEmailAddresses:](v5, "setCountBigramMatchInAuthorEmailAddresses:", [v4 countBigramMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInAuthorEmailAddresses:](v5, "setCountNgramMatchInAuthorEmailAddresses:", [v4 countNgramMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInAuthorEmailAddresses:](v5, "setCountUnigramPrefixMatchInAuthorEmailAddresses:", [v4 countUnigramPrefixMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInAuthorEmailAddresses:](v5, "setCountBigramPrefixMatchInAuthorEmailAddresses:", [v4 countBigramPrefixMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInAuthorEmailAddresses:](v5, "setCountNgramPrefixMatchInAuthorEmailAddresses:", [v4 countNgramPrefixMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInSubject:](v5, "setCountUnigramMatchInSubject:", [v4 countUnigramMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInSubject:](v5, "setCountBigramMatchInSubject:", [v4 countBigramMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInSubject:](v5, "setCountNgramMatchInSubject:", [v4 countNgramMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInSubject:](v5, "setCountUnigramPrefixMatchInSubject:", [v4 countUnigramPrefixMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInSubject:](v5, "setCountBigramPrefixMatchInSubject:", [v4 countBigramPrefixMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInSubject:](v5, "setCountNgramPrefixMatchInSubject:", [v4 countNgramPrefixMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInTextContent:](v5, "setCountUnigramMatchInTextContent:", [v4 countUnigramMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInTextContent:](v5, "setCountBigramMatchInTextContent:", [v4 countBigramMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInTextContent:](v5, "setCountNgramMatchInTextContent:", [v4 countNgramMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInTextContent:](v5, "setCountUnigramPrefixMatchInTextContent:", [v4 countUnigramPrefixMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInTextContent:](v5, "setCountBigramPrefixMatchInTextContent:", [v4 countBigramPrefixMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInTextContent:](v5, "setCountNgramPrefixMatchInTextContent:", [v4 countNgramPrefixMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInRecipients:](v5, "setCountUnigramMatchInRecipients:", [v4 countUnigramMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInRecipients:](v5, "setCountBigramMatchInRecipients:", [v4 countBigramMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInRecipients:](v5, "setCountNgramMatchInRecipients:", [v4 countNgramMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInRecipients:](v5, "setCountUnigramPrefixMatchInRecipients:", [v4 countUnigramPrefixMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInRecipients:](v5, "setCountBigramPrefixMatchInRecipients:", [v4 countBigramPrefixMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInRecipients:](v5, "setCountNgramPrefixMatchInRecipients:", [v4 countNgramPrefixMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInRecipientEmailAddresses:](v5, "setCountUnigramMatchInRecipientEmailAddresses:", [v4 countUnigramMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInRecipientEmailAddresses:](v5, "setCountBigramMatchInRecipientEmailAddresses:", [v4 countBigramMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInRecipientEmailAddresses:](v5, "setCountNgramMatchInRecipientEmailAddresses:", [v4 countNgramMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInRecipientEmailAddresses:](v5, "setCountUnigramPrefixMatchInRecipientEmailAddresses:", [v4 countUnigramPrefixMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInRecipientEmailAddresses:](v5, "setCountBigramPrefixMatchInRecipientEmailAddresses:", [v4 countBigramPrefixMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInRecipientEmailAddresses:](v5, "setCountNgramPrefixMatchInRecipientEmailAddresses:", [v4 countNgramPrefixMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInEmailAddresses:](v5, "setCountUnigramMatchInEmailAddresses:", [v4 countUnigramMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInEmailAddresses:](v5, "setCountBigramMatchInEmailAddresses:", [v4 countBigramMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInEmailAddresses:](v5, "setCountNgramMatchInEmailAddresses:", [v4 countNgramMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInEmailAddresses:](v5, "setCountUnigramPrefixMatchInEmailAddresses:", [v4 countUnigramPrefixMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInEmailAddresses:](v5, "setCountBigramPrefixMatchInEmailAddresses:", [v4 countBigramPrefixMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInEmailAddresses:](v5, "setCountNgramPrefixMatchInEmailAddresses:", [v4 countNgramPrefixMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInAttachmentTypes:](v5, "setCountUnigramMatchInAttachmentTypes:", [v4 countUnigramMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInAttachmentTypes:](v5, "setCountBigramMatchInAttachmentTypes:", [v4 countBigramMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInAttachmentTypes:](v5, "setCountNgramMatchInAttachmentTypes:", [v4 countNgramMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInAttachmentTypes:](v5, "setCountUnigramPrefixMatchInAttachmentTypes:", [v4 countUnigramPrefixMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInAttachmentTypes:](v5, "setCountBigramPrefixMatchInAttachmentTypes:", [v4 countBigramPrefixMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInAttachmentTypes:](v5, "setCountNgramPrefixMatchInAttachmentTypes:", [v4 countNgramPrefixMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInAttachmentNames:](v5, "setCountUnigramMatchInAttachmentNames:", [v4 countUnigramMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInAttachmentNames:](v5, "setCountBigramMatchInAttachmentNames:", [v4 countBigramMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInAttachmentNames:](v5, "setCountNgramMatchInAttachmentNames:", [v4 countNgramMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInAttachmentNames:](v5, "setCountUnigramPrefixMatchInAttachmentNames:", [v4 countUnigramPrefixMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInAttachmentNames:](v5, "setCountBigramPrefixMatchInAttachmentNames:", [v4 countBigramPrefixMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInAttachmentNames:](v5, "setCountNgramPrefixMatchInAttachmentNames:", [v4 countNgramPrefixMatchInAttachmentNames]);
    v22 = v5;
  }

  return v5;
}

@end