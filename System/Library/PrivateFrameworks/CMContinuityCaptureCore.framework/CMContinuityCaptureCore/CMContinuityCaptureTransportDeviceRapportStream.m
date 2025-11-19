@interface CMContinuityCaptureTransportDeviceRapportStream
- (CMContinuityCaptureTransportDeviceRapportStream)initWithRapportStream:(id)a3;
- (NSString)description;
- (id)cipherKeyforSessionID:(id)a3;
- (void)sendMessage:(id)a3 message:(id)a4 completion:(id)a5;
@end

@implementation CMContinuityCaptureTransportDeviceRapportStream

- (id)cipherKeyforSessionID:(id)a3
{
  stream = self->_stream;
  v4 = a3;
  v5 = [(RPStreamSession *)stream streamKey];
  v6 = CMContinuityCaptureCreateCipherKey(v5, v4);

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureTransportDeviceRapportStream *)self streamIdentifier];
  v7 = [v3 stringWithFormat:@"%@: %@ entity:%u [%p]", v5, v6, self->_entity, self];

  return v7;
}

- (void)sendMessage:(id)a3 message:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CMContinuityCaptureTransportDeviceRapportStream *)self isMediaStream])
  {
    [CMContinuityCaptureTransportDeviceRapportStream sendMessage:message:completion:];
  }

  else
  {
    [(RPStreamSession *)self->_stream sendEventID:@"ContinuityCaptureStreamEventID" event:v9 options:0 completion:v10];
  }
}

- (CMContinuityCaptureTransportDeviceRapportStream)initWithRapportStream:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CMContinuityCaptureTransportDeviceRapportStream;
  v6 = [(CMContinuityCaptureTransportDeviceRapportStream *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, a3);
    v8 = [v5 streamID];
    v7->_entity = CMContinuityCaptureEntityTypeFromMediaIdentifer(v8);

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