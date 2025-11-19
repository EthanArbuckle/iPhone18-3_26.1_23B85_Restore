@interface NGMPrekeySignatureFormatter
- (NGMPrekeySignatureFormatter)initWithPublicPrekey:(id)a3;
- (id)initToSignKey:(id)a3;
- (id)signedData;
@end

@implementation NGMPrekeySignatureFormatter

- (id)initToSignKey:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NGMPrekeySignatureFormatter;
  v5 = [(NGMPrekeySignatureFormatter *)&v12 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = +[NGMTimeBasedEvaluations nowDate];
  [v6 timeIntervalSince1970];
  v5->_timestamp = v7;

  if (v5->_timestamp >= 1680101200.0)
  {
    v9 = [v4 dataRepresentation];
    prekeyPublic = v5->_prekeyPublic;
    v5->_prekeyPublic = v9;

LABEL_5:
    v8 = v5;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (NGMPrekeySignatureFormatter)initWithPublicPrekey:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NGMPrekeySignatureFormatter;
  v5 = [(NGMPrekeySignatureFormatter *)&v11 init];
  if (v5)
  {
    [v4 timestamp];
    v5->_timestamp = v6;
    v7 = [v4 dhKey];
    v8 = [v7 dataRepresentation];
    prekeyPublic = v5->_prekeyPublic;
    v5->_prekeyPublic = v8;
  }

  return v5;
}

- (id)signedData
{
  [(NGMPrekeySignatureFormatter *)self timestamp];
  v10 = v3;
  v4 = MEMORY[0x277CBEB28];
  v5 = [@"NGMPrekeySignature" dataUsingEncoding:4];
  v6 = [v4 dataWithData:v5];

  v7 = [(NGMPrekeySignatureFormatter *)self prekeyPublic];
  [v6 appendData:v7];

  v8 = [MEMORY[0x277CBEB28] dataWithBytes:&v10 length:8];
  [v6 appendData:v8];

  return v6;
}

@end