@interface GTReplayFetchInto
- (GTReplayFetchInto)initWithCoder:(id)a3;
- (void)decodeXPCOnlyObjects:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeXPCOnlyObjects:(id)a3;
@end

@implementation GTReplayFetchInto

- (GTReplayFetchInto)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GTReplayFetchInto;
  v5 = [(GTReplayRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_dispatchUID.uid = GTDispatchUIDDecode(v4, @"dispatchUID");
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayFetchInto;
  v4 = a3;
  [(GTReplayRequest *)&v5 encodeWithCoder:v4];
  GTDispatchUIDEncode(v4, self->_dispatchUID.uid, @"dispatchUID");
}

- (void)encodeXPCOnlyObjects:(id)a3
{
  dest = self->_dest;
  v5 = a3;
  v7 = [(MTLTexture *)dest newSharedTextureHandle];
  [v7 createMachPort];
  xpc_dictionary_set_mach_send();
  v6 = [(MTLSharedEvent *)self->_event newSharedEventHandle];
  [v6 eventPort];
  xpc_dictionary_set_mach_send();
}

- (void)decodeXPCOnlyObjects:(id)a3
{
  v12 = a3;
  v4 = [objc_alloc(MEMORY[0x277CD6FE0]) initWithMachPort:xpc_dictionary_copy_mach_send()];
  v5 = [v4 device];
  v6 = [v5 newSharedTextureWithHandle:v4];
  dest = self->_dest;
  self->_dest = v6;

  if (self->_dest)
  {
    v8 = xpc_dictionary_copy_mach_send();
    v9 = [v4 device];
    v10 = [v9 newSharedEventWithMachPort:v8];
    event = self->_event;
    self->_event = v10;
  }
}

@end