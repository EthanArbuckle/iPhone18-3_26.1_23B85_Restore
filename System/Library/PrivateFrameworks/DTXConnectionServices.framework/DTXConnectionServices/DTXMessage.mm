@interface DTXMessage
+ (BOOL)extractSerializedCompressionInfoFromBuffer:(const char *)buffer length:(unint64_t)length compressionType:(int *)type uncompressedLength:(unint64_t *)uncompressedLength compressedDataOffset:(unint64_t *)offset;
+ (id)message;
+ (id)messageReferencingBuffer:(const void *)buffer length:(unint64_t)length destructor:(id)destructor;
+ (id)messageWithBuffer:(const void *)buffer length:(unint64_t)length;
+ (id)messageWithData:(id)data;
+ (id)messageWithError:(id)error;
+ (id)messageWithObject:(id)object;
+ (id)messageWithPrimitive:(void *)primitive;
+ (id)messageWithSelector:(SEL)selector arguments:(id)arguments;
+ (id)messageWithSelector:(SEL)selector objectArguments:(id)arguments;
+ (void)initialize;
+ (void)setReportCompressionBlock:(id)block;
- (BOOL)isBarrier;
- (BOOL)isDispatch;
- (BOOL)shouldInvokeWithTarget:(id)target;
- (DTXMessage)initWithInvocation:(id)invocation;
- (DTXMessage)initWithSelector:(SEL)selector firstArg:(id)arg remainingObjectArgs:(char *)args;
- (DTXMessage)initWithSelector:(SEL)selector objects:(id)objects;
- (DTXMessage)initWithSerializedForm:(const char *)form length:(unint64_t)length destructor:(id)destructor compressor:(id)compressor;
- (DTXMessage)initWithSerializedForm:(id)form compressor:(id)compressor;
- (NSData)data;
- (NSError)error;
- (NSSecureCoding)object;
- (NSSecureCoding)payloadObject;
- (const)getBufferWithReturnedLength:(unint64_t *)length;
- (id)_faultAuxiliaryValueOfType:(Class)type forKey:(id)key;
- (id)_initWithReferencedSerializedForm:(id)form compressor:(id)compressor payloadSet:(id)set;
- (id)_mutableAuxiliaryDictionary;
- (id)dataForMessageKey:(id)key;
- (id)newReply;
- (id)newReplyReferencingBuffer:(const void *)buffer length:(unint64_t)length destructor:(id)destructor;
- (id)newReplyWithError:(id)error;
- (id)newReplyWithMessage:(id)message;
- (id)newReplyWithObject:(id)object;
- (id)objectWithAllowedClasses:(id)classes;
- (id)stringForMessageKey:(id)key;
- (int64_t)integerForMessageKey:(id)key;
- (unint64_t)serializedLength;
- (void)_makeBarrier;
- (void)_makeImmutable;
- (void)_setPayloadBuffer:(const char *)buffer length:(unint64_t)length shouldCopy:(BOOL)copy destructor:(id)destructor;
- (void)_willModifyAuxiliary;
- (void)dealloc;
- (void)invokeWithTarget:(id)target replyChannel:(id)channel validator:(id)validator;
- (void)serializedFormApply:(id)apply;
- (void)setData:(id)data forMessageKey:(id)key;
- (void)setError:(id)error;
- (void)setErrorStatus:(unsigned int)status;
- (void)setInteger:(int64_t)integer forMessageKey:(id)key;
- (void)setPayloadObject:(id)object;
- (void)setString:(id)string forMessageKey:(id)key;
@end

@implementation DTXMessage

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_opt_new();
    v3 = kDTXBarrierMessage;
    kDTXBarrierMessage = v2;

    objc_msgSend_setMessageType_(kDTXBarrierMessage, v4, 5);
    objc_msgSend__makeImmutable(kDTXBarrierMessage, v5, v6);
    v7 = objc_opt_new();
    v8 = kDTXAckBarrierMessage;
    kDTXAckBarrierMessage = v7;

    objc_msgSend_setMessageType_(kDTXAckBarrierMessage, v9, 5);
    objc_msgSend__makeImmutable(kDTXAckBarrierMessage, v10, v11);
    v12 = objc_opt_new();
    v13 = kDTXHeartbeatMessage;
    kDTXHeartbeatMessage = v12;

    objc_msgSend_setMessageType_(kDTXHeartbeatMessage, v14, 5);
    objc_msgSend__makeImmutable(kDTXHeartbeatMessage, v15, v16);
    v17 = objc_opt_new();
    v18 = kDTXInterruptionMessage;
    kDTXInterruptionMessage = v17;

    objc_msgSend_setErrorStatus_(kDTXInterruptionMessage, v19, 2);
    objc_msgSend__makeImmutable(kDTXInterruptionMessage, v20, v21);
    mach_timebase_info(&dword_2814DB5C0);
    v38 = MEMORY[0x277CBEB98];
    v37 = objc_opt_class();
    v36 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v34 = objc_msgSend_setWithObjects_(v38, v33, v37, v36, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, 0);
    v35 = qword_2814DB5D0;
    qword_2814DB5D0 = v34;
  }
}

- (NSData)data
{
  if (self->_messageType == 1)
  {
    return self->_payloadData;
  }

  else
  {
    return 0;
  }
}

+ (void)setReportCompressionBlock:(id)block
{
  blockCopy = block;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F51530;
  v5[3] = &unk_278EEEB88;
  v6 = blockCopy;
  v4 = blockCopy;
  sub_247F51498(v5);
}

+ (id)messageWithObject:(id)object
{
  objectCopy = object;
  v4 = objc_opt_new();
  objc_msgSend_setPayloadObject_(v4, v5, objectCopy);

  return v4;
}

+ (id)messageWithError:(id)error
{
  errorCopy = error;
  v4 = objc_opt_new();
  objc_msgSend_setError_(v4, v5, errorCopy);

  return v4;
}

+ (id)messageWithPrimitive:(void *)primitive
{
  v4 = objc_opt_new();
  v9 = 0;
  Serialized = DTXPrimitiveDictionaryGetSerialized(primitive, &v9);
  objc_msgSend__setPayloadBuffer_length_shouldCopy_destructor_(v4, v6, Serialized, v9, 1, 0);
  objc_msgSend_setMessageType_(v4, v7, 6);

  return v4;
}

+ (id)messageWithBuffer:(const void *)buffer length:(unint64_t)length
{
  v6 = objc_opt_new();
  objc_msgSend__setPayloadBuffer_length_shouldCopy_destructor_(v6, v7, buffer, length, 1, 0);

  return v6;
}

+ (id)messageReferencingBuffer:(const void *)buffer length:(unint64_t)length destructor:(id)destructor
{
  destructorCopy = destructor;
  v8 = objc_opt_new();
  objc_msgSend__setPayloadBuffer_length_shouldCopy_destructor_(v8, v9, buffer, length, 0, destructorCopy);
  if (destructorCopy && !v8[3])
  {
    destructorCopy[2](destructorCopy);
  }

  return v8;
}

+ (id)messageWithData:(id)data
{
  dataCopy = data;
  v6 = objc_opt_new();
  if (v6)
  {
    v7 = objc_msgSend_copy(dataCopy, v4, v5);
    v8 = *(v6 + 24);
    *(v6 + 24) = v7;

    *(v6 + 8) = 1;
    v9 = v6;
  }

  return v6;
}

+ (id)messageWithSelector:(SEL)selector objectArguments:(id)arguments
{
  argumentsCopy = arguments;
  if (!selector)
  {
    sub_247F5A5D0(a2, self, v7);
  }

  v9 = [self alloc];
  v11 = objc_msgSend_initWithSelector_firstArg_remainingObjectArgs_(v9, v10, selector, argumentsCopy, &v16);
  objc_msgSend__makeImmutable(v11, v12, v13);

  return v11;
}

+ (id)messageWithSelector:(SEL)selector arguments:(id)arguments
{
  argumentsCopy = arguments;
  if (!selector)
  {
    sub_247F5A64C(a2, self, v7);
  }

  v9 = [self alloc];
  v11 = objc_msgSend_initWithSelector_objects_(v9, v10, selector, argumentsCopy);
  objc_msgSend__makeImmutable(v11, v12, v13);

  return v11;
}

+ (id)message
{
  v2 = objc_opt_new();

  return v2;
}

- (id)newReply
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_channelCode(self, v4, v5);
  objc_msgSend_setChannelCode_(v3, v7, v6);
  v10 = objc_msgSend_identifier(self, v8, v9);
  objc_msgSend_setIdentifier_(v3, v11, v10);
  v14 = objc_msgSend_conversationIndex(self, v12, v13);
  objc_msgSend_setConversationIndex_(v3, v15, (v14 + 1));
  return v3;
}

- (id)newReplyWithObject:(id)object
{
  v4 = objc_msgSend_messageWithObject_(DTXMessage, a2, object);
  v7 = objc_msgSend_channelCode(self, v5, v6);
  objc_msgSend_setChannelCode_(v4, v8, v7);
  v11 = objc_msgSend_identifier(self, v9, v10);
  objc_msgSend_setIdentifier_(v4, v12, v11);
  v15 = objc_msgSend_conversationIndex(self, v13, v14);
  objc_msgSend_setConversationIndex_(v4, v16, (v15 + 1));
  return v4;
}

- (id)newReplyWithError:(id)error
{
  v4 = objc_msgSend_messageWithError_(DTXMessage, a2, error);
  v7 = objc_msgSend_channelCode(self, v5, v6);
  objc_msgSend_setChannelCode_(v4, v8, v7);
  v11 = objc_msgSend_identifier(self, v9, v10);
  objc_msgSend_setIdentifier_(v4, v12, v11);
  v15 = objc_msgSend_conversationIndex(self, v13, v14);
  objc_msgSend_setConversationIndex_(v4, v16, (v15 + 1));
  return v4;
}

- (id)newReplyWithMessage:(id)message
{
  messageCopy = message;
  v8 = objc_msgSend_errorStatus(messageCopy, v6, v7);
  if (v8 == 3)
  {
    v11 = objc_msgSend_errorStatus(messageCopy, v9, v10);
    v18 = @"peer unable to respond";
  }

  else
  {
    if (v8 != 2)
    {
      v21 = objc_msgSend_message(DTXMessage, v9, v10);
      objc_storeStrong((v21 + 48), message);
      *(v21 + 32) = objc_msgSend_cost(messageCopy, v24, v25);
      objc_msgSend_setMessageType_(v21, v26, 8);
      v29 = objc_msgSend_errorStatus(messageCopy, v27, v28);
      objc_msgSend_setErrorStatus_(v21, v30, v29);
      goto LABEL_7;
    }

    v11 = objc_msgSend_errorStatus(messageCopy, v9, v10);
    v18 = @"interruption encountered and re-routed";
  }

  v19 = sub_247F51FEC(v11, v18, v12, v13, v14, v15, v16, v17, v44);
  v21 = objc_msgSend_messageWithError_(DTXMessage, v20, v19);

LABEL_7:
  v31 = objc_msgSend_channelCode(self, v22, v23);
  objc_msgSend_setChannelCode_(v21, v32, v31);
  v35 = objc_msgSend_identifier(self, v33, v34);
  objc_msgSend_setIdentifier_(v21, v36, v35);
  v39 = objc_msgSend_conversationIndex(self, v37, v38);
  objc_msgSend_setConversationIndex_(v21, v40, (v39 + 1));
  objc_msgSend__makeImmutable(v21, v41, v42);

  return v21;
}

- (id)newReplyReferencingBuffer:(const void *)buffer length:(unint64_t)length destructor:(id)destructor
{
  v6 = objc_msgSend_messageReferencingBuffer_length_destructor_(DTXMessage, a2, buffer, length, destructor);
  v9 = objc_msgSend_channelCode(self, v7, v8);
  objc_msgSend_setChannelCode_(v6, v10, v9);
  v13 = objc_msgSend_identifier(self, v11, v12);
  objc_msgSend_setIdentifier_(v6, v14, v13);
  v17 = objc_msgSend_conversationIndex(self, v15, v16);
  objc_msgSend_setConversationIndex_(v6, v18, (v17 + 1));
  return v6;
}

- (DTXMessage)initWithSelector:(SEL)selector firstArg:(id)arg remainingObjectArgs:(char *)args
{
  argCopy = arg;
  v20.receiver = self;
  v20.super_class = DTXMessage;
  argsCopy = args;
  v9 = [(DTXMessage *)&v20 init];
  if (v9)
  {
    v10 = NSStringFromSelector(selector);
    objc_msgSend_setPayloadObject_(v9, v11, v10);

    v9->_messageType = 2;
    if (argCopy)
    {
      objc_msgSend__willModifyAuxiliary(v9, v12, v13);
      v14 = MEMORY[0x277D85DD0];
      do
      {
        v18[0] = v14;
        v18[1] = 3221225472;
        v18[2] = sub_247F523E8;
        v18[3] = &unk_278EEF090;
        v19 = v9;
        sub_247F522C0(argCopy, v18);
        v15 = argsCopy;
        argsCopy += 8;
        v16 = *v15;

        argCopy = v16;
      }

      while (v16);
    }
  }

  return v9;
}

- (DTXMessage)initWithSelector:(SEL)selector objects:(id)objects
{
  v32 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v30.receiver = self;
  v30.super_class = DTXMessage;
  v7 = [(DTXMessage *)&v30 init];
  if (v7)
  {
    v8 = NSStringFromSelector(selector);
    objc_msgSend_setPayloadObject_(v7, v9, v8);

    v7->_messageType = 2;
    if (objc_msgSend_count(objectsCopy, v10, v11))
    {
      objc_msgSend__willModifyAuxiliary(v7, v12, v13);
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v14 = objectsCopy;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v26, v31, 16);
      if (v16)
      {
        v17 = v16;
        v18 = *v27;
        do
        {
          v19 = 0;
          do
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v26 + 1) + 8 * v19);
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = sub_247F525D4;
            v24[3] = &unk_278EEF090;
            v25 = v7;
            sub_247F522C0(v20, v24);

            ++v19;
          }

          while (v17 != v19);
          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v21, &v26, v31, 16);
        }

        while (v17);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v7;
}

- (DTXMessage)initWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  v42.receiver = self;
  v42.super_class = DTXMessage;
  v7 = [(DTXMessage *)&v42 init];
  if (v7)
  {
    v8 = objc_msgSend_selector(invocationCopy, v5, v6);
    v9 = NSStringFromSelector(v8);
    objc_msgSend_setPayloadObject_(v7, v10, v9);

    v7->_messageType = 2;
    v13 = objc_msgSend_methodSignature(invocationCopy, v11, v12);
    v16 = objc_msgSend_numberOfArguments(v13, v14, v15);
    if (v16 >= 3)
    {
      v19 = v16;
      objc_msgSend__willModifyAuxiliary(v7, v17, v18);
      v20 = *MEMORY[0x277CBE660];
      for (i = 2; i != v19; ++i)
      {
        v22 = v13;
        ArgumentTypeAtIndex = objc_msgSend_getArgumentTypeAtIndex_(v22, v23, i);
        if (*ArgumentTypeAtIndex == 64)
        {
          v41 = 0;
          objc_msgSend_getArgument_atIndex_(invocationCopy, v25, &v41, i);
          if (v41)
          {
            v28 = objc_msgSend_conformsToProtocol_(v41, v27, &unk_285A16828);
            v29 = v41;
            if ((v28 & 1) == 0)
            {
              v30 = MEMORY[0x277CBEAD8];
              v31 = objc_opt_class();
              objc_msgSend_raise_format_(v30, v32, v20, @"Arguments for proxied messages must conform to NSSecureCoding. %@ does not.", v31);
              v29 = v41;
            }
          }

          else
          {
            v29 = 0;
          }

          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = sub_247F5280C;
          v39[3] = &unk_278EEF090;
          v40 = v7;
          sub_247F522C0(v29, v39);
        }

        else
        {
          v33 = ArgumentTypeAtIndex;
          v34 = MEMORY[0x277CBEAD8];
          v35 = objc_msgSend_selector(invocationCopy, v25, v26);
          v36 = NSStringFromSelector(v35);
          objc_msgSend_raise_format_(v34, v37, v20, @"Invalid argument type %s at index %lu of selector %@", v33, i, v36);
        }
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  auxiliary = self->_auxiliary;
  if (auxiliary && !self->_deserialized)
  {
    DTXPrimitiveDictionaryDestroy(auxiliary);
    self->_auxiliary = 0;
  }

  v4.receiver = self;
  v4.super_class = DTXMessage;
  [(DTXMessage *)&v4 dealloc];
}

- (void)_setPayloadBuffer:(const char *)buffer length:(unint64_t)length shouldCopy:(BOOL)copy destructor:(id)destructor
{
  copyCopy = copy;
  destructorCopy = destructor;
  if (buffer && length)
  {
    if (copyCopy)
    {
      v12 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v10, buffer, length);
    }

    else
    {
      if (destructorCopy)
      {
        v13 = objc_alloc(MEMORY[0x277CBEA90]);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = sub_247F529A4;
        v18[3] = &unk_278EEF0B8;
        v19 = destructorCopy;
        v15 = objc_msgSend_initWithBytesNoCopy_length_deallocator_(v13, v14, buffer, length, v18);
        payloadData = self->_payloadData;
        self->_payloadData = v15;

        v17 = v19;
LABEL_9:

        goto LABEL_10;
      }

      v12 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v10, buffer, length, 0);
    }

    v17 = self->_payloadData;
    self->_payloadData = v12;
    goto LABEL_9;
  }

LABEL_10:
  self->_messageType = 1;
}

- (void)setPayloadObject:(id)object
{
  objectCopy = object;
  v7 = atomic_load(&self->_immutable);
  if (v7)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    Name = sel_getName(a2);
    objc_msgSend_raise_format_(v8, v12, @"DTXMessageException", @"[%@ %s] Unable to modify immutable message: %@", v10, Name, self);
  }

  if (self->_payloadObject != objectCopy)
  {
    objc_storeStrong(&self->_payloadObject, object);
    payloadObject = self->_payloadObject;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_247F52AC0;
    v14[3] = &unk_278EEF090;
    v14[4] = self;
    sub_247F522C0(payloadObject, v14);
  }
}

- (NSSecureCoding)payloadObject
{
  v4 = objc_msgSend_defaultAllowedSecureCodingClasses(DTXMessage, a2, v2);
  sub_247F52B5C(self, v4);

  payloadObject = self->_payloadObject;

  return payloadObject;
}

- (id)objectWithAllowedClasses:(id)classes
{
  classesCopy = classes;
  sub_247F52B5C(self, classesCopy);
  v5 = self->_payloadObject;
  v6 = classesCopy;
  for (i = object_getClass(v5); ; i = class_getSuperclass(v9))
  {
    v9 = i;
    if (!i)
    {
      break;
    }

    if (objc_msgSend_containsObject_(v6, v8, i))
    {
      v9 = v5;
      break;
    }
  }

  return v9;
}

- (NSSecureCoding)object
{
  v4 = objc_msgSend_messageType(self, a2, v2);
  v7 = 0;
  if (v4 > 5)
  {
    if (v4 == 8)
    {
      v7 = objc_msgSend_object(self->_payloadObject, v5, v6);
      goto LABEL_9;
    }

    if (v4 != 6)
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = objc_msgSend_defaultAllowedSecureCodingClasses(DTXMessage, v5, v6);
    v7 = objc_msgSend_objectWithAllowedClasses_(self, v9, v8);

    goto LABEL_9;
  }

  if (v4 == 1 || v4 == 3)
  {
    goto LABEL_7;
  }

LABEL_9:

  return v7;
}

- (const)getBufferWithReturnedLength:(unint64_t *)length
{
  if (self->_messageType != 1)
  {
    return 0;
  }

  if (length)
  {
    *length = objc_msgSend_length(self->_payloadData, a2, length);
  }

  payloadData = self->_payloadData;

  return objc_msgSend_bytes(payloadData, a2, length);
}

- (void)_makeImmutable
{
  if (qword_2814DB610 != -1)
  {
    sub_247F5A6C8();
  }

  v3 = 0;
  atomic_compare_exchange_strong_explicit(&self->_immutable, &v3, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v3 && self->_auxiliaryPromoted)
  {
    if (!self->_auxiliary)
    {
      DTXPrimitiveDictionaryCreate();
      self->_auxiliary = v4;
    }

    v5 = objc_autoreleasePoolPush();
    auxiliaryPromoted = self->_auxiliaryPromoted;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_247F53198;
    v9[3] = &unk_278EEF140;
    v9[4] = self;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(auxiliaryPromoted, v7, v9);
    v8 = self->_auxiliaryPromoted;
    self->_auxiliaryPromoted = 0;

    objc_autoreleasePoolPop(v5);
  }
}

- (void)_makeBarrier
{
  v3 = atomic_load(&self->_immutable);
  if (v3)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    Name = sel_getName(a2);
    objc_msgSend_raise_format_(v5, v9, @"DTXMessageException", @"[%@ %s] Unable to modify immutable message: %@", v7, Name, self);
  }

  self->_messageType = 5;
}

- (void)setErrorStatus:(unsigned int)status
{
  v5 = atomic_load(&self->_immutable);
  if (v5)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    Name = sel_getName(a2);
    objc_msgSend_raise_format_(v7, v11, @"DTXMessageException", @"[%@ %s] Unable to modify immutable message: %@", v9, Name, self);
  }

  self->_status = status;
}

- (void)_willModifyAuxiliary
{
  v3 = atomic_load(&self->_immutable);
  if (v3)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    Name = sel_getName(a2);
    objc_msgSend_raise_format_(v5, v9, @"DTXMessageException", @"[%@ %s] Unable to modify immutable message: %@", v7, Name, self);
  }

  if (!self->_auxiliary)
  {
    DTXPrimitiveDictionaryCreate();
    self->_auxiliary = v10;
  }
}

- (id)_mutableAuxiliaryDictionary
{
  v3 = atomic_load(&self->_immutable);
  if (v3)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    Name = sel_getName(a2);
    objc_msgSend_raise_format_(v5, v9, @"DTXMessageException", @"[%@ %s] Unable to modify immutable message: %@", v7, Name, self);
  }

  auxiliaryPromoted = self->_auxiliaryPromoted;
  if (!auxiliaryPromoted)
  {
    v11 = objc_opt_new();
    v12 = self->_auxiliaryPromoted;
    self->_auxiliaryPromoted = v11;

    auxiliaryPromoted = self->_auxiliaryPromoted;
  }

  return auxiliaryPromoted;
}

- (void)setString:(id)string forMessageKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  if (stringCopy)
  {
    if (keyCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = objc_msgSend__mutableAuxiliaryDictionary(self, v7, v8);
        objc_msgSend_setObject_forKeyedSubscript_(v9, v10, stringCopy, keyCopy);
      }
    }
  }
}

- (void)setInteger:(int64_t)integer forMessageKey:(id)key
{
  if (key)
  {
    v6 = MEMORY[0x277CCABB0];
    keyCopy = key;
    v13 = objc_msgSend_numberWithLongLong_(v6, v8, integer);
    v11 = objc_msgSend__mutableAuxiliaryDictionary(self, v9, v10);
    objc_msgSend_setObject_forKeyedSubscript_(v11, v12, v13, keyCopy);
  }
}

- (void)setData:(id)data forMessageKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  if (dataCopy)
  {
    if (keyCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = objc_msgSend__mutableAuxiliaryDictionary(self, v7, v8);
        objc_msgSend_setObject_forKeyedSubscript_(v9, v10, dataCopy, keyCopy);
      }
    }
  }
}

- (id)_faultAuxiliaryValueOfType:(Class)type forKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    if (self->_messageType == 8)
    {
      v8 = objc_msgSend__faultAuxiliaryValueOfType_forKey_(self->_payloadObject, v6, type, keyCopy);
    }

    else
    {
      auxiliaryPromoted = self->_auxiliaryPromoted;
      if (!auxiliaryPromoted)
      {
        v10 = CFDictionaryCreateWithDTXPrimitiveDictionary(self->_auxiliary);
        v11 = self->_auxiliaryPromoted;
        self->_auxiliaryPromoted = v10;

        auxiliaryPromoted = self->_auxiliaryPromoted;
      }

      v12 = objc_msgSend_objectForKeyedSubscript_(auxiliaryPromoted, v6, keyCopy);
      if (type && (objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      v8 = v13;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)integerForMessageKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v7 = objc_msgSend__faultAuxiliaryValueOfType_forKey_(self, v6, v5, keyCopy);

  v10 = objc_msgSend_longLongValue(v7, v8, v9);
  return v10;
}

- (id)stringForMessageKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v7 = objc_msgSend__faultAuxiliaryValueOfType_forKey_(self, v6, v5, keyCopy);

  return v7;
}

- (id)dataForMessageKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v7 = objc_msgSend__faultAuxiliaryValueOfType_forKey_(self, v6, v5, keyCopy);

  return v7;
}

- (NSError)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  messageType = self->_messageType;
  if (messageType == 4)
  {
    v5 = objc_msgSend_payloadObject(self, a2, v2);
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v5;
      }

      else
      {
        v7 = MEMORY[0x277CCA9B8];
        v12 = *MEMORY[0x277CCA450];
        v13[0] = v5;
        v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v13, &v12, 1);
        v4 = objc_msgSend_errorWithDomain_code_userInfo_(v7, v9, @"DTXConnection", 1, v8);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else if (messageType == 8)
  {
    v4 = objc_msgSend_error(self->_payloadObject, a2, v2);
  }

  else
  {
    v4 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setError:(id)error
{
  objc_msgSend_setPayloadObject_(self, a2, error);
  self->_messageType = 4;
  self->_status = 1;
}

- (BOOL)isDispatch
{
  messageType = self->_messageType;
  if (messageType == 8)
  {
    return objc_msgSend_isDispatch(self->_payloadObject, a2, v2);
  }

  else
  {
    return messageType == 2;
  }
}

- (BOOL)isBarrier
{
  messageType = self->_messageType;
  if (messageType == 8)
  {
    return objc_msgSend_isBarrier(self->_payloadObject, a2, v2);
  }

  else
  {
    return messageType == 5;
  }
}

- (BOOL)shouldInvokeWithTarget:(id)target
{
  targetCopy = target;
  isDispatch = objc_msgSend_isDispatch(self, v5, v6);
  v10 = 0;
  if (targetCopy && isDispatch)
  {
    v11 = objc_msgSend_payloadObject(self, v8, v9);
    v12 = NSSelectorFromString(v11);

    v14 = objc_msgSend_methodSignatureForSelector_(targetCopy, v13, v12);
    if (v14)
    {
      v10 = sub_247F53D64(v12, targetCopy);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)invokeWithTarget:(id)target replyChannel:(id)channel validator:(id)validator
{
  v85 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  channelCopy = channel;
  validatorCopy = validator;
  if (!objc_msgSend_isDispatch(self, v11, v12))
  {
    goto LABEL_29;
  }

  v15 = objc_msgSend_payloadObject(self, v13, v14);
  v16 = NSSelectorFromString(v15);

  v20 = objc_msgSend_methodSignatureForSelector_(targetCopy, v17, v16);
  if (v20)
  {
    if (validatorCopy || (sub_247F53D64(v16, targetCopy) & 1) != 0)
    {
      goto LABEL_8;
    }

    v22 = MEMORY[0x277CBEAD8];
    v23 = objc_msgSend_payloadObject(self, v18, v21);
    objc_msgSend_raise_format_(v22, v24, @"DTXMessageInvocationException", @"Unable to invoke [%@ %@] - the selector is not allowed", targetCopy, v23);
  }

  else
  {
    v25 = MEMORY[0x277CBEAD8];
    v23 = objc_msgSend_payloadObject(self, v18, v19);
    objc_msgSend_raise_format_(v25, v26, @"DTXMessageInvocationException", @"Unable to invoke [%@ %@] - it does not respond to the selector", targetCopy, v23);
  }

LABEL_8:
  v27 = objc_msgSend_invocationWithMethodSignature_(MEMORY[0x277CBEAE8], v18, v20);
  objc_msgSend_setSelector_(v27, v28, v16);
  objc_msgSend_setTarget_(v27, v29, targetCopy);
  v34 = objc_msgSend_defaultAllowedSecureCodingClasses(DTXMessage, v30, v31);
  if (validatorCopy)
  {
    v35 = validatorCopy[2](validatorCopy, v27);

    v34 = v35;
  }

  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = objc_msgSend_numberOfArguments(v20, v32, v33) - 2;
  v36 = objc_opt_new();
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  auxiliary = self->_auxiliary;
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = sub_247F54558;
  v67[3] = &unk_278EEF190;
  v70 = &v81;
  v71 = &v77;
  v72 = &v73;
  v38 = v27;
  v68 = v38;
  v39 = v36;
  v69 = v39;
  sub_247F5449C(auxiliary, v34, v67);
  if (v82[3] < v78[3])
  {
    v42 = MEMORY[0x277CBEAD8];
    v43 = objc_msgSend_payloadObject(self, v40, v41);
    v44 = v82[3];
    objc_msgSend_raise_format_(v42, v45, @"DTXMessageInvocationException", @"Unable to invoke [%@ %@] - too few arguments (%lu provided, %lu expected)", targetCopy, v43, v44, v78[3]);
  }

  objc_msgSend_invoke(v38, v40, v41);
  v48 = v74[3];
  if (v48)
  {
    v86.length = CFArrayGetCount(v74[3]);
    v86.location = 0;
    CFArrayApplyFunction(v48, v86, j__free, 0);
    CFRelease(v74[3]);
  }

  v66 = 0;
  if (objc_msgSend_methodReturnLength(v20, v46, v47) < 8)
  {
    v52 = 0;
  }

  else
  {
    objc_msgSend_getReturnValue_(v38, v49, &v66);
    v51 = v66;
    v52 = v51;
    if (v51)
    {
      if ((objc_msgSend_conformsToProtocol_(v51, v49, &unk_285A16828) & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v62 = MEMORY[0x277CBEAD8];
          v53 = objc_msgSend_payloadObject(self, v49, v50);
          objc_msgSend_raise_format_(v62, v54, @"DTXMessageInvocationException", @"Unable to invoke [%@ %@] - 'id' return value does not conform to NSSecureCoding", targetCopy, v53);
        }
      }
    }
  }

  if (objc_msgSend_expectsReply(self, v49, v50))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = v52;
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = sub_247F54710;
      v63[3] = &unk_278EEF1B8;
      v64 = channelCopy;
      selfCopy = self;
      objc_msgSend_handleCompletion_(v57, v58, v63);
    }

    else
    {
      if (v52)
      {
        v59 = objc_msgSend_newReplyWithObject_(self, v55, v52);
      }

      else
      {
        v59 = objc_msgSend_newReply(self, v55, v56);
      }

      v57 = v59;
      objc_msgSend_sendControlAsync_replyHandler_(channelCopy, v60, v59, 0);
    }
  }

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);

LABEL_29:
  v61 = *MEMORY[0x277D85DE8];
}

+ (BOOL)extractSerializedCompressionInfoFromBuffer:(const char *)buffer length:(unint64_t)length compressionType:(int *)type uncompressedLength:(unint64_t *)uncompressedLength compressedDataOffset:(unint64_t *)offset
{
  result = 0;
  if (buffer && length >= 0x14 && type && uncompressedLength && offset)
  {
    if (*buffer == 7 && (v8 = *(buffer + 1) - *(buffer + 1), *type = (*buffer >> 8) & 0xF, v8 >= 4))
    {
      v9 = *(buffer + 1);
      *uncompressedLength = *&buffer[v9 + 16];
      *offset = v9 + 20;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)_initWithReferencedSerializedForm:(id)form compressor:(id)compressor payloadSet:(id)set
{
  formCopy = form;
  compressorCopy = compressor;
  setCopy = set;
  v28.receiver = self;
  v28.super_class = DTXMessage;
  v11 = [(DTXMessage *)&v28 init];
  if (v11)
  {
    v12 = formCopy;
    v15 = objc_msgSend_bytes(v12, v13, v14);
    v11->_deserialized = 1;
    v11->_cost = objc_msgSend_length(formCopy, v16, v17);
    v18 = *(v15 + 1);
    v19 = *(v15 + 1) - v18;
    setCopy[2](setCopy, &v15[v18 + 16], v19);
    v11->_auxiliary = DTXPrimitiveDictionaryReferencingSerialized(v15 + 16, *(v15 + 1));
    v22 = *v15;
    v11->_messageType = v22;
    v11->_status = v22 == 4;
    if (v22 == 7)
    {
      v23 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v20, &v15[*(v15 + 1) + 16], v19, 0);
      v25 = objc_msgSend__decompressedData_compressor_compressionType_(v11, v24, v23, compressorCopy, (*v15 >> 12) & 0xF0 | (*v15 >> 8) & 0xFu);
      payloadData = v11->_payloadData;
      v11->_payloadData = v25;

      if (!v11->_payloadData)
      {

        v11 = 0;
        goto LABEL_6;
      }

      v11->_messageType = 1;
    }

    objc_msgSend__makeImmutable(v11, v20, v21);
  }

LABEL_6:

  return v11;
}

- (DTXMessage)initWithSerializedForm:(id)form compressor:(id)compressor
{
  objc_storeStrong(&self->_serializedData, form);
  formCopy = form;
  compressorCopy = compressor;
  serializedData = self->_serializedData;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247F54C80;
  v13[3] = &unk_278EEF1E0;
  selfCopy = self;
  v11 = objc_msgSend__initWithReferencedSerializedForm_compressor_payloadSet_(selfCopy, v10, serializedData, compressorCopy, v13);

  return v11;
}

- (DTXMessage)initWithSerializedForm:(const char *)form length:(unint64_t)length destructor:(id)destructor compressor:(id)compressor
{
  destructorCopy = destructor;
  v11 = MEMORY[0x277CBEA90];
  compressorCopy = compressor;
  v13 = [v11 alloc];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_247F54E04;
  v24[3] = &unk_278EEF0B8;
  v25 = destructorCopy;
  v14 = destructorCopy;
  v16 = objc_msgSend_initWithBytesNoCopy_length_deallocator_(v13, v15, form, length, v24);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_247F54E1C;
  v22[3] = &unk_278EEF1E0;
  selfCopy = self;
  v18 = objc_msgSend__initWithReferencedSerializedForm_compressor_payloadSet_(selfCopy, v17, v16, compressorCopy, v22);

  serializedData = v18->_serializedData;
  v18->_serializedData = v16;
  v20 = v16;

  return v18;
}

- (void)serializedFormApply:(id)apply
{
  applyCopy = apply;
  if (applyCopy)
  {
    if (self->_messageType == 8)
    {
      objc_msgSend_serializedFormApply_(self->_payloadObject, v4, applyCopy);
    }

    else
    {
      v21 = 0;
      Serialized = DTXPrimitiveDictionaryGetSerialized(self->_auxiliary, &v21);
      v7 = v21;
      v10 = objc_msgSend_length(self->_payloadData, v8, v9);
      messageType = self->_messageType;
      if (messageType == 7)
      {
        messageType = (self->_compressionType << 12) & 0xF0000 | ((self->_compressionType & 0xF) << 8) | 7;
      }

      v19[0] = messageType;
      v19[1] = v21;
      v20 = v10 + v7;
      applyCopy[2](applyCopy, v19, 16);
      v13 = v21;
      if (v21)
      {
        (applyCopy[2])(applyCopy, Serialized);
      }

      payloadData = self->_payloadData;
      if (payloadData)
      {
        v15 = objc_msgSend_bytes(payloadData, v12, v13);
        v18 = objc_msgSend_length(self->_payloadData, v16, v17);
        (applyCopy)[2](applyCopy, v15, v18);
      }
    }
  }
}

- (unint64_t)serializedLength
{
  if (self->_messageType == 8)
  {
    payloadObject = self->_payloadObject;

    return objc_msgSend_serializedLength(payloadObject, a2, v2);
  }

  else
  {
    v9 = 0;
    DTXPrimitiveDictionaryGetSerialized(self->_auxiliary, &v9);
    v6 = v9;
    return v6 + objc_msgSend_length(self->_payloadData, v7, v8) + 16;
  }
}

@end