@interface ACAccount(MCCommunicationServiceRules)
- (id)communicationServiceRules;
- (void)setCommunicationServiceRules:()MCCommunicationServiceRules;
@end

@implementation ACAccount(MCCommunicationServiceRules)

- (id)communicationServiceRules
{
  v2 = [a1 parentAccount];

  if (v2)
  {
    v3 = [a1 parentAccount];
    v4 = [v3 communicationServiceRules];
  }

  else
  {
    v4 = [a1 accountPropertyForKey:@"MCAccountCommunicationServiceRules"];
  }

  return v4;
}

- (void)setCommunicationServiceRules:()MCCommunicationServiceRules
{
  v6 = a3;
  v4 = [a1 parentAccount];

  if (v4)
  {
    v5 = [a1 parentAccount];
    [v5 setCommunicationServiceRules:v6];
  }

  else
  {
    [a1 setAccountProperty:v6 forKey:@"MCAccountCommunicationServiceRules"];
  }
}

@end