@interface CMContinuityCaptureTransportDeviceRapportStream
- (CMContinuityCaptureTransportDeviceRapportStream)initWithRapportStream:(id)stream;
- (NSString)description;
- (id)cipherKeyforSessionID:(id)d;
- (void)sendMessage:(id)message message:(id)a4 completion:(id)completion;
@end

@implementation CMContinuityCaptureTransportDeviceRapportStream

- (id)cipherKeyforSessionID:(id)d
{
  stream = self->_stream;
  dCopy = d;
  streamKey = [(RPStreamSession *)stream streamKey];
  v6 = CMContinuityCaptureCreateCipherKey(streamKey, dCopy);

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  streamIdentifier = [(CMContinuityCaptureTransportDeviceRapportStream *)self streamIdentifier];
  v7 = [v3 stringWithFormat:@"%@: %@ entity:%u [%p]", v5, streamIdentifier, self->_entity, self];

  return v7;
}

- (void)sendMessage:(id)message message:(id)a4 completion:(id)completion
{
  messageCopy = message;
  v9 = a4;
  completionCopy = completion;
  if ([(CMContinuityCaptureTransportDeviceRapportStream *)self isMediaStream])
  {
    [CMContinuityCaptureTransportDeviceRapportStream sendMessage:message:completion:];
  }

  else
  {
    [(RPStreamSession *)self->_stream sendEventID:@"ContinuityCaptureStreamEventID" event:v9 options:0 completion:completionCopy];
  }
}

- (CMContinuityCaptureTransportDeviceRapportStream)initWithRapportStream:(id)stream
{
  streamCopy = stream;
  v11.receiver = self;
  v11.super_class = CMContinuityCaptureTransportDeviceRapportStream;
  v6 = [(CMContinuityCaptureTransportDeviceRapportStream *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, stream);
    streamID = [streamCopy streamID];
    v7->_entity = CMContinuityCaptureEntityTypeFromMediaIdentifer(streamID);

    v9 = v7;
  }

  return v7;
}

- (void)sendMessage:message:completion:.cold.1()
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

@end