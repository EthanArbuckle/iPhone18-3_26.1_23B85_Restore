@interface NMSOutgoingResponse
- (NMSIncomingRequest)request;
- (NMSOutgoingResponse)init;
- (NSString)description;
- (id)CPObfuscatedDescriptionObject;
- (id)_makePBResponse;
- (void)dealloc;
- (void)send;
- (void)setPbResponse:(id)response;
@end

@implementation NMSOutgoingResponse

- (NMSOutgoingResponse)init
{
  v5.receiver = self;
  v5.super_class = NMSOutgoingResponse;
  v2 = [(NMSOutgoingResponse *)&v5 init];
  if (v2)
  {
    v3 = os_transaction_create();
    [(NMSOutgoingResponse *)v2 setTransaction:v3];
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NMSOutgoingResponse;
  [(NMSOutgoingResponse *)&v2 dealloc];
}

- (void)send
{
  WeakRetained = objc_loadWeakRetained(&self->_request);
  messageCenter = [WeakRetained messageCenter];

  [messageCenter _sendResponse:self];
}

- (void)setPbResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_request);
  messageCenter = [WeakRetained messageCenter];
  v6 = [messageCenter _pbMappingForMessageID:{objc_msgSend(WeakRetained, "messageID")}];
  pbResponse = self->_pbResponse;
  self->_pbResponse = responseCopy;
  v8 = responseCopy;

  data = [self->_pbResponse data];
  data = self->_data;
  self->_data = data;
}

- (id)_makePBResponse
{
  WeakRetained = objc_loadWeakRetained(&self->_request);
  messageCenter = [WeakRetained messageCenter];
  v4 = [messageCenter _pbMappingForMessageID:{objc_msgSend(WeakRetained, "messageID")}];
  [v4 responseClass];
  v5 = objc_opt_new();

  return v5;
}

- (NSString)description
{
  request = [(NMSOutgoingResponse *)self request];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13.receiver = self;
  v13.super_class = NMSOutgoingResponse;
  v5 = [(NMSOutgoingResponse *)&v13 description];
  v6 = NMSPriorityString([(NMSOutgoingResponse *)self priority]);
  messageID = [request messageID];
  idsIdentifier = [(NMSOutgoingResponse *)self idsIdentifier];
  idsIdentifier2 = [request idsIdentifier];
  data = [(NMSOutgoingResponse *)self data];
  v11 = [v4 initWithFormat:@"%@ {%@ priority, messageID=%hu, idsID=%@, requestID=%@, data=%lu bytes}", v5, v6, messageID, idsIdentifier, idsIdentifier2, objc_msgSend(data, "length")];

  return v11;
}

- (id)CPObfuscatedDescriptionObject
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [(NMSOutgoingResponse *)self sendTimeout];
  [v3 setSecond:vcvtmd_s64_f64(v4)];
  v5 = objc_alloc_init(NMSObfuscatableDescription);
  v18.receiver = self;
  v18.super_class = NMSOutgoingResponse;
  v6 = [(NMSOutgoingResponse *)&v18 debugDescription];
  [(NMSObfuscatableDescription *)v5 setPrefixString:v6];

  request = [(NMSOutgoingResponse *)self request];
  v8 = NMSPriorityString([(NMSOutgoingResponse *)self priority]);
  [(NMSObfuscatableDescription *)v5 addDescription:@"Priority" value:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(request, "messageID")}];
  [(NMSObfuscatableDescription *)v5 addDescription:@"Request messageID" value:v9];

  if (self->_pbResponse)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [(NMSObfuscatableDescription *)v5 addDescription:@"Protobuf class" value:v11];
  }

  else
  {
    [(NMSObfuscatableDescription *)v5 addDescription:@"Protobuf class" value:@"none"];
  }

  idsIdentifier = [(NMSOutgoingResponse *)self idsIdentifier];
  [(NMSObfuscatableDescription *)v5 addDescription:@"IDS ID" value:idsIdentifier];

  idsIdentifier2 = [request idsIdentifier];
  [(NMSObfuscatableDescription *)v5 addDescription:@"Request IDS ID" value:idsIdentifier2];

  v14 = [MEMORY[0x1E696AB70] localizedStringFromDateComponents:v3 unitsStyle:3];
  [(NMSObfuscatableDescription *)v5 addDescription:@"Send timeout" value:v14];

  data = [(NMSOutgoingResponse *)self data];
  [(NMSObfuscatableDescription *)v5 addObfuscatedDescription:@"Data" value:data];

  persistentUserInfo = [(NMSOutgoingResponse *)self persistentUserInfo];
  [(NMSObfuscatableDescription *)v5 addDescription:@"User info" value:persistentUserInfo];

  return v5;
}

- (NMSIncomingRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

@end