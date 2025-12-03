@interface EscrowGetCountrySMSCodesRequest
- (id)bodyDictionary;
@end

@implementation EscrowGetCountrySMSCodesRequest

- (id)bodyDictionary
{
  v4.receiver = self;
  v4.super_class = EscrowGetCountrySMSCodesRequest;
  bodyDictionary = [(EscrowGenericRequest *)&v4 bodyDictionary];
  [bodyDictionary setObject:@"com.apple.securebackup.record" forKeyedSubscript:@"label"];

  return bodyDictionary;
}

@end