@interface ECSMTPAccount
- (id)_hostnameFromParentAccount:(id)a3;
- (id)portNumberObject;
- (id)usesSSLObject;
@end

@implementation ECSMTPAccount

- (id)_hostnameFromParentAccount:(id)a3
{
  v3 = [a3 propertiesForDataclass:*MEMORY[0x277CB9150]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CB8B30]];

  return v4;
}

- (id)usesSSLObject
{
  v9.receiver = self;
  v9.super_class = ECSMTPAccount;
  v3 = [(ECAccount *)&v9 usesSSLObject];
  if (!v3)
  {
    v4 = [(ECAccount *)self systemAccount];
    v5 = [v4 parentAccount];

    v6 = [v5 propertiesForDataclass:*MEMORY[0x277CB9150]];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CB8B40]];

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

- (id)portNumberObject
{
  v12.receiver = self;
  v12.super_class = ECSMTPAccount;
  v3 = [(ECAccount *)&v12 portNumberObject];
  if (!v3)
  {
    v4 = [(ECAccount *)self systemAccount];
    v5 = [v4 parentAccount];

    v6 = [v5 propertiesForDataclass:*MEMORY[0x277CB9150]];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CB8B38]];

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

@end