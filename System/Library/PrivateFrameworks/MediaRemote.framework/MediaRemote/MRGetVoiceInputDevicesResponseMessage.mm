@interface MRGetVoiceInputDevicesResponseMessage
- (MRGetVoiceInputDevicesResponseMessage)initWithDeviceIDs:(id)a3 errorCode:(int64_t)a4;
- (NSArray)deviceIDs;
- (int64_t)errorCode;
@end

@implementation MRGetVoiceInputDevicesResponseMessage

- (MRGetVoiceInputDevicesResponseMessage)initWithDeviceIDs:(id)a3 errorCode:(int64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20.receiver = self;
  v20.super_class = MRGetVoiceInputDevicesResponseMessage;
  v7 = [(MRProtocolMessage *)&v20 init];
  if (v7)
  {
    v8 = objc_alloc_init(_MRGetVoiceInputDevicesResponseMessageProtobuf);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          -[_MRGetVoiceInputDevicesResponseMessageProtobuf addDeviceIDs:](v8, "addDeviceIDs:", [*(*(&v16 + 1) + 8 * v13++) unsignedIntValue]);
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)v8 setErrorCode:a4];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSArray)deviceIDs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 deviceIDsCount];

  if (v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = MEMORY[0x1E696AD98];
      v9 = [(MRProtocolMessage *)self underlyingCodableMessage];
      v10 = [v8 numberWithUnsignedInt:{objc_msgSend(v9, "deviceIDsAtIndex:", v6)}];
      [v3 addObject:v10];

      v6 = v7;
      v11 = [(MRProtocolMessage *)self underlyingCodableMessage];
      v12 = [v11 deviceIDsCount];
    }

    while (v12 > v7++);
  }

  return v3;
}

- (int64_t)errorCode
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 errorCode];

  return v3;
}

@end