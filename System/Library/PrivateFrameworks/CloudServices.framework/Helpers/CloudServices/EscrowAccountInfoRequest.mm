@interface EscrowAccountInfoRequest
- (id)bodyDictionary;
- (id)urlString;
@end

@implementation EscrowAccountInfoRequest

- (id)urlString
{
  baseURL = [(EscrowGenericRequest *)self baseURL];
  v3 = [baseURL stringByAppendingString:@"/escrowproxy/api/get_records"];

  return v3;
}

- (id)bodyDictionary
{
  v4.receiver = self;
  v4.super_class = EscrowAccountInfoRequest;
  bodyDictionary = [(EscrowGenericRequest *)&v4 bodyDictionary];
  [bodyDictionary setObject:@"com.apple.securebackup.record" forKeyedSubscript:@"label"];

  return bodyDictionary;
}

@end