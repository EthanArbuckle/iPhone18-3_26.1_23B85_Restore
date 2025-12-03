@interface PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle
- (PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle)initWithArchivedParent:(id)parent;
- (void)reportProvisioningCompleteWithState:(id)state success:(BOOL)success;
- (void)reportProvisioningStartWithState:(id)state;
@end

@implementation PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle

- (PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle)initWithArchivedParent:(id)parent
{
  v4.receiver = self;
  v4.super_class = PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle;
  return [(PKProvisioningAnalyticsSessionSubjectHandle *)&v4 _initWithSubject:@"attribution" archivedParent:parent];
}

- (void)reportProvisioningStartWithState:(id)state
{
  stateCopy = state;
  campaignAttributionReferrerIdentifier = [stateCopy campaignAttributionReferrerIdentifier];
  if (campaignAttributionReferrerIdentifier)
  {
    [(PKProvisioningAnalyticsSessionSubjectHandle *)self _startReportingIfNecessary];
    environment = [stateCopy environment];
    if (environment != @"partner_app.payment_sheet")
    {
      v6 = environment;
      if (!environment)
      {
LABEL_7:
        +[PKAnalyticsReporter reportCampaignIdentifier:eventType:referralSource:deepLinkType:productType:](PKAnalyticsReporter, "reportCampaignIdentifier:eventType:referralSource:deepLinkType:productType:", campaignAttributionReferrerIdentifier, 1, v6, 0, [stateCopy campaignAttributionProductType]);
        goto LABEL_8;
      }

      v7 = [(__CFString *)environment isEqualToString:@"partner_app.payment_sheet"];

      if (!v7)
      {
        v6 = 0;
        goto LABEL_7;
      }
    }

    v6 = 4;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)reportProvisioningCompleteWithState:(id)state success:(BOOL)success
{
  successCopy = success;
  stateCopy = state;
  campaignAttributionReferrerIdentifier = [stateCopy campaignAttributionReferrerIdentifier];
  if (campaignAttributionReferrerIdentifier)
  {
    [(PKProvisioningAnalyticsSessionSubjectHandle *)self _startReportingIfNecessary];
    environment = [stateCopy environment];
    v8 = environment;
    if (environment == @"partner_app.payment_sheet")
    {
      v9 = 4;
    }

    else if (environment)
    {
      v9 = [(__CFString *)environment isEqualToString:@"partner_app.payment_sheet"]? 4 : 0;
    }

    else
    {
      v9 = 0;
    }

    if (successCopy)
    {
      +[PKAnalyticsReporter reportCampaignIdentifier:eventType:referralSource:deepLinkType:productType:](PKAnalyticsReporter, "reportCampaignIdentifier:eventType:referralSource:deepLinkType:productType:", campaignAttributionReferrerIdentifier, 2, v9, 0, [stateCopy campaignAttributionProductType]);
    }
  }
}

@end