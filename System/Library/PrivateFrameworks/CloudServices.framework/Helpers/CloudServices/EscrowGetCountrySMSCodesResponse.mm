@interface EscrowGetCountrySMSCodesResponse
- (NSDictionary)countrySMSCodes;
@end

@implementation EscrowGetCountrySMSCodesResponse

- (NSDictionary)countrySMSCodes
{
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"map"];

  return v3;
}

@end