@interface _MSXPCRemoteProxy
- (BOOL)conformsToProtocol:(id)protocol;
- (_MSXPCRemoteProxy)initWithConnection:(id)connection interface:(id)interface errorHandler:(id)handler;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
@end

@implementation _MSXPCRemoteProxy

- (void)dealloc
{
  knownSelectors = self->_knownSelectors;
  if (knownSelectors)
  {
    CFRelease(knownSelectors);
  }

  v4.receiver = self;
  v4.super_class = _MSXPCRemoteProxy;
  [(_MSXPCRemoteProxy *)&v4 dealloc];
}

- (_MSXPCRemoteProxy)initWithConnection:(id)connection interface:(id)interface errorHandler:(id)handler
{
  connectionCopy = connection;
  interfaceCopy = interface;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = _MSXPCRemoteProxy;
  v12 = [(_MSXPCRemoteProxy *)&v18 init];
  v13 = v12;
  if (v12)
  {
    v12->_selectorLock._os_unfair_lock_opaque = 0;
    v12->_knownSelectors = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    objc_storeStrong(&v13->_connection, connection);
    objc_storeStrong(&v13->_remoteInterface, interface);
    v14 = MEMORY[0x1DA71BD00](handlerCopy);
    errorHandler = v13->_errorHandler;
    v13->_errorHandler = v14;

    v16 = v13;
  }

  return v13;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v8.receiver = self;
  v8.super_class = _MSXPCRemoteProxy;
  if ([(_MSXPCRemoteProxy *)&v8 conformsToProtocol:protocolCopy])
  {
    v5 = 1;
  }

  else
  {
    protocol = [(NSXPCInterface *)self->_remoteInterface protocol];
    v5 = protocol_conformsToProtocol(protocol, protocolCopy);
  }

  return v5;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  protocol = [(NSXPCInterface *)self->_remoteInterface protocol];
  if (!protocol)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: No protocol has been set on connection %@", "-[_MSXPCRemoteProxy methodSignatureForSelector:]", self->_connection}];
    goto LABEL_10;
  }

  if (!selector)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  os_unfair_lock_lock(&self->_selectorLock);
  v6 = CFDictionaryGetValue(self->_knownSelectors, selector);
  os_unfair_lock_unlock(&self->_selectorLock);
  if (!v6)
  {
    MethodDescription = protocol_getMethodDescription(protocol, selector, 1, 1);
    types = MethodDescription.types;
    if (MethodDescription.name || (v9 = protocol_getMethodDescription(protocol, selector, 0, 1), types = v9.types, v9.name))
    {
      v6 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:types];
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v11.receiver = self;
    v11.super_class = _MSXPCRemoteProxy;
    v6 = [(_MSXPCRemoteProxy *)&v11 methodSignatureForSelector:selector];
    if (v6)
    {
LABEL_8:
      os_unfair_lock_lock(&self->_selectorLock);
      CFDictionarySetValue(self->_knownSelectors, selector, v6);
      os_unfair_lock_unlock(&self->_selectorLock);
    }
  }

LABEL_11:

  return v6;
}

- (id)remoteObjectProxy
{
  v2 = [[_MSXPCRemoteProxy alloc] initWithConnection:self->_connection interface:self->_remoteInterface errorHandler:0];

  return v2;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[_MSXPCRemoteProxy alloc] initWithConnection:self->_connection interface:self->_remoteInterface errorHandler:handlerCopy];

  return v5;
}

@end