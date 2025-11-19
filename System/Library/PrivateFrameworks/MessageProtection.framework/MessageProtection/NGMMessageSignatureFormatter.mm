@interface NGMMessageSignatureFormatter
- (NGMMessageSignatureFormatter)initWithDHOutput:(id)a3 prekeyPub:(id)a4 ephemeralPub:(id)a5 recipientPub:(id)a6 ciphertext:(id)a7;
@end

@implementation NGMMessageSignatureFormatter

- (NGMMessageSignatureFormatter)initWithDHOutput:(id)a3 prekeyPub:(id)a4 ephemeralPub:(id)a5 recipientPub:(id)a6 ciphertext:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [a3 mutableCopy];
  [v16 appendData:v15];

  [v16 appendData:v14];
  [v16 appendData:v13];

  [v16 appendData:v12];
  v20.receiver = self;
  v20.super_class = NGMMessageSignatureFormatter;
  v17 = [(NGMMessageSignatureFormatter *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_formattedSignedData, v16);
  }

  return v18;
}

@end