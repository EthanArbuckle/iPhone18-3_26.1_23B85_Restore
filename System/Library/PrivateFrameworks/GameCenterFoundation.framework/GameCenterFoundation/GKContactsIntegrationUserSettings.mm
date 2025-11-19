@interface GKContactsIntegrationUserSettings
+ (id)associationIDFromServerResult:(id)a3;
+ (id)dateFromServerResult:(id)a3;
+ (int)integrationConsentValueFromServerResult:(id)a3;
+ (void)applySettingsToObject:(id)a3 fromResults:(id)a4;
@end

@implementation GKContactsIntegrationUserSettings

+ (int)integrationConsentValueFromServerResult:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if ([v4 isEqualToString:@"allowed"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"denied"] - 1;
  }

  return v5;
}

+ (id)associationIDFromServerResult:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

+ (id)dateFromServerResult:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEAA8] _gkDateFromServerTimestamp:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)applySettingsToObject:(id)a3 fromResults:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:@"allow-contact-lookup"];
  [v7 setContactsIntegrationConsent:{objc_msgSend(a1, "integrationConsentValueFromServerResult:", v8)}];

  v9 = [v6 objectForKeyedSubscript:@"contact-association-id"];
  v10 = [a1 associationIDFromServerResult:v9];
  [v7 setContactsAssociationID:v10];

  v12 = [v6 objectForKeyedSubscript:@"last-updated"];

  v11 = [a1 dateFromServerResult:v12];
  [v7 setServiceLastUpdatedTimestamp:v11];
}

@end