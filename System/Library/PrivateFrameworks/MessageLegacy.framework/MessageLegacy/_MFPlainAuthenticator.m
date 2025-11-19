@interface _MFPlainAuthenticator
- (id)responseForServerData:(id)a3;
@end

@implementation _MFPlainAuthenticator

- (id)responseForServerData:(id)a3
{
  v4 = [objc_msgSend(-[MFSASLAuthenticator account](self account];
  v5 = [objc_msgSend(-[MFSASLAuthenticator account](self "account")];
  if (!v5)
  {
    [(MFSASLAuthenticator *)self setMissingPasswordError];
    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = v5;
  v9 = 0;
  v7 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v4, "length") + objc_msgSend(v5, "length") + 2}];
  [v7 appendBytes:&v9 length:1];
  [v7 appendData:v4];
  [v7 appendBytes:&v9 length:1];
  [v7 appendData:v6];
  return v7;
}

@end