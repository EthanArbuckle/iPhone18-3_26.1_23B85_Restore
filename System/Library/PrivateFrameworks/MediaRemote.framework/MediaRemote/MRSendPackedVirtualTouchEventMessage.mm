@interface MRSendPackedVirtualTouchEventMessage
- (MRSendPackedVirtualTouchEventMessage)initWithTouchEvent:(_MRHIDTouchEvent *)event virtualDeviceID:(unint64_t)d;
- (_MRHIDTouchEvent)event;
- (id)description;
- (unint64_t)virtualDeviceID;
@end

@implementation MRSendPackedVirtualTouchEventMessage

- (MRSendPackedVirtualTouchEventMessage)initWithTouchEvent:(_MRHIDTouchEvent *)event virtualDeviceID:(unint64_t)d
{
  dCopy = d;
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = MRSendPackedVirtualTouchEventMessage;
  v6 = [(MRProtocolMessage *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(_MRSendPackedVirtualTouchEventMessageProtobuf);
    var1 = event->var0.var0.var1;
    v13[0] = event->var0.var0.var0;
    v13[1] = var1;
    v13[2] = event->var1;
    v13[3] = dCopy;
    v13[4] = event->var3;
    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:v13 length:10];
    [(_MRSendPackedVirtualTouchEventMessageProtobuf *)v7 setData:v9];

    [(MRProtocolMessage *)v6 setUnderlyingCodableMessage:v7];
    [(MRProtocolMessage *)v6 setTimestamp:event->var2];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (_MRHIDTouchEvent)event
{
  v11 = *MEMORY[0x1E69E9840];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  data = [underlyingCodableMessage data];
  [data getBytes:v10 length:10];

  *&retstr->var1 = 0;
  retstr->var2 = 0;
  *&retstr->var3 = 0;
  v7 = v10[1];
  retstr->var0.var0.var0 = v10[0];
  retstr->var0.var0.var1 = v7;
  retstr->var1 = v10[2];
  retstr->var2 = [(MRProtocolMessage *)self timestamp];
  retstr->var3 = v10[4];

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)virtualDeviceID
{
  v9 = *MEMORY[0x1E69E9840];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  data = [underlyingCodableMessage data];
  [data getBytes:v7 length:10];

  v4 = v8;
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)description
{
  v16 = *MEMORY[0x1E69E9840];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  data = [underlyingCodableMessage data];
  [data getBytes:v15 length:10];

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  timestamp = [(MRProtocolMessage *)self timestamp];
  error = [(MRProtocolMessage *)self error];
  replyIdentifier = [(MRProtocolMessage *)self replyIdentifier];
  type = [(MRSendPackedVirtualTouchEventMessage *)self type];
  v12 = [v5 stringWithFormat:@"\n<Message Type: %@\nTimestamp: %llu\nError: %@\nIdentifier: %@\nType: %lul\nMessage: x: %u y: %u phase: %u deviceID: %u finger: %u\n>", v7, timestamp, error, replyIdentifier, type, v15[0], v15[1], v15[2], v15[3], v15[4]];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end