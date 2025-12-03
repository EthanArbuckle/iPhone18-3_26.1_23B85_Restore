@interface GTReplayFetchInto
- (GTReplayFetchInto)initWithCoder:(id)coder;
- (void)decodeXPCOnlyObjects:(id)objects;
- (void)encodeWithCoder:(id)coder;
- (void)encodeXPCOnlyObjects:(id)objects;
@end

@implementation GTReplayFetchInto

- (GTReplayFetchInto)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTReplayFetchInto;
  v5 = [(GTReplayRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_dispatchUID.uid = GTDispatchUIDDecode(coderCopy, @"dispatchUID");
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayFetchInto;
  coderCopy = coder;
  [(GTReplayRequest *)&v5 encodeWithCoder:coderCopy];
  GTDispatchUIDEncode(coderCopy, self->_dispatchUID.uid, @"dispatchUID");
}

- (void)encodeXPCOnlyObjects:(id)objects
{
  dest = self->_dest;
  objectsCopy = objects;
  newSharedTextureHandle = [(MTLTexture *)dest newSharedTextureHandle];
  [newSharedTextureHandle createMachPort];
  xpc_dictionary_set_mach_send();
  newSharedEventHandle = [(MTLSharedEvent *)self->_event newSharedEventHandle];
  [newSharedEventHandle eventPort];
  xpc_dictionary_set_mach_send();
}

- (void)decodeXPCOnlyObjects:(id)objects
{
  objectsCopy = objects;
  v4 = [objc_alloc(MEMORY[0x277CD6FE0]) initWithMachPort:xpc_dictionary_copy_mach_send()];
  device = [v4 device];
  v6 = [device newSharedTextureWithHandle:v4];
  dest = self->_dest;
  self->_dest = v6;

  if (self->_dest)
  {
    v8 = xpc_dictionary_copy_mach_send();
    device2 = [v4 device];
    v10 = [device2 newSharedEventWithMachPort:v8];
    event = self->_event;
    self->_event = v10;
  }
}

@end