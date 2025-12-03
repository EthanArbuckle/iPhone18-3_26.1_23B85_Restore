@interface MRSendVirtualTouchEventMessage
- (MRSendVirtualTouchEventMessage)initWithTouchEvent:(_MRHIDTouchEvent *)event virtualDeviceID:(unint64_t)d;
- (_MRHIDTouchEvent)event;
- (unint64_t)virtualDeviceID;
@end

@implementation MRSendVirtualTouchEventMessage

- (MRSendVirtualTouchEventMessage)initWithTouchEvent:(_MRHIDTouchEvent *)event virtualDeviceID:(unint64_t)d
{
  v12.receiver = self;
  v12.super_class = MRSendVirtualTouchEventMessage;
  v6 = [(MRProtocolMessage *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(_MRSendVirtualTouchEventMessageProtobuf);
    [(_MRSendVirtualTouchEventMessageProtobuf *)v7 setVirtualDeviceID:d];
    v8 = objc_alloc_init(_MRVirtualTouchEventProtobuf);
    [(_MRVirtualTouchEventProtobuf *)v8 setX:event->var0.var0.var0];
    [(_MRVirtualTouchEventProtobuf *)v8 setY:event->var0.var0.var1];
    var1 = event->var1;
    if (var1 - 1 >= 5)
    {
      v10 = 0;
    }

    else
    {
      v10 = var1;
    }

    [(_MRVirtualTouchEventProtobuf *)v8 setPhase:v10];
    [(_MRVirtualTouchEventProtobuf *)v8 setFinger:event->var3];
    [(_MRSendVirtualTouchEventMessageProtobuf *)v7 setEvent:v8];
    [(MRProtocolMessage *)v6 setUnderlyingCodableMessage:v7];
    [(MRProtocolMessage *)v6 setTimestamp:event->var2];
  }

  return v6;
}

- (_MRHIDTouchEvent)event
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  event = [underlyingCodableMessage event];

  *&retstr->var1 = 0;
  retstr->var2 = 0;
  *&retstr->var3 = 0;
  [event x];
  *&v6 = v6;
  retstr->var0.var0.var0 = *&v6;
  [event y];
  *&v7 = v7;
  retstr->var0.var0.var1 = *&v7;
  phase = [event phase];
  if (phase - 1 >= 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = phase;
  }

  retstr->var1 = v9;
  retstr->var2 = [(MRProtocolMessage *)self timestamp];
  retstr->var3 = [event finger];

  return result;
}

- (unint64_t)virtualDeviceID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  virtualDeviceID = [underlyingCodableMessage virtualDeviceID];

  return virtualDeviceID;
}

@end