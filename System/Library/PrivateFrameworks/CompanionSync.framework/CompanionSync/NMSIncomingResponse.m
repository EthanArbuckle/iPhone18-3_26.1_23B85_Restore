@interface NMSIncomingResponse
- (NSString)description;
- (id)CPObfuscatedDescriptionObject;
@end

@implementation NMSIncomingResponse

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14.receiver = self;
  v14.super_class = NMSIncomingResponse;
  v4 = [(NMSIncomingResponse *)&v14 description];
  v5 = [(NMSIncomingResponse *)self messageID];
  pbResponse = self->_pbResponse;
  if (pbResponse)
  {
    v7 = self->_pbResponse;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
  }

  else
  {
    v9 = @"none";
  }

  v10 = [(NMSIncomingResponse *)self idsIdentifier];
  v11 = [(NMSIncomingResponse *)self data];
  v12 = [v3 initWithFormat:@"%@ {messageID=%hu, protobuf class=%@, idsID=%@, data=%lu bytes}", v4, v5, v9, v10, objc_msgSend(v11, "length")];

  if (pbResponse)
  {
  }

  return v12;
}

- (id)CPObfuscatedDescriptionObject
{
  v3 = objc_alloc_init(NMSObfuscatableDescription);
  v14.receiver = self;
  v14.super_class = NMSIncomingResponse;
  v4 = [(NMSIncomingResponse *)&v14 debugDescription];
  [(NMSObfuscatableDescription *)v3 setPrefixString:v4];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[NMSIncomingResponse messageID](self, "messageID")}];
  [(NMSObfuscatableDescription *)v3 addDescription:@"MessageID" value:v5];

  if (self->_pbResponse)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(NMSObfuscatableDescription *)v3 addDescription:@"Protobuf class" value:v7];
  }

  else
  {
    [(NMSObfuscatableDescription *)v3 addDescription:@"Protobuf class" value:@"none"];
  }

  v8 = [(NMSIncomingResponse *)self idsIdentifier];
  [(NMSObfuscatableDescription *)v3 addDescription:@"IDS ID" value:v8];

  v9 = [(NMSIncomingResponse *)self requestIDSIdentifier];
  [(NMSObfuscatableDescription *)v3 addDescription:@"Request IDS ID" value:v9];

  v10 = [(NMSIncomingResponse *)self requestSent];
  [(NMSObfuscatableDescription *)v3 addDescription:@"Request sent" value:v10];

  v11 = [(NMSIncomingResponse *)self data];
  [(NMSObfuscatableDescription *)v3 addObfuscatedDescription:@"Data" value:v11];

  v12 = [(NMSIncomingResponse *)self requestPersistentUserInfo];
  [(NMSObfuscatableDescription *)v3 addDescription:@"Request user info" value:v12];

  return v3;
}

@end