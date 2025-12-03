@interface _DTXProxy
- (_DTXProxy)initWithChannel:(id)channel;
- (id)methodSignatureForSelector:(SEL)selector;
@end

@implementation _DTXProxy

- (_DTXProxy)initWithChannel:(id)channel
{
  channelCopy = channel;
  v9.receiver = self;
  v9.super_class = _DTXProxy;
  v6 = [(_DTXProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxyChannel, channel);
  }

  return v7;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v23.receiver = self;
  v23.super_class = _DTXProxy;
  v5 = [(_DTXProxy *)&v23 methodSignatureForSelector:?];
  v8 = v5;
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v10 = objc_msgSend_remoteInterface(self->_proxyChannel, v6, v7);
    MethodDescription = protocol_getMethodDescription(v10, selector, 1, 1);

    if (!MethodDescription.name)
    {
      v13 = MEMORY[0x277CBEAD8];
      v14 = *MEMORY[0x277CBE648];
      v15 = NSStringFromSelector(selector);
      v18 = objc_msgSend_remoteInterface(self->_proxyChannel, v16, v17);
      Name = protocol_getName(v18);
      objc_msgSend_raise_format_(v13, v20, v14, @"Selector %@ is not part of the remote interface %s", v15, Name);
    }

    v9 = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x277CBEB08], v12, MethodDescription.types);
  }

  v21 = v9;

  return v21;
}

@end