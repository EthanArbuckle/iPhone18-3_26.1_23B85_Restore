@interface DTXProxyChannel
- (DTXProxyChannel)initWithChannel:(id)channel remoteProtocol:(id)protocol localProtocol:(id)localProtocol;
- (id)_allowedClassesForArgumentsOfRemoteInterfaceSelector:(SEL)selector methodSignature:(id)signature;
- (id)_allowedClassesForReturnValues;
- (id)_validateDispatch:(id)dispatch;
- (id)remoteObjectProxy;
- (void)_sendInvocationMessage:(id)message;
- (void)cancel;
- (void)setAdditionalAllowedClassesForProtocolMethods:(id)methods;
- (void)setExportedObject:(id)object queue:(id)queue;
@end

@implementation DTXProxyChannel

- (DTXProxyChannel)initWithChannel:(id)channel remoteProtocol:(id)protocol localProtocol:(id)localProtocol
{
  channelCopy = channel;
  protocolCopy = protocol;
  localProtocolCopy = localProtocol;
  v24.receiver = self;
  v24.super_class = DTXProxyChannel;
  v12 = [(DTXProxyChannel *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_channel, channel);
    objc_storeStrong(&v13->_remoteInterface, protocol);
    objc_storeStrong(&v13->_exportedInterface, localProtocol);
    v16 = objc_msgSend_set(MEMORY[0x277CBEB98], v14, v15);
    additionalAllowedClassesForProtocolMethods = v13->_additionalAllowedClassesForProtocolMethods;
    v13->_additionalAllowedClassesForProtocolMethods = v16;

    objc_initWeak(&location, v13);
    channel = v13->_channel;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_247F3F070;
    v21[3] = &unk_278EEE6B8;
    objc_copyWeak(&v22, &location);
    objc_msgSend__setDispatchValidator_(channel, v19, v21);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (id)remoteObjectProxy
{
  v3 = [_DTXProxy alloc];
  v5 = objc_msgSend_initWithChannel_(v3, v4, self);

  return v5;
}

- (void)cancel
{
  channel = self->_channel;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_247F3F19C;
  v3[3] = &unk_278EEE5C8;
  v3[4] = self;
  objc_msgSend_sendControlAsync_replyHandler_(channel, a2, kDTXAckBarrierMessage, v3);
}

- (id)_allowedClassesForArgumentsOfRemoteInterfaceSelector:(SEL)selector methodSignature:(id)signature
{
  signatureCopy = signature;
  v8 = objc_msgSend_defaultAllowedSecureCodingClasses(DTXMessage, v6, v7);
  v9 = signatureCopy;
  v10 = objc_opt_new();
  if (objc_msgSend_numberOfArguments(v9, v11, v12))
  {
    v14 = 0;
    do
    {
      v15 = objc_msgSend__classForObjectAtArgumentIndex_(v9, v13, v14);
      if (v15)
      {
        objc_msgSend_addObject_(v10, v16, v15);
      }

      ++v14;
    }

    while (v14 < objc_msgSend_numberOfArguments(v9, v16, v17));
  }

  if (objc_msgSend_count(v10, v18, v19))
  {
    v22 = objc_msgSend_setByAddingObjectsFromSet_(v8, v20, v10);

    v8 = v22;
  }

  v23 = objc_msgSend_additionalAllowedClassesForProtocolMethods(self, v20, v21);
  if (objc_msgSend_count(v23, v24, v25))
  {
    v27 = objc_msgSend_setByAddingObjectsFromSet_(v8, v26, v23);

    v8 = v27;
  }

  return v8;
}

- (id)_allowedClassesForReturnValues
{
  v4 = objc_msgSend_defaultAllowedSecureCodingClasses(DTXMessage, a2, v2);
  v7 = objc_msgSend_additionalAllowedClassesForProtocolMethods(self, v5, v6);
  if (objc_msgSend_count(v7, v8, v9))
  {
    v11 = objc_msgSend_setByAddingObjectsFromSet_(v4, v10, v7);

    v4 = v11;
  }

  return v4;
}

- (id)_validateDispatch:(id)dispatch
{
  dispatchCopy = dispatch;
  atomic_store(1u, &self->_hasProcessedMessage);
  if (!self->_exportedInterface)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v4, @"DTXMissingInterfaceException", @"No exported interface has been specified");
  }

  v7 = objc_msgSend_selector(dispatchCopy, v4, v5);
  exportedInterface = self->_exportedInterface;
  MethodTypeEncoding = _protocol_getMethodTypeEncoding();
  if (!MethodTypeEncoding)
  {
    v11 = MEMORY[0x277CBEAD8];
    v12 = NSStringFromSelector(v7);
    objc_msgSend_raise_format_(v11, v13, @"DTXSelectorNotAllowedException", @"Selector %@ is not part of the exported interface", v12);
  }

  v14 = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x277CBEB08], v9, MethodTypeEncoding);
  v17 = objc_msgSend_methodSignature(dispatchCopy, v15, v16);
  v20 = objc_msgSend_numberOfArguments(v17, v18, v19);
  v23 = objc_msgSend_numberOfArguments(v14, v21, v22);

  if (v20 != v23)
  {
    v26 = MEMORY[0x277CBEAD8];
    v27 = NSStringFromSelector(v7);
    objc_msgSend_raise_format_(v26, v28, @"DTXSelectorMismatchException", @"Incorrect number of arguments in incoming message with selector %@", v27);
  }

  v55 = dispatchCopy;
  v29 = objc_msgSend_target(dispatchCopy, v24, v25);
  v30 = objc_opt_respondsToSelector();

  if ((v30 & 1) == 0)
  {
    v33 = MEMORY[0x277CBEAD8];
    v34 = NSStringFromSelector(v7);
    objc_msgSend_raise_format_(v33, v35, @"DTXSelectorUnimplementedException", @"Selector %@ is a valid part of the exported interface, but the exported object does not implement it.", v34);
  }

  if (objc_msgSend_numberOfArguments(v14, v31, v32) >= 3)
  {
    v36 = 2;
    do
    {
      v37 = v14;
      ArgumentTypeAtIndex = objc_msgSend_getArgumentTypeAtIndex_(v37, v38, v36);
      if (*ArgumentTypeAtIndex != 64)
      {
        v42 = ArgumentTypeAtIndex;
        v43 = MEMORY[0x277CBEAD8];
        v44 = NSStringFromSelector(v7);
        objc_msgSend_raise_format_(v43, v45, @"DTXSelectorInvalidArgumentTypeException", @"Invalid argument type %s at index %lu of selector %@", v42, v36, v44);
      }

      ++v36;
    }

    while (v36 < objc_msgSend_numberOfArguments(v14, v40, v41));
  }

  v46 = v14;
  if (*objc_msgSend_methodReturnType(v46, v47, v48) != 64)
  {
    v50 = MEMORY[0x277CBEAD8];
    v51 = NSStringFromSelector(v7);
    objc_msgSend_raise_format_(v50, v52, @"DTXSelectorInvalidReturnTypeException", @"Selector %@ is a part of the exported interface, but return type is not an object.", v51);
  }

  v53 = objc_msgSend__allowedClassesForArgumentsOfRemoteInterfaceSelector_methodSignature_(self, v49, v7, v14);

  return v53;
}

- (void)setExportedObject:(id)object queue:(id)queue
{
  objectCopy = object;
  queueCopy = queue;
  v7 = objectCopy;
  v8 = queueCopy;
  if (objectCopy)
  {
    v9 = objc_msgSend_conformsToProtocol_(objectCopy, objectCopy, self->_exportedInterface);
    v7 = objectCopy;
    if ((v9 & 1) == 0)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], objectCopy, *MEMORY[0x277CBE648], @"Exported object does not conform to the exported interface.");
      v7 = objectCopy;
    }
  }

  objc_msgSend__setDispatchTarget_queue_(self->_channel, v7, v7, v8);
}

- (void)setAdditionalAllowedClassesForProtocolMethods:(id)methods
{
  methodsCopy = methods;
  if (atomic_exchange(&self->_hasProcessedMessage, 1u))
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE648];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[DTXProxyChannel setAdditionalAllowedClassesForProtocolMethods:]");
    objc_msgSend_raise_format_(v6, v9, v7, @"%@ must only be called once, before sending or receiving messages", v8);
  }

  additionalAllowedClassesForProtocolMethods = self->_additionalAllowedClassesForProtocolMethods;
  self->_additionalAllowedClassesForProtocolMethods = methodsCopy;
}

- (void)_sendInvocationMessage:(id)message
{
  atomic_store(1u, &self->_hasProcessedMessage);
  messageCopy = message;
  v17 = objc_opt_new();
  objc_msgSend_setReturnValue_(messageCopy, v5, &v17);
  objc_msgSend_retainArguments(messageCopy, v6, v7);
  v8 = [DTXMessage alloc];
  v10 = objc_msgSend_initWithInvocation_(v8, v9, messageCopy);

  v13 = objc_msgSend_channel(self, v11, v12);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_247F3F880;
  v15[3] = &unk_278EEE6E0;
  v15[4] = self;
  v16 = v17;
  objc_msgSend_sendControlAsync_replyHandler_(v13, v14, v10, v15);
}

@end