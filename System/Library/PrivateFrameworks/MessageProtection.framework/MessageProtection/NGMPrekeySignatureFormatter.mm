@interface NGMPrekeySignatureFormatter
- (NGMPrekeySignatureFormatter)initWithPublicPrekey:(id)prekey;
- (id)initToSignKey:(id)key;
- (id)signedData;
@end

@implementation NGMPrekeySignatureFormatter

- (id)initToSignKey:(id)key
{
  keyCopy = key;
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
    dataRepresentation = [keyCopy dataRepresentation];
    prekeyPublic = v5->_prekeyPublic;
    v5->_prekeyPublic = dataRepresentation;

LABEL_5:
    v8 = v5;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (NGMPrekeySignatureFormatter)initWithPublicPrekey:(id)prekey
{
  prekeyCopy = prekey;
  v11.receiver = self;
  v11.super_class = NGMPrekeySignatureFormatter;
  v5 = [(NGMPrekeySignatureFormatter *)&v11 init];
  if (v5)
  {
    [prekeyCopy timestamp];
    v5->_timestamp = v6;
    dhKey = [prekeyCopy dhKey];
    dataRepresentation = [dhKey dataRepresentation];
    prekeyPublic = v5->_prekeyPublic;
    v5->_prekeyPublic = dataRepresentation;
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

  prekeyPublic = [(NGMPrekeySignatureFormatter *)self prekeyPublic];
  [v6 appendData:prekeyPublic];

  v8 = [MEMORY[0x277CBEB28] dataWithBytes:&v10 length:8];
  [v6 appendData:v8];

  return v6;
}

@end