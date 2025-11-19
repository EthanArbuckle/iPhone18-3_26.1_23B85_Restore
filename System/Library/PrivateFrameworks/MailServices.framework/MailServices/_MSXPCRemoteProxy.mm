@interface _MSXPCRemoteProxy
- (BOOL)conformsToProtocol:(id)a3;
- (_MSXPCRemoteProxy)initWithConnection:(id)a3 interface:(id)a4 errorHandler:(id)a5;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
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

- (_MSXPCRemoteProxy)initWithConnection:(id)a3 interface:(id)a4 errorHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = _MSXPCRemoteProxy;
  v12 = [(_MSXPCRemoteProxy *)&v18 init];
  v13 = v12;
  if (v12)
  {
    v12->_selectorLock._os_unfair_lock_opaque = 0;
    v12->_knownSelectors = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    objc_storeStrong(&v13->_connection, a3);
    objc_storeStrong(&v13->_remoteInterface, a4);
    v14 = MEMORY[0x1DA71BD00](v11);
    errorHandler = v13->_errorHandler;
    v13->_errorHandler = v14;

    v16 = v13;
  }

  return v13;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _MSXPCRemoteProxy;
  if ([(_MSXPCRemoteProxy *)&v8 conformsToProtocol:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NSXPCInterface *)self->_remoteInterface protocol];
    v5 = protocol_conformsToProtocol(v6, v4);
  }

  return v5;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = [(NSXPCInterface *)self->_remoteInterface protocol];
  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: No protocol has been set on connection %@", "-[_MSXPCRemoteProxy methodSignatureForSelector:]", self->_connection}];
    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  os_unfair_lock_lock(&self->_selectorLock);
  v6 = CFDictionaryGetValue(self->_knownSelectors, a3);
  os_unfair_lock_unlock(&self->_selectorLock);
  if (!v6)
  {
    MethodDescription = protocol_getMethodDescription(v5, a3, 1, 1);
    types = MethodDescription.types;
    if (MethodDescription.name || (v9 = protocol_getMethodDescription(v5, a3, 0, 1), types = v9.types, v9.name))
    {
      v6 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:types];
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v11.receiver = self;
    v11.super_class = _MSXPCRemoteProxy;
    v6 = [(_MSXPCRemoteProxy *)&v11 methodSignatureForSelector:a3];
    if (v6)
    {
LABEL_8:
      os_unfair_lock_lock(&self->_selectorLock);
      CFDictionarySetValue(self->_knownSelectors, a3, v6);
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

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [[_MSXPCRemoteProxy alloc] initWithConnection:self->_connection interface:self->_remoteInterface errorHandler:v4];

  return v5;
}

@end