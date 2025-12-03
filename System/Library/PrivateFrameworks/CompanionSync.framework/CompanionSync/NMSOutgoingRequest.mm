@interface NMSOutgoingRequest
- (NMSMessageCenter)messageCenter;
- (NMSOutgoingRequest)init;
- (NSString)description;
- (id)CPObfuscatedDescriptionObject;
- (void)setPbRequest:(id)request;
@end

@implementation NMSOutgoingRequest

- (NMSOutgoingRequest)init
{
  v3.receiver = self;
  v3.super_class = NMSOutgoingRequest;
  result = [(NMSOutgoingRequest *)&v3 init];
  if (result)
  {
    result->_priority = 1;
  }

  return result;
}

- (void)setPbRequest:(id)request
{
  objc_storeStrong(&self->_pbRequest, request);
  requestCopy = request;
  data = [self->_pbRequest data];
  data = self->_data;
  self->_data = data;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = NMSOutgoingRequest;
  v4 = [(NMSOutgoingRequest *)&v11 description];
  v5 = NMSPriorityString([(NMSOutgoingRequest *)self priority]);
  messageID = [(NMSOutgoingRequest *)self messageID];
  idsIdentifier = [(NMSOutgoingRequest *)self idsIdentifier];
  data = [(NMSOutgoingRequest *)self data];
  v9 = [v3 initWithFormat:@"%@ {%@ priority, messageID=%hu, idsID=%@, data=%lu bytes}", v4, v5, messageID, idsIdentifier, objc_msgSend(data, "length")];

  return v9;
}

- (id)CPObfuscatedDescriptionObject
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [(NMSOutgoingRequest *)self sendTimeout];
  [v3 setSecond:vcvtmd_s64_f64(v4)];
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [(NMSOutgoingRequest *)self responseTimeout];
  [v5 setSecond:vcvtmd_s64_f64(v6)];
  v7 = objc_alloc_init(NMSObfuscatableDescription);
  v20.receiver = self;
  v20.super_class = NMSOutgoingRequest;
  v8 = [(NMSOutgoingRequest *)&v20 description];
  [(NMSObfuscatableDescription *)v7 setPrefixString:v8];

  v9 = NMSPriorityString([(NMSOutgoingRequest *)self priority]);
  [(NMSObfuscatableDescription *)v7 addDescription:@"Priority" value:v9];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[NMSOutgoingRequest messageID](self, "messageID")}];
  [(NMSObfuscatableDescription *)v7 addDescription:@"MessageID" value:v10];

  if (self->_pbRequest)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [(NMSObfuscatableDescription *)v7 addDescription:@"Protobuf class" value:v12];
  }

  else
  {
    [(NMSObfuscatableDescription *)v7 addDescription:@"Protobuf class" value:@"none"];
  }

  idsIdentifier = [(NMSOutgoingRequest *)self idsIdentifier];
  [(NMSObfuscatableDescription *)v7 addDescription:@"IDS ID" value:idsIdentifier];

  v14 = [MEMORY[0x1E696AB70] localizedStringFromDateComponents:v3 unitsStyle:3];
  [(NMSObfuscatableDescription *)v7 addDescription:@"Send timeout" value:v14];

  v15 = [MEMORY[0x1E696AB70] localizedStringFromDateComponents:v5 unitsStyle:3];
  [(NMSObfuscatableDescription *)v7 addDescription:@"Response timeout" value:v15];

  if ([(NMSOutgoingRequest *)self shouldEncrypt])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [(NMSObfuscatableDescription *)v7 addDescription:@"Should encrypt" value:v16];
  data = [(NMSOutgoingRequest *)self data];
  [(NMSObfuscatableDescription *)v7 addObfuscatedDescription:@"Data" value:data];

  persistentUserInfo = [(NMSOutgoingRequest *)self persistentUserInfo];
  [(NMSObfuscatableDescription *)v7 addDescription:@"User info" value:persistentUserInfo];

  return v7;
}

- (NMSMessageCenter)messageCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCenter);

  return WeakRetained;
}

@end