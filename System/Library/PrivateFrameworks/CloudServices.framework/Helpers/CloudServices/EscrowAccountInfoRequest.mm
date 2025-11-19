@interface EscrowAccountInfoRequest
- (id)bodyDictionary;
- (id)urlString;
@end

@implementation EscrowAccountInfoRequest

- (id)urlString
{
  v2 = [(EscrowGenericRequest *)self baseURL];
  v3 = [v2 stringByAppendingString:@"/escrowproxy/api/get_records"];

  return v3;
}

- (id)bodyDictionary
{
  v4.receiver = self;
  v4.super_class = EscrowAccountInfoRequest;
  v2 = [(EscrowGenericRequest *)&v4 bodyDictionary];
  [v2 setObject:@"com.apple.securebackup.record" forKeyedSubscript:@"label"];

  return v2;
}

@end