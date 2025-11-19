@interface PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle
- (PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle)initWithArchivedParent:(id)a3;
- (void)reportProvisioningCompleteWithState:(id)a3 success:(BOOL)a4;
- (void)reportProvisioningStartWithState:(id)a3;
@end

@implementation PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle

- (PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle)initWithArchivedParent:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle;
  return [(PKProvisioningAnalyticsSessionSubjectHandle *)&v4 _initWithSubject:@"attribution" archivedParent:a3];
}

- (void)reportProvisioningStartWithState:(id)a3
{
  v8 = a3;
  v4 = [v8 campaignAttributionReferrerIdentifier];
  if (v4)
  {
    [(PKProvisioningAnalyticsSessionSubjectHandle *)self _startReportingIfNecessary];
    v5 = [v8 environment];
    if (v5 != @"partner_app.payment_sheet")
    {
      v6 = v5;
      if (!v5)
      {
LABEL_7:
        +[PKAnalyticsReporter reportCampaignIdentifier:eventType:referralSource:deepLinkType:productType:](PKAnalyticsReporter, "reportCampaignIdentifier:eventType:referralSource:deepLinkType:productType:", v4, 1, v6, 0, [v8 campaignAttributionProductType]);
        goto LABEL_8;
      }

      v7 = [(__CFString *)v5 isEqualToString:@"partner_app.payment_sheet"];

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

- (void)reportProvisioningCompleteWithState:(id)a3 success:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [v10 campaignAttributionReferrerIdentifier];
  if (v6)
  {
    [(PKProvisioningAnalyticsSessionSubjectHandle *)self _startReportingIfNecessary];
    v7 = [v10 environment];
    v8 = v7;
    if (v7 == @"partner_app.payment_sheet")
    {
      v9 = 4;
    }

    else if (v7)
    {
      v9 = [(__CFString *)v7 isEqualToString:@"partner_app.payment_sheet"]? 4 : 0;
    }

    else
    {
      v9 = 0;
    }

    if (v4)
    {
      +[PKAnalyticsReporter reportCampaignIdentifier:eventType:referralSource:deepLinkType:productType:](PKAnalyticsReporter, "reportCampaignIdentifier:eventType:referralSource:deepLinkType:productType:", v6, 2, v9, 0, [v10 campaignAttributionProductType]);
    }
  }
}

@end