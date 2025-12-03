@interface GKContactsIntegrationUserSettings
+ (id)associationIDFromServerResult:(id)result;
+ (id)dateFromServerResult:(id)result;
+ (int)integrationConsentValueFromServerResult:(id)result;
+ (void)applySettingsToObject:(id)object fromResults:(id)results;
@end

@implementation GKContactsIntegrationUserSettings

+ (int)integrationConsentValueFromServerResult:(id)result
{
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = resultCopy;
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

+ (id)associationIDFromServerResult:(id)result
{
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = resultCopy;
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

+ (id)dateFromServerResult:(id)result
{
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEAA8] _gkDateFromServerTimestamp:resultCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)applySettingsToObject:(id)object fromResults:(id)results
{
  resultsCopy = results;
  objectCopy = object;
  v8 = [resultsCopy objectForKeyedSubscript:@"allow-contact-lookup"];
  [objectCopy setContactsIntegrationConsent:{objc_msgSend(self, "integrationConsentValueFromServerResult:", v8)}];

  v9 = [resultsCopy objectForKeyedSubscript:@"contact-association-id"];
  v10 = [self associationIDFromServerResult:v9];
  [objectCopy setContactsAssociationID:v10];

  v12 = [resultsCopy objectForKeyedSubscript:@"last-updated"];

  v11 = [self dateFromServerResult:v12];
  [objectCopy setServiceLastUpdatedTimestamp:v11];
}

@end