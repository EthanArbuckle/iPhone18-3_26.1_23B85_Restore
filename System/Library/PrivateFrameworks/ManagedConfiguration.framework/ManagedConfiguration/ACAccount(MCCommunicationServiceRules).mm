@interface ACAccount(MCCommunicationServiceRules)
- (id)communicationServiceRules;
- (void)setCommunicationServiceRules:()MCCommunicationServiceRules;
@end

@implementation ACAccount(MCCommunicationServiceRules)

- (id)communicationServiceRules
{
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    communicationServiceRules = [parentAccount2 communicationServiceRules];
  }

  else
  {
    communicationServiceRules = [self accountPropertyForKey:@"MCAccountCommunicationServiceRules"];
  }

  return communicationServiceRules;
}

- (void)setCommunicationServiceRules:()MCCommunicationServiceRules
{
  v6 = a3;
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    [parentAccount2 setCommunicationServiceRules:v6];
  }

  else
  {
    [self setAccountProperty:v6 forKey:@"MCAccountCommunicationServiceRules"];
  }
}

@end