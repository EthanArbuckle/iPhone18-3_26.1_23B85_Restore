@interface CNAssistantID
+ (id)assistantIDFromContact:(id)a3;
+ (id)assistantIDFromContactID:(id)a3;
+ (id)assistantIDFromContainer:(id)a3;
+ (id)assistantIDFromExternalIdentifier:(id)a3;
+ (id)assistantIDFromGroup:(id)a3;
+ (id)contactIDFromAssistantID:(id)a3;
+ (id)containerIDFromAssistantID:(id)a3;
+ (id)databaseID;
+ (id)externalIdentifierFromAssistantID:(id)a3;
+ (id)groupIDFromAssistantID:(id)a3;
@end

@implementation CNAssistantID

+ (id)databaseID
{
  v2 = objc_opt_new();
  v3 = [v2 identifierWithError:0];

  return v3;
}

+ (id)assistantIDFromContactID:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[CNAssistantID databaseID];
  v5 = objc_opt_new();
  v12[0] = *MEMORY[0x277CBD010];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [v5 unifiedContactWithIdentifier:v3 keysToFetch:v6 error:0];

  if (v7)
  {
    v8 = [v7 iOSLegacyIdentifier];
  }

  else
  {
    v8 = 0;
  }

  v9 = [CNAssistantID assistantIDOfType:@"contact" recordID:v8 databaseID:v4 identifier:v3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)assistantIDFromContact:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isKeyAvailable:*MEMORY[0x277CBD018]])
  {
    v4 = [v3 identifier];
    v5 = +[CNAssistantID databaseID];
    v6 = *MEMORY[0x277CBD010];
    if ([v3 isKeyAvailable:*MEMORY[0x277CBD010]])
    {
      v7 = 0;
    }

    else
    {
      v9 = objc_opt_new();
      v14[0] = v6;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      v11 = [v9 unifiedContactWithIdentifier:v4 keysToFetch:v10 error:0];

      if (v11)
      {
        v7 = [v11 iOSLegacyIdentifier];
      }

      else
      {
        v7 = 0;
      }
    }

    v8 = [CNAssistantID assistantIDOfType:@"contact" recordID:v7 databaseID:v5 identifier:v4];
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)assistantIDFromContainer:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 iOSLegacyIdentifier];

  v6 = +[CNAssistantID databaseID];
  v7 = [CNAssistantID assistantIDOfType:@"container" recordID:v5 databaseID:v6 identifier:v4];

  return v7;
}

+ (id)assistantIDFromGroup:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 iOSLegacyIdentifier];

  v6 = +[CNAssistantID databaseID];
  v7 = [CNAssistantID assistantIDOfType:@"group" recordID:v5 databaseID:v6 identifier:v4];

  return v7;
}

+ (id)contactIDFromAssistantID:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  if (![v4 isEqualToString:@"com.apple.contacts"])
  {
    v7 = 0;
    goto LABEL_5;
  }

  v5 = [v3 host];
  v6 = [v5 isEqualToString:@"contact"];

  if (v6)
  {
    v4 = GetURLParameters(v3);
    v7 = [v4 objectForKeyedSubscript:@"identifier"];
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)containerIDFromAssistantID:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  if (![v4 isEqualToString:@"com.apple.contacts"])
  {
    v7 = 0;
    goto LABEL_5;
  }

  v5 = [v3 host];
  v6 = [v5 isEqualToString:@"container"];

  if (v6)
  {
    v4 = GetURLParameters(v3);
    v7 = [v4 objectForKeyedSubscript:@"identifier"];
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)groupIDFromAssistantID:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  if (![v4 isEqualToString:@"com.apple.contacts"])
  {
    v7 = 0;
    goto LABEL_5;
  }

  v5 = [v3 host];
  v6 = [v5 isEqualToString:@"group"];

  if (v6)
  {
    v4 = GetURLParameters(v3);
    v7 = [v4 objectForKeyedSubscript:@"identifier"];
LABEL_5:

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)assistantIDFromExternalIdentifier:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.contacts://externalPerson?externalIdentifier=%@", a3];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];

  return v4;
}

+ (id)externalIdentifierFromAssistantID:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  v5 = [v4 isEqualToString:@"com.apple.contacts"];

  if (v5)
  {
    v6 = GetURLParameters(v3);
    v7 = [v6 objectForKeyedSubscript:@"externalIdentifier"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end