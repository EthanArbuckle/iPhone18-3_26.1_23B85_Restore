@interface NGMGelatoPresenceSignatureFormatter
- (NGMGelatoPresenceSignatureFormatter)initWithApplicationData:(id)data;
@end

@implementation NGMGelatoPresenceSignatureFormatter

- (NGMGelatoPresenceSignatureFormatter)initWithApplicationData:(id)data
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = NGMGelatoPresenceSignatureFormatter;
  v5 = [(NGMGelatoPresenceSignatureFormatter *)&v12 init];
  if (v5)
  {
    v6 = [@"com.apple.SharedWithYou.Presence" dataUsingEncoding:4];
    v7 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(dataCopy, "length") + objc_msgSend(v6, "length")}];
    if (!v7)
    {

      v10 = 0;
      goto LABEL_6;
    }

    v8 = v7;
    [(NSData *)v7 appendData:v6];
    [(NSData *)v8 appendData:dataCopy];
    signedData = v5->_signedData;
    v5->_signedData = v8;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

@end