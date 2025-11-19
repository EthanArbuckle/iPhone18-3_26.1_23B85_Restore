@interface NMSIncomingRequest
- (NMSIncomingRequest)init;
- (NMSMessageCenter)messageCenter;
- (NSString)description;
- (id)CPObfuscatedDescriptionObject;
- (void)configureResponse;
- (void)dealloc;
- (void)setData:(id)a3;
@end

@implementation NMSIncomingRequest

- (NMSIncomingRequest)init
{
  v6.receiver = self;
  v6.super_class = NMSIncomingRequest;
  v2 = [(NMSIncomingRequest *)&v6 init];
  if (v2)
  {
    v3 = os_transaction_create();
    [(NMSIncomingRequest *)v2 setTransaction:v3];

    v4 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() pbRequest];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_1DF835000, v1, 0x90u, "Must not forget about an NMSIncomingRequest without first responding to it. Request is an %{public}@", v7, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)configureResponse
{
  v3 = objc_alloc_init(NMSOutgoingResponse);
  [(NMSOutgoingResponse *)v3 setPriority:self->_priority];
  [(NMSOutgoingResponse *)v3 setRequest:self];
  if (self->sourceDeviceID)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObject:?];
    [(NMSOutgoingResponse *)v3 setTargetDeviceIDs:v4];
  }

  v5 = [(NMSIncomingRequest *)self idsContext];
  [(NMSOutgoingResponse *)v3 setIdsContext:v5];

  response = self->_response;
  self->_response = v3;
}

- (void)setData:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_data, a3);
  WeakRetained = objc_loadWeakRetained(&self->_messageCenter);
  v7 = [WeakRetained _pbMappingForMessageID:self->_messageID];

  if (v7)
  {
    v8 = [objc_alloc(objc_msgSend(v7 "requestClass"))];
    pbRequest = self->_pbRequest;
    self->_pbRequest = v8;
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      [NMSIncomingRequest setData:?];
    }
  }
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = NMSIncomingRequest;
  v4 = [(NMSIncomingRequest *)&v11 description];
  v5 = NMSPriorityString([(NMSIncomingRequest *)self priority]);
  v6 = [(NMSIncomingRequest *)self messageID];
  v7 = [(NMSIncomingRequest *)self idsIdentifier];
  v8 = [(NMSIncomingRequest *)self data];
  v9 = [v3 initWithFormat:@"%@ {%@ priority, messageID=%hu, idsID=%@, data=%lu bytes}", v4, v5, v6, v7, objc_msgSend(v8, "length")];

  return v9;
}

- (id)CPObfuscatedDescriptionObject
{
  v3 = objc_alloc_init(NMSObfuscatableDescription);
  v14.receiver = self;
  v14.super_class = NMSIncomingRequest;
  v4 = [(NMSIncomingRequest *)&v14 debugDescription];
  [(NMSObfuscatableDescription *)v3 setPrefixString:v4];

  v5 = NMSPriorityString([(NMSIncomingRequest *)self priority]);
  [(NMSObfuscatableDescription *)v3 addDescription:@"Priority" value:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[NMSIncomingRequest messageID](self, "messageID")}];
  [(NMSObfuscatableDescription *)v3 addDescription:@"MessageID" value:v6];

  if (self->_pbRequest)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [(NMSObfuscatableDescription *)v3 addDescription:@"Protobuf class" value:v8];
  }

  else
  {
    [(NMSObfuscatableDescription *)v3 addDescription:@"Protobuf class" value:@"none"];
  }

  v9 = [(NMSIncomingRequest *)self idsIdentifier];
  [(NMSObfuscatableDescription *)v3 addDescription:@"IDS ID" value:v9];

  if ([(NMSIncomingRequest *)self expectsResponse])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [(NMSObfuscatableDescription *)v3 addDescription:@"Expects response" value:v10];
  v11 = [(NMSIncomingRequest *)self data];
  [(NMSObfuscatableDescription *)v3 addObfuscatedDescription:@"Data" value:v11];

  v12 = [(NMSIncomingRequest *)self response];
  [(NMSObfuscatableDescription *)v3 addObfuscatedDescription:@"Response message" value:v12];

  return v3;
}

- (NMSMessageCenter)messageCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCenter);

  return WeakRetained;
}

- (void)setData:(unsigned __int16 *)a1 .cold.2(unsigned __int16 *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

@end