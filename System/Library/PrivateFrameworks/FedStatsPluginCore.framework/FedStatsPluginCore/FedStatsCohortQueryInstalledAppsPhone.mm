@interface FedStatsCohortQueryInstalledAppsPhone
- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error;
@end

@implementation FedStatsCohortQueryInstalledAppsPhone

- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error
{
  if ([(FedStatsCohortQueryInstalledApps *)self numOfPhoneApps:parameters]<= 9)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[FedStatsCohortQueryInstalledApps numOfPhoneApps](self, "numOfPhoneApps")];
  }

  else
  {
    v5 = @"at_least_10";
  }

  return v5;
}

@end