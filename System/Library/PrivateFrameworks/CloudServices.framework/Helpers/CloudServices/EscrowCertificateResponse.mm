@interface EscrowCertificateResponse
- (NSData)cert;
- (NSString)dsid;
- (id)description;
@end

@implementation EscrowCertificateResponse

- (NSData)cert
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"clubCert"];

  if (v3)
  {
    v4 = [[NSData alloc] initWithBase64EncodedString:v3 options:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)dsid
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"dsid"];

  return v3;
}

- (id)description
{
  v3 = [(EscrowCertificateResponse *)self cert];
  if (v3 && (v4 = SecCertificateCreateWithData(0, v3)) != 0)
  {
    v5 = v4;
    v6 = SecCertificateCopySerialNumberData(v4, 0);
    v7 = SecCertificateCopySHA256Digest();
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [(__CFData *)v6 debugDescription];
  v11 = [v7 debugDescription];
  v12 = [(EscrowCertificateResponse *)self dsid];
  v13 = [NSString stringWithFormat:@"<%@: %p>{serial = %@, digest = %@, dsid = %@}", v9, self, v10, v11, v12];

  return v13;
}

@end