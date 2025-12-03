@interface EscrowCertificateResponse
- (NSData)cert;
- (NSString)dsid;
- (id)description;
@end

@implementation EscrowCertificateResponse

- (NSData)cert
{
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"clubCert"];

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
  responseDictionary = [(LakituResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKeyedSubscript:@"dsid"];

  return v3;
}

- (id)description
{
  cert = [(EscrowCertificateResponse *)self cert];
  if (cert && (v4 = SecCertificateCreateWithData(0, cert)) != 0)
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
  dsid = [(EscrowCertificateResponse *)self dsid];
  v13 = [NSString stringWithFormat:@"<%@: %p>{serial = %@, digest = %@, dsid = %@}", v9, self, v10, v11, dsid];

  return v13;
}

@end