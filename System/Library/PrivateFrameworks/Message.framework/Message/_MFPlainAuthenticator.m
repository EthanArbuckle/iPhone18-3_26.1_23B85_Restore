@interface _MFPlainAuthenticator
- (id)responseForServerData:(id)a3;
@end

@implementation _MFPlainAuthenticator

- (id)responseForServerData:(id)a3
{
  v4 = [(ECSASLAuthenticator *)self account];
  v5 = [v4 username];
  v6 = [v5 dataUsingEncoding:4];

  v7 = [(ECSASLAuthenticator *)self account];
  v8 = [v7 password];
  v9 = [v8 dataUsingEncoding:4];

  if (v9)
  {
    if (v6)
    {
      v12 = 0;
      v10 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(v6, "length") + objc_msgSend(v9, "length") + 2}];
      [v10 appendBytes:&v12 length:1];
      [v10 appendData:v6];
      [v10 appendBytes:&v12 length:1];
      [v10 appendData:v9];
      goto LABEL_6;
    }
  }

  else
  {
    [(ECSASLAuthenticator *)self setMissingPasswordError];
  }

  v10 = 0;
LABEL_6:

  return v10;
}

@end