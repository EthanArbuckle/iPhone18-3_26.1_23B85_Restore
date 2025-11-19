@interface EscrowGetCountrySMSCodesResponse
- (NSDictionary)countrySMSCodes;
@end

@implementation EscrowGetCountrySMSCodesResponse

- (NSDictionary)countrySMSCodes
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"map"];

  return v3;
}

@end