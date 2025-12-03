@interface IMRemoteURLConnectionMockScheduler
- (BOOL)_connect;
- (IMRemoteURLConnectionMockScheduler)init;
- (void)scheduleMockResponse:(id)response;
- (void)scheduleMockResponse:(id)response forURL:(id)l;
@end

@implementation IMRemoteURLConnectionMockScheduler

- (IMRemoteURLConnectionMockScheduler)init
{
  v7.receiver = self;
  v7.super_class = IMRemoteURLConnectionMockScheduler;
  v2 = [(IMRemoteURLConnectionMockScheduler *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend__connect(v2, v3, v4);
  }

  return v5;
}

- (BOOL)_connect
{
  if (self->_connection)
  {
    return 1;
  }

  v4 = IMXPCCreateConnectionForServiceWithQueue(0, 0, "com.apple.imfoundation.IMRemoteURLConnectionAgent", MEMORY[0x1E69E96A0], 0, 0);
  connection = self->_connection;
  self->_connection = v4;

  IMXPCConfigureConnection(self->_connection, 0, 0);
  return self->_connection != 0;
}

- (void)scheduleMockResponse:(id)response forURL:(id)l
{
  responseCopy = response;
  if (objc_msgSend__connect(self, v5, v6))
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    IMInsertKeyedCodableObjectsToXPCDictionary(v7, "mockResponse", v8, v9, v10, v11, v12, v13, responseCopy);
    xpc_connection_send_message(self->_connection, v7);
  }
}

- (void)scheduleMockResponse:(id)response
{
  responseCopy = response;
  v14 = objc_msgSend_response(responseCopy, v5, v6);
  v9 = objc_msgSend_URL(v14, v7, v8);
  v12 = objc_msgSend_absoluteString(v9, v10, v11);

  objc_msgSend_scheduleMockResponse_forURL_(self, v13, responseCopy, v12);
}

@end