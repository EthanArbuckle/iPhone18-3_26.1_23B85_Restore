@interface EscrowGetCountrySMSCodesRequest
- (id)bodyDictionary;
@end

@implementation EscrowGetCountrySMSCodesRequest

- (id)bodyDictionary
{
  v4.receiver = self;
  v4.super_class = EscrowGetCountrySMSCodesRequest;
  v2 = [(EscrowGenericRequest *)&v4 bodyDictionary];
  [v2 setObject:@"com.apple.securebackup.record" forKeyedSubscript:@"label"];

  return v2;
}

@end