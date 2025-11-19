@interface ECIMAPAccount
- (BOOL)compactWhenClosingMailboxes;
- (BOOL)hasServerDefinedAllMailMailbox;
- (BOOL)hasServerDefinedArchiveMailbox;
- (BOOL)hasServerDefinedDraftsMailbox;
- (BOOL)hasServerDefinedJunkMailbox;
- (BOOL)hasServerDefinedSentMailbox;
- (BOOL)hasServerDefinedTrashMailbox;
- (BOOL)ignoreServerDefinedArchiveMailbox;
- (BOOL)ignoreServerDefinedDraftsMailbox;
- (BOOL)ignoreServerDefinedJunkMailbox;
- (BOOL)ignoreServerDefinedSentMailbox;
- (BOOL)ignoreServerDefinedTrashMailbox;
- (BOOL)needsGmailLablesCleanup;
- (BOOL)queriedUserToSetPathPrefix;
- (BOOL)shouldUseGmailLabelStores;
- (BOOL)shouldUseGmailLabelStoresIsSet;
- (id)_hostnameFromParentAccount:(id)a3;
- (id)portNumberObject;
- (id)usesSSLObject;
- (int64_t)daysBetweenSyncs;
- (void)setDaysBetweenSyncs:(int64_t)a3;
@end

@implementation ECIMAPAccount

- (BOOL)compactWhenClosingMailboxes
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"CompactWhenClosingMailboxes"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int64_t)daysBetweenSyncs
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"DaysBetweenSyncs"];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setDaysBetweenSyncs:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)queriedUserToSetPathPrefix
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"QueriedUserToSetPathPrefix"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)shouldUseGmailLabelStores
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"ShouldUseGmailLabelStores"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)shouldUseGmailLabelStoresIsSet
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"ShouldUseGmailLabelStores"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)needsGmailLablesCleanup
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"NeedsGmailLabelsCleanup"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)hasServerDefinedAllMailMailbox
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"HasServerDefinedAllMailMailbox"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)hasServerDefinedArchiveMailbox
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"HasServerDefinedArchiveMailbox"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)hasServerDefinedDraftsMailbox
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"HasServerDefinedDraftsMailbox"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)hasServerDefinedJunkMailbox
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"HasServerDefinedJunkMailbox"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)hasServerDefinedSentMailbox
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"HasServerDefinedSentMailbox"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)hasServerDefinedTrashMailbox
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"HasServerDefinedTrashMailbox"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)ignoreServerDefinedArchiveMailbox
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"IgnoreServerDefinedArchiveMailbox"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)ignoreServerDefinedDraftsMailbox
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"IgnoreServerDefinedDraftsMailbox"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)ignoreServerDefinedJunkMailbox
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"IgnoreServerDefinedJunkMailbox"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)ignoreServerDefinedSentMailbox
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"IgnoreServerDefinedSentMailbox"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)ignoreServerDefinedTrashMailbox
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"IgnoreServerDefinedTrashMailbox"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_hostnameFromParentAccount:(id)a3
{
  v3 = [a3 propertiesForDataclass:*MEMORY[0x277CB9150]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CB8AD0]];

  return v4;
}

- (id)portNumberObject
{
  v12.receiver = self;
  v12.super_class = ECIMAPAccount;
  v3 = [(ECAccount *)&v12 portNumberObject];
  if (!v3)
  {
    v4 = [(ECAccount *)self systemAccount];
    v5 = [v4 parentAccount];

    v6 = [v5 propertiesForDataclass:*MEMORY[0x277CB9150]];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CB8AD8]];

    if (v7)
    {
      v8 = [(ECAccount *)self standardPorts];
      if ([v8 containsObject:v7])
      {
      }

      else
      {
        v9 = [(ECAccount *)self standardSSLPorts];
        v10 = [v9 containsObject:v7];

        if ((v10 & 1) == 0)
        {
          v3 = v7;
          goto LABEL_7;
        }
      }
    }

    v3 = 0;
LABEL_7:
  }

  return v3;
}

- (id)usesSSLObject
{
  v9.receiver = self;
  v9.super_class = ECIMAPAccount;
  v3 = [(ECAccount *)&v9 usesSSLObject];
  if (!v3)
  {
    v4 = [(ECAccount *)self systemAccount];
    v5 = [v4 parentAccount];

    v6 = [v5 propertiesForDataclass:*MEMORY[0x277CB9150]];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CB8AE0]];

    if ([v7 BOOLValue])
    {
      v3 = v7;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end