@interface _CPUsageSinceLookback
- (BOOL)isEqual:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPUsageSinceLookback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  collectionStartTimestamp = self->_collectionStartTimestamp;
  if (collectionStartTimestamp != [v4 collectionStartTimestamp])
  {
    goto LABEL_23;
  }

  collectionEndTimestamp = self->_collectionEndTimestamp;
  if (collectionEndTimestamp != [v4 collectionEndTimestamp])
  {
    goto LABEL_23;
  }

  client = self->_client;
  if (client != [v4 client])
  {
    goto LABEL_23;
  }

  totalUsagesInCollectionPeriod = self->_totalUsagesInCollectionPeriod;
  if (totalUsagesInCollectionPeriod != [v4 totalUsagesInCollectionPeriod])
  {
    goto LABEL_23;
  }

  v9 = [(_CPUsageSinceLookback *)self context];
  v10 = [v4 context];
  v11 = v10;
  if ((v9 != 0) == (v10 == 0))
  {

LABEL_23:
    v28 = 0;
    goto LABEL_24;
  }

  v12 = [(_CPUsageSinceLookback *)self context];
  if (v12)
  {
    v13 = v12;
    v14 = [(_CPUsageSinceLookback *)self context];
    v15 = [v4 context];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  configuredLookbackTimeInDays = self->_configuredLookbackTimeInDays;
  if (configuredLookbackTimeInDays != [v4 configuredLookbackTimeInDays])
  {
    goto LABEL_23;
  }

  activeDaysInCollectionPeriod = self->_activeDaysInCollectionPeriod;
  if (activeDaysInCollectionPeriod != [v4 activeDaysInCollectionPeriod])
  {
    goto LABEL_23;
  }

  totalEngagements = self->_totalEngagements;
  if (totalEngagements != [v4 totalEngagements])
  {
    goto LABEL_23;
  }

  isDiagnosticsAndUsageEnabled = self->_isDiagnosticsAndUsageEnabled;
  if (isDiagnosticsAndUsageEnabled != [v4 isDiagnosticsAndUsageEnabled])
  {
    goto LABEL_23;
  }

  invokedDays = self->_invokedDays;
  if (invokedDays != [v4 invokedDays])
  {
    goto LABEL_23;
  }

  zkwEngagedDays = self->_zkwEngagedDays;
  if (zkwEngagedDays != [v4 zkwEngagedDays])
  {
    goto LABEL_23;
  }

  searchedDays = self->_searchedDays;
  if (searchedDays != [v4 searchedDays])
  {
    goto LABEL_23;
  }

  suggestionOrAppleResultEngagedDays = self->_suggestionOrAppleResultEngagedDays;
  if (suggestionOrAppleResultEngagedDays != [v4 suggestionOrAppleResultEngagedDays])
  {
    goto LABEL_23;
  }

  webEngagedDays = self->_webEngagedDays;
  if (webEngagedDays != [v4 webEngagedDays])
  {
    goto LABEL_23;
  }

  voiceSearchDays = self->_voiceSearchDays;
  if (voiceSearchDays != [v4 voiceSearchDays])
  {
    goto LABEL_23;
  }

  numSearchEngagements = self->_numSearchEngagements;
  v28 = numSearchEngagements == [v4 numSearchEngagements];
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  a3;
  if ([(_CPUsageSinceLookback *)self collectionStartTimestamp])
  {
    collectionStartTimestamp = self->_collectionStartTimestamp;
    PBDataWriterWriteInt64Field();
  }

  if ([(_CPUsageSinceLookback *)self collectionEndTimestamp])
  {
    collectionEndTimestamp = self->_collectionEndTimestamp;
    PBDataWriterWriteInt64Field();
  }

  if ([(_CPUsageSinceLookback *)self client])
  {
    client = self->_client;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self totalUsagesInCollectionPeriod])
  {
    totalUsagesInCollectionPeriod = self->_totalUsagesInCollectionPeriod;
    PBDataWriterWriteInt32Field();
  }

  v8 = [(_CPUsageSinceLookback *)self context];

  if (v8)
  {
    v9 = [(_CPUsageSinceLookback *)self context];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPUsageSinceLookback *)self configuredLookbackTimeInDays])
  {
    configuredLookbackTimeInDays = self->_configuredLookbackTimeInDays;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self activeDaysInCollectionPeriod])
  {
    activeDaysInCollectionPeriod = self->_activeDaysInCollectionPeriod;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self totalEngagements])
  {
    totalEngagements = self->_totalEngagements;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self isDiagnosticsAndUsageEnabled])
  {
    isDiagnosticsAndUsageEnabled = self->_isDiagnosticsAndUsageEnabled;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPUsageSinceLookback *)self invokedDays])
  {
    invokedDays = self->_invokedDays;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self zkwEngagedDays])
  {
    zkwEngagedDays = self->_zkwEngagedDays;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self searchedDays])
  {
    searchedDays = self->_searchedDays;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self suggestionOrAppleResultEngagedDays])
  {
    suggestionOrAppleResultEngagedDays = self->_suggestionOrAppleResultEngagedDays;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self webEngagedDays])
  {
    webEngagedDays = self->_webEngagedDays;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self voiceSearchDays])
  {
    voiceSearchDays = self->_voiceSearchDays;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self numSearchEngagements])
  {
    numSearchEngagements = self->_numSearchEngagements;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

@end