@interface ECSMTPAccount
- (id)_hostnameFromParentAccount:(id)account;
- (id)portNumberObject;
- (id)usesSSLObject;
@end

@implementation ECSMTPAccount

- (id)_hostnameFromParentAccount:(id)account
{
  v3 = [account propertiesForDataclass:*MEMORY[0x277CB9150]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CB8B30]];

  return v4;
}

- (id)usesSSLObject
{
  v9.receiver = self;
  v9.super_class = ECSMTPAccount;
  usesSSLObject = [(ECAccount *)&v9 usesSSLObject];
  if (!usesSSLObject)
  {
    systemAccount = [(ECAccount *)self systemAccount];
    parentAccount = [systemAccount parentAccount];

    v6 = [parentAccount propertiesForDataclass:*MEMORY[0x277CB9150]];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CB8B40]];

    if ([v7 BOOLValue])
    {
      usesSSLObject = v7;
    }

    else
    {
      usesSSLObject = 0;
    }
  }

  return usesSSLObject;
}

- (id)portNumberObject
{
  v12.receiver = self;
  v12.super_class = ECSMTPAccount;
  portNumberObject = [(ECAccount *)&v12 portNumberObject];
  if (!portNumberObject)
  {
    systemAccount = [(ECAccount *)self systemAccount];
    parentAccount = [systemAccount parentAccount];

    v6 = [parentAccount propertiesForDataclass:*MEMORY[0x277CB9150]];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CB8B38]];

    if (v7)
    {
      standardPorts = [(ECAccount *)self standardPorts];
      if ([standardPorts containsObject:v7])
      {
      }

      else
      {
        standardSSLPorts = [(ECAccount *)self standardSSLPorts];
        v10 = [standardSSLPorts containsObject:v7];

        if ((v10 & 1) == 0)
        {
          portNumberObject = v7;
          goto LABEL_7;
        }
      }
    }

    portNumberObject = 0;
LABEL_7:
  }

  return portNumberObject;
}

@end