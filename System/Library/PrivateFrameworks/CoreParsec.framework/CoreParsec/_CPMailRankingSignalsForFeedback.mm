@interface _CPMailRankingSignalsForFeedback
- (BOOL)isEqual:(id)equal;
- (_CPMailRankingSignalsForFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_72;
  }

  wasReorderedByRecency = self->_wasReorderedByRecency;
  if (wasReorderedByRecency != [equalCopy wasReorderedByRecency])
  {
    goto LABEL_72;
  }

  numEngagements = self->_numEngagements;
  if (numEngagements != [equalCopy numEngagements])
  {
    goto LABEL_72;
  }

  numDaysEngagedLast30Days = self->_numDaysEngagedLast30Days;
  if (numDaysEngagedLast30Days != [equalCopy numDaysEngagedLast30Days])
  {
    goto LABEL_72;
  }

  averageEngagementAgeLast7Days = self->_averageEngagementAgeLast7Days;
  if (averageEngagementAgeLast7Days != [equalCopy averageEngagementAgeLast7Days])
  {
    goto LABEL_72;
  }

  averageEngagementAgeLast14Days = self->_averageEngagementAgeLast14Days;
  if (averageEngagementAgeLast14Days != [equalCopy averageEngagementAgeLast14Days])
  {
    goto LABEL_72;
  }

  averageEngagementAgeLast21Days = self->_averageEngagementAgeLast21Days;
  if (averageEngagementAgeLast21Days != [equalCopy averageEngagementAgeLast21Days])
  {
    goto LABEL_72;
  }

  averageEngagementAgeLast30Days = self->_averageEngagementAgeLast30Days;
  if (averageEngagementAgeLast30Days != [equalCopy averageEngagementAgeLast30Days])
  {
    goto LABEL_72;
  }

  daysSinceReceipt = self->_daysSinceReceipt;
  if (daysSinceReceipt != [equalCopy daysSinceReceipt])
  {
    goto LABEL_72;
  }

  l1Score = self->_l1Score;
  [equalCopy l1Score];
  if (l1Score != v14)
  {
    goto LABEL_72;
  }

  l2Score = self->_l2Score;
  [equalCopy l2Score];
  if (l2Score != v16)
  {
    goto LABEL_72;
  }

  isFlagged = self->_isFlagged;
  if (isFlagged != [equalCopy isFlagged])
  {
    goto LABEL_72;
  }

  isRepliedTo = self->_isRepliedTo;
  if (isRepliedTo != [equalCopy isRepliedTo])
  {
    goto LABEL_72;
  }

  isSemanticMatch = self->_isSemanticMatch;
  if (isSemanticMatch != [equalCopy isSemanticMatch])
  {
    goto LABEL_72;
  }

  isSyntacticMatch = self->_isSyntacticMatch;
  if (isSyntacticMatch != [equalCopy isSyntacticMatch])
  {
    goto LABEL_72;
  }

  semanticScore = self->_semanticScore;
  [equalCopy semanticScore];
  if (semanticScore != v22)
  {
    goto LABEL_72;
  }

  syntacticScore = self->_syntacticScore;
  [equalCopy syntacticScore];
  if (syntacticScore != v24)
  {
    goto LABEL_72;
  }

  countUnigramMatchInAuthors = self->_countUnigramMatchInAuthors;
  if (countUnigramMatchInAuthors != [equalCopy countUnigramMatchInAuthors])
  {
    goto LABEL_72;
  }

  countBigramMatchInAuthors = self->_countBigramMatchInAuthors;
  if (countBigramMatchInAuthors != [equalCopy countBigramMatchInAuthors])
  {
    goto LABEL_72;
  }

  countNgramMatchInAuthors = self->_countNgramMatchInAuthors;
  if (countNgramMatchInAuthors != [equalCopy countNgramMatchInAuthors])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInAuthors = self->_countUnigramPrefixMatchInAuthors;
  if (countUnigramPrefixMatchInAuthors != [equalCopy countUnigramPrefixMatchInAuthors])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInAuthors = self->_countBigramPrefixMatchInAuthors;
  if (countBigramPrefixMatchInAuthors != [equalCopy countBigramPrefixMatchInAuthors])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInAuthors = self->_countNgramPrefixMatchInAuthors;
  if (countNgramPrefixMatchInAuthors != [equalCopy countNgramPrefixMatchInAuthors])
  {
    goto LABEL_72;
  }

  countUnigramMatchInAuthorEmailAddresses = self->_countUnigramMatchInAuthorEmailAddresses;
  if (countUnigramMatchInAuthorEmailAddresses != [equalCopy countUnigramMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramMatchInAuthorEmailAddresses = self->_countBigramMatchInAuthorEmailAddresses;
  if (countBigramMatchInAuthorEmailAddresses != [equalCopy countBigramMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramMatchInAuthorEmailAddresses = self->_countNgramMatchInAuthorEmailAddresses;
  if (countNgramMatchInAuthorEmailAddresses != [equalCopy countNgramMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInAuthorEmailAddresses = self->_countUnigramPrefixMatchInAuthorEmailAddresses;
  if (countUnigramPrefixMatchInAuthorEmailAddresses != [equalCopy countUnigramPrefixMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInAuthorEmailAddresses = self->_countBigramPrefixMatchInAuthorEmailAddresses;
  if (countBigramPrefixMatchInAuthorEmailAddresses != [equalCopy countBigramPrefixMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInAuthorEmailAddresses = self->_countNgramPrefixMatchInAuthorEmailAddresses;
  if (countNgramPrefixMatchInAuthorEmailAddresses != [equalCopy countNgramPrefixMatchInAuthorEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramMatchInSubject = self->_countUnigramMatchInSubject;
  if (countUnigramMatchInSubject != [equalCopy countUnigramMatchInSubject])
  {
    goto LABEL_72;
  }

  countBigramMatchInSubject = self->_countBigramMatchInSubject;
  if (countBigramMatchInSubject != [equalCopy countBigramMatchInSubject])
  {
    goto LABEL_72;
  }

  countNgramMatchInSubject = self->_countNgramMatchInSubject;
  if (countNgramMatchInSubject != [equalCopy countNgramMatchInSubject])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInSubject = self->_countUnigramPrefixMatchInSubject;
  if (countUnigramPrefixMatchInSubject != [equalCopy countUnigramPrefixMatchInSubject])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInSubject = self->_countBigramPrefixMatchInSubject;
  if (countBigramPrefixMatchInSubject != [equalCopy countBigramPrefixMatchInSubject])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInSubject = self->_countNgramPrefixMatchInSubject;
  if (countNgramPrefixMatchInSubject != [equalCopy countNgramPrefixMatchInSubject])
  {
    goto LABEL_72;
  }

  countUnigramMatchInTextContent = self->_countUnigramMatchInTextContent;
  if (countUnigramMatchInTextContent != [equalCopy countUnigramMatchInTextContent])
  {
    goto LABEL_72;
  }

  countBigramMatchInTextContent = self->_countBigramMatchInTextContent;
  if (countBigramMatchInTextContent != [equalCopy countBigramMatchInTextContent])
  {
    goto LABEL_72;
  }

  countNgramMatchInTextContent = self->_countNgramMatchInTextContent;
  if (countNgramMatchInTextContent != [equalCopy countNgramMatchInTextContent])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInTextContent = self->_countUnigramPrefixMatchInTextContent;
  if (countUnigramPrefixMatchInTextContent != [equalCopy countUnigramPrefixMatchInTextContent])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInTextContent = self->_countBigramPrefixMatchInTextContent;
  if (countBigramPrefixMatchInTextContent != [equalCopy countBigramPrefixMatchInTextContent])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInTextContent = self->_countNgramPrefixMatchInTextContent;
  if (countNgramPrefixMatchInTextContent != [equalCopy countNgramPrefixMatchInTextContent])
  {
    goto LABEL_72;
  }

  countUnigramMatchInRecipients = self->_countUnigramMatchInRecipients;
  if (countUnigramMatchInRecipients != [equalCopy countUnigramMatchInRecipients])
  {
    goto LABEL_72;
  }

  countBigramMatchInRecipients = self->_countBigramMatchInRecipients;
  if (countBigramMatchInRecipients != [equalCopy countBigramMatchInRecipients])
  {
    goto LABEL_72;
  }

  countNgramMatchInRecipients = self->_countNgramMatchInRecipients;
  if (countNgramMatchInRecipients != [equalCopy countNgramMatchInRecipients])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInRecipients = self->_countUnigramPrefixMatchInRecipients;
  if (countUnigramPrefixMatchInRecipients != [equalCopy countUnigramPrefixMatchInRecipients])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInRecipients = self->_countBigramPrefixMatchInRecipients;
  if (countBigramPrefixMatchInRecipients != [equalCopy countBigramPrefixMatchInRecipients])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInRecipients = self->_countNgramPrefixMatchInRecipients;
  if (countNgramPrefixMatchInRecipients != [equalCopy countNgramPrefixMatchInRecipients])
  {
    goto LABEL_72;
  }

  countUnigramMatchInRecipientEmailAddresses = self->_countUnigramMatchInRecipientEmailAddresses;
  if (countUnigramMatchInRecipientEmailAddresses != [equalCopy countUnigramMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramMatchInRecipientEmailAddresses = self->_countBigramMatchInRecipientEmailAddresses;
  if (countBigramMatchInRecipientEmailAddresses != [equalCopy countBigramMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramMatchInRecipientEmailAddresses = self->_countNgramMatchInRecipientEmailAddresses;
  if (countNgramMatchInRecipientEmailAddresses != [equalCopy countNgramMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInRecipientEmailAddresses = self->_countUnigramPrefixMatchInRecipientEmailAddresses;
  if (countUnigramPrefixMatchInRecipientEmailAddresses != [equalCopy countUnigramPrefixMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInRecipientEmailAddresses = self->_countBigramPrefixMatchInRecipientEmailAddresses;
  if (countBigramPrefixMatchInRecipientEmailAddresses != [equalCopy countBigramPrefixMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInRecipientEmailAddresses = self->_countNgramPrefixMatchInRecipientEmailAddresses;
  if (countNgramPrefixMatchInRecipientEmailAddresses != [equalCopy countNgramPrefixMatchInRecipientEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramMatchInEmailAddresses = self->_countUnigramMatchInEmailAddresses;
  if (countUnigramMatchInEmailAddresses != [equalCopy countUnigramMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramMatchInEmailAddresses = self->_countBigramMatchInEmailAddresses;
  if (countBigramMatchInEmailAddresses != [equalCopy countBigramMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramMatchInEmailAddresses = self->_countNgramMatchInEmailAddresses;
  if (countNgramMatchInEmailAddresses != [equalCopy countNgramMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInEmailAddresses = self->_countUnigramPrefixMatchInEmailAddresses;
  if (countUnigramPrefixMatchInEmailAddresses != [equalCopy countUnigramPrefixMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInEmailAddresses = self->_countBigramPrefixMatchInEmailAddresses;
  if (countBigramPrefixMatchInEmailAddresses != [equalCopy countBigramPrefixMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countNgramPrefixMatchInEmailAddresses = self->_countNgramPrefixMatchInEmailAddresses;
  if (countNgramPrefixMatchInEmailAddresses != [equalCopy countNgramPrefixMatchInEmailAddresses])
  {
    goto LABEL_72;
  }

  countUnigramMatchInAttachmentTypes = self->_countUnigramMatchInAttachmentTypes;
  if (countUnigramMatchInAttachmentTypes != [equalCopy countUnigramMatchInAttachmentTypes])
  {
    goto LABEL_72;
  }

  countBigramMatchInAttachmentTypes = self->_countBigramMatchInAttachmentTypes;
  if (countBigramMatchInAttachmentTypes != [equalCopy countBigramMatchInAttachmentTypes])
  {
    goto LABEL_72;
  }

  countNgramMatchInAttachmentTypes = self->_countNgramMatchInAttachmentTypes;
  if (countNgramMatchInAttachmentTypes != [equalCopy countNgramMatchInAttachmentTypes])
  {
    goto LABEL_72;
  }

  countUnigramPrefixMatchInAttachmentTypes = self->_countUnigramPrefixMatchInAttachmentTypes;
  if (countUnigramPrefixMatchInAttachmentTypes != [equalCopy countUnigramPrefixMatchInAttachmentTypes])
  {
    goto LABEL_72;
  }

  countBigramPrefixMatchInAttachmentTypes = self->_countBigramPrefixMatchInAttachmentTypes;
  if (countBigramPrefixMatchInAttachmentTypes == [equalCopy countBigramPrefixMatchInAttachmentTypes] && (countNgramPrefixMatchInAttachmentTypes = self->_countNgramPrefixMatchInAttachmentTypes, countNgramPrefixMatchInAttachmentTypes == objc_msgSend(equalCopy, "countNgramPrefixMatchInAttachmentTypes")) && (countUnigramMatchInAttachmentNames = self->_countUnigramMatchInAttachmentNames, countUnigramMatchInAttachmentNames == objc_msgSend(equalCopy, "countUnigramMatchInAttachmentNames")) && (countBigramMatchInAttachmentNames = self->_countBigramMatchInAttachmentNames, countBigramMatchInAttachmentNames == objc_msgSend(equalCopy, "countBigramMatchInAttachmentNames")) && (countNgramMatchInAttachmentNames = self->_countNgramMatchInAttachmentNames, countNgramMatchInAttachmentNames == objc_msgSend(equalCopy, "countNgramMatchInAttachmentNames")) && (countUnigramPrefixMatchInAttachmentNames = self->_countUnigramPrefixMatchInAttachmentNames, countUnigramPrefixMatchInAttachmentNames == objc_msgSend(equalCopy, "countUnigramPrefixMatchInAttachmentNames")) && (countBigramPrefixMatchInAttachmentNames = self->_countBigramPrefixMatchInAttachmentNames, countBigramPrefixMatchInAttachmentNames == objc_msgSend(equalCopy, "countBigramPrefixMatchInAttachmentNames")))
  {
    countNgramPrefixMatchInAttachmentNames = self->_countNgramPrefixMatchInAttachmentNames;
    v79 = countNgramPrefixMatchInAttachmentNames == [equalCopy countNgramPrefixMatchInAttachmentNames];
  }

  else
  {
LABEL_72:
    v79 = 0;
  }

  return v79;
}

- (void)writeTo:(id)to
{
  to;
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

- (_CPMailRankingSignalsForFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v24.receiver = self;
  v24.super_class = _CPMailRankingSignalsForFeedback;
  v5 = [(_CPMailRankingSignalsForFeedback *)&v24 init];
  if (v5)
  {
    -[_CPMailRankingSignalsForFeedback setWasReorderedByRecency:](v5, "setWasReorderedByRecency:", [facadeCopy wasReorderedByRecency]);
    -[_CPMailRankingSignalsForFeedback setNumEngagements:](v5, "setNumEngagements:", [facadeCopy numEngagements]);
    -[_CPMailRankingSignalsForFeedback setNumDaysEngagedLast30Days:](v5, "setNumDaysEngagedLast30Days:", [facadeCopy numDaysEngagedLast30Days]);
    averageEngagementAgeLast7Days = [facadeCopy averageEngagementAgeLast7Days];

    if (averageEngagementAgeLast7Days)
    {
      averageEngagementAgeLast7Days2 = [facadeCopy averageEngagementAgeLast7Days];
      -[_CPMailRankingSignalsForFeedback setAverageEngagementAgeLast7Days:](v5, "setAverageEngagementAgeLast7Days:", [averageEngagementAgeLast7Days2 intValue]);
    }

    averageEngagementAgeLast14Days = [facadeCopy averageEngagementAgeLast14Days];

    if (averageEngagementAgeLast14Days)
    {
      averageEngagementAgeLast14Days2 = [facadeCopy averageEngagementAgeLast14Days];
      -[_CPMailRankingSignalsForFeedback setAverageEngagementAgeLast14Days:](v5, "setAverageEngagementAgeLast14Days:", [averageEngagementAgeLast14Days2 intValue]);
    }

    averageEngagementAgeLast21Days = [facadeCopy averageEngagementAgeLast21Days];

    if (averageEngagementAgeLast21Days)
    {
      averageEngagementAgeLast21Days2 = [facadeCopy averageEngagementAgeLast21Days];
      -[_CPMailRankingSignalsForFeedback setAverageEngagementAgeLast21Days:](v5, "setAverageEngagementAgeLast21Days:", [averageEngagementAgeLast21Days2 intValue]);
    }

    averageEngagementAgeLast30Days = [facadeCopy averageEngagementAgeLast30Days];

    if (averageEngagementAgeLast30Days)
    {
      averageEngagementAgeLast30Days2 = [facadeCopy averageEngagementAgeLast30Days];
      -[_CPMailRankingSignalsForFeedback setAverageEngagementAgeLast30Days:](v5, "setAverageEngagementAgeLast30Days:", [averageEngagementAgeLast30Days2 intValue]);
    }

    -[_CPMailRankingSignalsForFeedback setDaysSinceReceipt:](v5, "setDaysSinceReceipt:", [facadeCopy daysSinceReceipt]);
    l1Score = [facadeCopy l1Score];

    if (l1Score)
    {
      l1Score2 = [facadeCopy l1Score];
      [l1Score2 floatValue];
      [(_CPMailRankingSignalsForFeedback *)v5 setL1Score:?];
    }

    l2Score = [facadeCopy l2Score];

    if (l2Score)
    {
      l2Score2 = [facadeCopy l2Score];
      [l2Score2 floatValue];
      [(_CPMailRankingSignalsForFeedback *)v5 setL2Score:?];
    }

    -[_CPMailRankingSignalsForFeedback setIsFlagged:](v5, "setIsFlagged:", [facadeCopy isFlagged]);
    -[_CPMailRankingSignalsForFeedback setIsRepliedTo:](v5, "setIsRepliedTo:", [facadeCopy isRepliedTo]);
    -[_CPMailRankingSignalsForFeedback setIsSemanticMatch:](v5, "setIsSemanticMatch:", [facadeCopy isSemanticMatch]);
    -[_CPMailRankingSignalsForFeedback setIsSyntacticMatch:](v5, "setIsSyntacticMatch:", [facadeCopy isSyntacticMatch]);
    semanticScore = [facadeCopy semanticScore];

    if (semanticScore)
    {
      semanticScore2 = [facadeCopy semanticScore];
      [semanticScore2 floatValue];
      [(_CPMailRankingSignalsForFeedback *)v5 setSemanticScore:?];
    }

    syntacticScore = [facadeCopy syntacticScore];

    if (syntacticScore)
    {
      syntacticScore2 = [facadeCopy syntacticScore];
      [syntacticScore2 floatValue];
      [(_CPMailRankingSignalsForFeedback *)v5 setSyntacticScore:?];
    }

    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInAuthors:](v5, "setCountUnigramMatchInAuthors:", [facadeCopy countUnigramMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInAuthors:](v5, "setCountBigramMatchInAuthors:", [facadeCopy countBigramMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInAuthors:](v5, "setCountNgramMatchInAuthors:", [facadeCopy countNgramMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInAuthors:](v5, "setCountUnigramPrefixMatchInAuthors:", [facadeCopy countUnigramPrefixMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInAuthors:](v5, "setCountBigramPrefixMatchInAuthors:", [facadeCopy countBigramPrefixMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInAuthors:](v5, "setCountNgramPrefixMatchInAuthors:", [facadeCopy countNgramPrefixMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInAuthorEmailAddresses:](v5, "setCountUnigramMatchInAuthorEmailAddresses:", [facadeCopy countUnigramMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInAuthorEmailAddresses:](v5, "setCountBigramMatchInAuthorEmailAddresses:", [facadeCopy countBigramMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInAuthorEmailAddresses:](v5, "setCountNgramMatchInAuthorEmailAddresses:", [facadeCopy countNgramMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInAuthorEmailAddresses:](v5, "setCountUnigramPrefixMatchInAuthorEmailAddresses:", [facadeCopy countUnigramPrefixMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInAuthorEmailAddresses:](v5, "setCountBigramPrefixMatchInAuthorEmailAddresses:", [facadeCopy countBigramPrefixMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInAuthorEmailAddresses:](v5, "setCountNgramPrefixMatchInAuthorEmailAddresses:", [facadeCopy countNgramPrefixMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInSubject:](v5, "setCountUnigramMatchInSubject:", [facadeCopy countUnigramMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInSubject:](v5, "setCountBigramMatchInSubject:", [facadeCopy countBigramMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInSubject:](v5, "setCountNgramMatchInSubject:", [facadeCopy countNgramMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInSubject:](v5, "setCountUnigramPrefixMatchInSubject:", [facadeCopy countUnigramPrefixMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInSubject:](v5, "setCountBigramPrefixMatchInSubject:", [facadeCopy countBigramPrefixMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInSubject:](v5, "setCountNgramPrefixMatchInSubject:", [facadeCopy countNgramPrefixMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInTextContent:](v5, "setCountUnigramMatchInTextContent:", [facadeCopy countUnigramMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInTextContent:](v5, "setCountBigramMatchInTextContent:", [facadeCopy countBigramMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInTextContent:](v5, "setCountNgramMatchInTextContent:", [facadeCopy countNgramMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInTextContent:](v5, "setCountUnigramPrefixMatchInTextContent:", [facadeCopy countUnigramPrefixMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInTextContent:](v5, "setCountBigramPrefixMatchInTextContent:", [facadeCopy countBigramPrefixMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInTextContent:](v5, "setCountNgramPrefixMatchInTextContent:", [facadeCopy countNgramPrefixMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInRecipients:](v5, "setCountUnigramMatchInRecipients:", [facadeCopy countUnigramMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInRecipients:](v5, "setCountBigramMatchInRecipients:", [facadeCopy countBigramMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInRecipients:](v5, "setCountNgramMatchInRecipients:", [facadeCopy countNgramMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInRecipients:](v5, "setCountUnigramPrefixMatchInRecipients:", [facadeCopy countUnigramPrefixMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInRecipients:](v5, "setCountBigramPrefixMatchInRecipients:", [facadeCopy countBigramPrefixMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInRecipients:](v5, "setCountNgramPrefixMatchInRecipients:", [facadeCopy countNgramPrefixMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInRecipientEmailAddresses:](v5, "setCountUnigramMatchInRecipientEmailAddresses:", [facadeCopy countUnigramMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInRecipientEmailAddresses:](v5, "setCountBigramMatchInRecipientEmailAddresses:", [facadeCopy countBigramMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInRecipientEmailAddresses:](v5, "setCountNgramMatchInRecipientEmailAddresses:", [facadeCopy countNgramMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInRecipientEmailAddresses:](v5, "setCountUnigramPrefixMatchInRecipientEmailAddresses:", [facadeCopy countUnigramPrefixMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInRecipientEmailAddresses:](v5, "setCountBigramPrefixMatchInRecipientEmailAddresses:", [facadeCopy countBigramPrefixMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInRecipientEmailAddresses:](v5, "setCountNgramPrefixMatchInRecipientEmailAddresses:", [facadeCopy countNgramPrefixMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInEmailAddresses:](v5, "setCountUnigramMatchInEmailAddresses:", [facadeCopy countUnigramMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInEmailAddresses:](v5, "setCountBigramMatchInEmailAddresses:", [facadeCopy countBigramMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInEmailAddresses:](v5, "setCountNgramMatchInEmailAddresses:", [facadeCopy countNgramMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInEmailAddresses:](v5, "setCountUnigramPrefixMatchInEmailAddresses:", [facadeCopy countUnigramPrefixMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInEmailAddresses:](v5, "setCountBigramPrefixMatchInEmailAddresses:", [facadeCopy countBigramPrefixMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInEmailAddresses:](v5, "setCountNgramPrefixMatchInEmailAddresses:", [facadeCopy countNgramPrefixMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInAttachmentTypes:](v5, "setCountUnigramMatchInAttachmentTypes:", [facadeCopy countUnigramMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInAttachmentTypes:](v5, "setCountBigramMatchInAttachmentTypes:", [facadeCopy countBigramMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInAttachmentTypes:](v5, "setCountNgramMatchInAttachmentTypes:", [facadeCopy countNgramMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInAttachmentTypes:](v5, "setCountUnigramPrefixMatchInAttachmentTypes:", [facadeCopy countUnigramPrefixMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInAttachmentTypes:](v5, "setCountBigramPrefixMatchInAttachmentTypes:", [facadeCopy countBigramPrefixMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInAttachmentTypes:](v5, "setCountNgramPrefixMatchInAttachmentTypes:", [facadeCopy countNgramPrefixMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInAttachmentNames:](v5, "setCountUnigramMatchInAttachmentNames:", [facadeCopy countUnigramMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInAttachmentNames:](v5, "setCountBigramMatchInAttachmentNames:", [facadeCopy countBigramMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInAttachmentNames:](v5, "setCountNgramMatchInAttachmentNames:", [facadeCopy countNgramMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInAttachmentNames:](v5, "setCountUnigramPrefixMatchInAttachmentNames:", [facadeCopy countUnigramPrefixMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInAttachmentNames:](v5, "setCountBigramPrefixMatchInAttachmentNames:", [facadeCopy countBigramPrefixMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInAttachmentNames:](v5, "setCountNgramPrefixMatchInAttachmentNames:", [facadeCopy countNgramPrefixMatchInAttachmentNames]);
    v22 = v5;
  }

  return v5;
}

@end