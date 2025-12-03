@interface EscrowCertificateRequest
- (NSDictionary)requestDictionary;
- (id)bodyDictionary;
- (id)urlString;
@end

@implementation EscrowCertificateRequest

- (id)urlString
{
  baseURL = [(EscrowGenericRequest *)self baseURL];
  v3 = [baseURL stringByAppendingString:@"/escrowproxy/api/get_club_cert"];

  return v3;
}

- (id)bodyDictionary
{
  v6.receiver = self;
  v6.super_class = EscrowCertificateRequest;
  bodyDictionary = [(EscrowGenericRequest *)&v6 bodyDictionary];
  requestDictionary = [(EscrowCertificateRequest *)self requestDictionary];
  [bodyDictionary addEntriesFromDictionary:requestDictionary];

  return bodyDictionary;
}

- (NSDictionary)requestDictionary
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:3];
  recordLabel = [(EscrowGenericRequest *)self recordLabel];
  [v3 setObject:recordLabel forKeyedSubscript:@"label"];

  baseRootCertVersions = [(EscrowGenericRequest *)self baseRootCertVersions];

  if (baseRootCertVersions)
  {
    baseRootCertVersions2 = [(EscrowGenericRequest *)self baseRootCertVersions];
    [v3 setObject:baseRootCertVersions2 forKeyedSubscript:@"baseRootCertVersions"];
  }

  trustedRootCertVersions = [(EscrowGenericRequest *)self trustedRootCertVersions];

  if (trustedRootCertVersions)
  {
    trustedRootCertVersions2 = [(EscrowGenericRequest *)self trustedRootCertVersions];
    [v3 setObject:trustedRootCertVersions2 forKeyedSubscript:@"trustedRootCertVersions"];
  }

  return v3;
}

@end