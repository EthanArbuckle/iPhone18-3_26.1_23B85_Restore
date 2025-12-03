@interface CNAssistantID
+ (id)assistantIDFromContact:(id)contact;
+ (id)assistantIDFromContactID:(id)d;
+ (id)assistantIDFromContainer:(id)container;
+ (id)assistantIDFromExternalIdentifier:(id)identifier;
+ (id)assistantIDFromGroup:(id)group;
+ (id)contactIDFromAssistantID:(id)d;
+ (id)containerIDFromAssistantID:(id)d;
+ (id)databaseID;
+ (id)externalIdentifierFromAssistantID:(id)d;
+ (id)groupIDFromAssistantID:(id)d;
@end

@implementation CNAssistantID

+ (id)databaseID
{
  v2 = objc_opt_new();
  v3 = [v2 identifierWithError:0];

  return v3;
}

+ (id)assistantIDFromContactID:(id)d
{
  v12[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = +[CNAssistantID databaseID];
  v5 = objc_opt_new();
  v12[0] = *MEMORY[0x277CBD010];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [v5 unifiedContactWithIdentifier:dCopy keysToFetch:v6 error:0];

  if (v7)
  {
    iOSLegacyIdentifier = [v7 iOSLegacyIdentifier];
  }

  else
  {
    iOSLegacyIdentifier = 0;
  }

  v9 = [CNAssistantID assistantIDOfType:@"contact" recordID:iOSLegacyIdentifier databaseID:v4 identifier:dCopy];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)assistantIDFromContact:(id)contact
{
  v14[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  if ([contactCopy isKeyAvailable:*MEMORY[0x277CBD018]])
  {
    identifier = [contactCopy identifier];
    v5 = +[CNAssistantID databaseID];
    v6 = *MEMORY[0x277CBD010];
    if ([contactCopy isKeyAvailable:*MEMORY[0x277CBD010]])
    {
      iOSLegacyIdentifier = 0;
    }

    else
    {
      v9 = objc_opt_new();
      v14[0] = v6;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      v11 = [v9 unifiedContactWithIdentifier:identifier keysToFetch:v10 error:0];

      if (v11)
      {
        iOSLegacyIdentifier = [v11 iOSLegacyIdentifier];
      }

      else
      {
        iOSLegacyIdentifier = 0;
      }
    }

    v8 = [CNAssistantID assistantIDOfType:@"contact" recordID:iOSLegacyIdentifier databaseID:v5 identifier:identifier];
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)assistantIDFromContainer:(id)container
{
  containerCopy = container;
  identifier = [containerCopy identifier];
  iOSLegacyIdentifier = [containerCopy iOSLegacyIdentifier];

  v6 = +[CNAssistantID databaseID];
  v7 = [CNAssistantID assistantIDOfType:@"container" recordID:iOSLegacyIdentifier databaseID:v6 identifier:identifier];

  return v7;
}

+ (id)assistantIDFromGroup:(id)group
{
  groupCopy = group;
  identifier = [groupCopy identifier];
  iOSLegacyIdentifier = [groupCopy iOSLegacyIdentifier];

  v6 = +[CNAssistantID databaseID];
  v7 = [CNAssistantID assistantIDOfType:@"group" recordID:iOSLegacyIdentifier databaseID:v6 identifier:identifier];

  return v7;
}

+ (id)contactIDFromAssistantID:(id)d
{
  dCopy = d;
  scheme = [dCopy scheme];
  if (![scheme isEqualToString:@"com.apple.contacts"])
  {
    v7 = 0;
    goto LABEL_5;
  }

  host = [dCopy host];
  v6 = [host isEqualToString:@"contact"];

  if (v6)
  {
    scheme = GetURLParameters(dCopy);
    v7 = [scheme objectForKeyedSubscript:@"identifier"];
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)containerIDFromAssistantID:(id)d
{
  dCopy = d;
  scheme = [dCopy scheme];
  if (![scheme isEqualToString:@"com.apple.contacts"])
  {
    v7 = 0;
    goto LABEL_5;
  }

  host = [dCopy host];
  v6 = [host isEqualToString:@"container"];

  if (v6)
  {
    scheme = GetURLParameters(dCopy);
    v7 = [scheme objectForKeyedSubscript:@"identifier"];
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)groupIDFromAssistantID:(id)d
{
  dCopy = d;
  scheme = [dCopy scheme];
  if (![scheme isEqualToString:@"com.apple.contacts"])
  {
    v7 = 0;
    goto LABEL_5;
  }

  host = [dCopy host];
  v6 = [host isEqualToString:@"group"];

  if (v6)
  {
    scheme = GetURLParameters(dCopy);
    v7 = [scheme objectForKeyedSubscript:@"identifier"];
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)assistantIDFromExternalIdentifier:(id)identifier
{
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.contacts://externalPerson?externalIdentifier=%@", identifier];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:identifier];

  return v4;
}

+ (id)externalIdentifierFromAssistantID:(id)d
{
  dCopy = d;
  scheme = [dCopy scheme];
  v5 = [scheme isEqualToString:@"com.apple.contacts"];

  if (v5)
  {
    v6 = GetURLParameters(dCopy);
    v7 = [v6 objectForKeyedSubscript:@"externalIdentifier"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end