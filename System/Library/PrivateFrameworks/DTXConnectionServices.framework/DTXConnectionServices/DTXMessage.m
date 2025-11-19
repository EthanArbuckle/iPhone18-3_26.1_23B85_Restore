@interface DTXMessage
+ (BOOL)extractSerializedCompressionInfoFromBuffer:(const char *)a3 length:(unint64_t)a4 compressionType:(int *)a5 uncompressedLength:(unint64_t *)a6 compressedDataOffset:(unint64_t *)a7;
+ (id)message;
+ (id)messageReferencingBuffer:(const void *)a3 length:(unint64_t)a4 destructor:(id)a5;
+ (id)messageWithBuffer:(const void *)a3 length:(unint64_t)a4;
+ (id)messageWithData:(id)a3;
+ (id)messageWithError:(id)a3;
+ (id)messageWithObject:(id)a3;
+ (id)messageWithPrimitive:(void *)a3;
+ (id)messageWithSelector:(SEL)a3 arguments:(id)a4;
+ (id)messageWithSelector:(SEL)a3 objectArguments:(id)a4;
+ (void)initialize;
+ (void)setReportCompressionBlock:(id)a3;
- (BOOL)isBarrier;
- (BOOL)isDispatch;
- (BOOL)shouldInvokeWithTarget:(id)a3;
- (DTXMessage)initWithInvocation:(id)a3;
- (DTXMessage)initWithSelector:(SEL)a3 firstArg:(id)a4 remainingObjectArgs:(char *)a5;
- (DTXMessage)initWithSelector:(SEL)a3 objects:(id)a4;
- (DTXMessage)initWithSerializedForm:(const char *)a3 length:(unint64_t)a4 destructor:(id)a5 compressor:(id)a6;
- (DTXMessage)initWithSerializedForm:(id)a3 compressor:(id)a4;
- (NSData)data;
- (NSError)error;
- (NSSecureCoding)object;
- (NSSecureCoding)payloadObject;
- (const)getBufferWithReturnedLength:(unint64_t *)a3;
- (id)_faultAuxiliaryValueOfType:(Class)a3 forKey:(id)a4;
- (id)_initWithReferencedSerializedForm:(id)a3 compressor:(id)a4 payloadSet:(id)a5;
- (id)_mutableAuxiliaryDictionary;
- (id)dataForMessageKey:(id)a3;
- (id)newReply;
- (id)newReplyReferencingBuffer:(const void *)a3 length:(unint64_t)a4 destructor:(id)a5;
- (id)newReplyWithError:(id)a3;
- (id)newReplyWithMessage:(id)a3;
- (id)newReplyWithObject:(id)a3;
- (id)objectWithAllowedClasses:(id)a3;
- (id)stringForMessageKey:(id)a3;
- (int64_t)integerForMessageKey:(id)a3;
- (unint64_t)serializedLength;
- (void)_makeBarrier;
- (void)_makeImmutable;
- (void)_setPayloadBuffer:(const char *)a3 length:(unint64_t)a4 shouldCopy:(BOOL)a5 destructor:(id)a6;
- (void)_willModifyAuxiliary;
- (void)dealloc;
- (void)invokeWithTarget:(id)a3 replyChannel:(id)a4 validator:(id)a5;
- (void)serializedFormApply:(id)a3;
- (void)setData:(id)a3 forMessageKey:(id)a4;
- (void)setError:(id)a3;
- (void)setErrorStatus:(unsigned int)a3;
- (void)setInteger:(int64_t)a3 forMessageKey:(id)a4;
- (void)setPayloadObject:(id)a3;
- (void)setString:(id)a3 forMessageKey:(id)a4;
@end

@implementation DTXMessage

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

+ (void)setReportCompressionBlock:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F51530;
  v5[3] = &unk_278EEEB88;
  v6 = v3;
  v4 = v3;
  sub_247F51498(v5);
}

+ (id)messageWithObject:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_msgSend_setPayloadObject_(v4, v5, v3);

  return v4;
}

+ (id)messageWithError:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_msgSend_setError_(v4, v5, v3);

  return v4;
}

+ (id)messageWithPrimitive:(void *)a3
{
  v4 = objc_opt_new();
  v9 = 0;
  Serialized = DTXPrimitiveDictionaryGetSerialized(a3, &v9);
  objc_msgSend__setPayloadBuffer_length_shouldCopy_destructor_(v4, v6, Serialized, v9, 1, 0);
  objc_msgSend_setMessageType_(v4, v7, 6);

  return v4;
}

+ (id)messageWithBuffer:(const void *)a3 length:(unint64_t)a4
{
  v6 = objc_opt_new();
  objc_msgSend__setPayloadBuffer_length_shouldCopy_destructor_(v6, v7, a3, a4, 1, 0);

  return v6;
}

+ (id)messageReferencingBuffer:(const void *)a3 length:(unint64_t)a4 destructor:(id)a5
{
  v7 = a5;
  v8 = objc_opt_new();
  objc_msgSend__setPayloadBuffer_length_shouldCopy_destructor_(v8, v9, a3, a4, 0, v7);
  if (v7 && !v8[3])
  {
    v7[2](v7);
  }

  return v8;
}

+ (id)messageWithData:(id)a3
{
  v3 = a3;
  v6 = objc_opt_new();
  if (v6)
  {
    v7 = objc_msgSend_copy(v3, v4, v5);
    v8 = *(v6 + 24);
    *(v6 + 24) = v7;

    *(v6 + 8) = 1;
    v9 = v6;
  }

  return v6;
}

+ (id)messageWithSelector:(SEL)a3 objectArguments:(id)a4
{
  v8 = a4;
  if (!a3)
  {
    sub_247F5A5D0(a2, a1, v7);
  }

  v9 = [a1 alloc];
  v11 = objc_msgSend_initWithSelector_firstArg_remainingObjectArgs_(v9, v10, a3, v8, &v16);
  objc_msgSend__makeImmutable(v11, v12, v13);

  return v11;
}

+ (id)messageWithSelector:(SEL)a3 arguments:(id)a4
{
  v8 = a4;
  if (!a3)
  {
    sub_247F5A64C(a2, a1, v7);
  }

  v9 = [a1 alloc];
  v11 = objc_msgSend_initWithSelector_objects_(v9, v10, a3, v8);
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

- (id)newReplyWithObject:(id)a3
{
  v4 = objc_msgSend_messageWithObject_(DTXMessage, a2, a3);
  v7 = objc_msgSend_channelCode(self, v5, v6);
  objc_msgSend_setChannelCode_(v4, v8, v7);
  v11 = objc_msgSend_identifier(self, v9, v10);
  objc_msgSend_setIdentifier_(v4, v12, v11);
  v15 = objc_msgSend_conversationIndex(self, v13, v14);
  objc_msgSend_setConversationIndex_(v4, v16, (v15 + 1));
  return v4;
}

- (id)newReplyWithError:(id)a3
{
  v4 = objc_msgSend_messageWithError_(DTXMessage, a2, a3);
  v7 = objc_msgSend_channelCode(self, v5, v6);
  objc_msgSend_setChannelCode_(v4, v8, v7);
  v11 = objc_msgSend_identifier(self, v9, v10);
  objc_msgSend_setIdentifier_(v4, v12, v11);
  v15 = objc_msgSend_conversationIndex(self, v13, v14);
  objc_msgSend_setConversationIndex_(v4, v16, (v15 + 1));
  return v4;
}

- (id)newReplyWithMessage:(id)a3
{
  v5 = a3;
  v8 = objc_msgSend_errorStatus(v5, v6, v7);
  if (v8 == 3)
  {
    v11 = objc_msgSend_errorStatus(v5, v9, v10);
    v18 = @"peer unable to respond";
  }

  else
  {
    if (v8 != 2)
    {
      v21 = objc_msgSend_message(DTXMessage, v9, v10);
      objc_storeStrong((v21 + 48), a3);
      *(v21 + 32) = objc_msgSend_cost(v5, v24, v25);
      objc_msgSend_setMessageType_(v21, v26, 8);
      v29 = objc_msgSend_errorStatus(v5, v27, v28);
      objc_msgSend_setErrorStatus_(v21, v30, v29);
      goto LABEL_7;
    }

    v11 = objc_msgSend_errorStatus(v5, v9, v10);
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

- (id)newReplyReferencingBuffer:(const void *)a3 length:(unint64_t)a4 destructor:(id)a5
{
  v6 = objc_msgSend_messageReferencingBuffer_length_destructor_(DTXMessage, a2, a3, a4, a5);
  v9 = objc_msgSend_channelCode(self, v7, v8);
  objc_msgSend_setChannelCode_(v6, v10, v9);
  v13 = objc_msgSend_identifier(self, v11, v12);
  objc_msgSend_setIdentifier_(v6, v14, v13);
  v17 = objc_msgSend_conversationIndex(self, v15, v16);
  objc_msgSend_setConversationIndex_(v6, v18, (v17 + 1));
  return v6;
}

- (DTXMessage)initWithSelector:(SEL)a3 firstArg:(id)a4 remainingObjectArgs:(char *)a5
{
  v8 = a4;
  v20.receiver = self;
  v20.super_class = DTXMessage;
  v21 = a5;
  v9 = [(DTXMessage *)&v20 init];
  if (v9)
  {
    v10 = NSStringFromSelector(a3);
    objc_msgSend_setPayloadObject_(v9, v11, v10);

    v9->_messageType = 2;
    if (v8)
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
        sub_247F522C0(v8, v18);
        v15 = v21;
        v21 += 8;
        v16 = *v15;

        v8 = v16;
      }

      while (v16);
    }
  }

  return v9;
}

- (DTXMessage)initWithSelector:(SEL)a3 objects:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v30.receiver = self;
  v30.super_class = DTXMessage;
  v7 = [(DTXMessage *)&v30 init];
  if (v7)
  {
    v8 = NSStringFromSelector(a3);
    objc_msgSend_setPayloadObject_(v7, v9, v8);

    v7->_messageType = 2;
    if (objc_msgSend_count(v6, v10, v11))
    {
      objc_msgSend__willModifyAuxiliary(v7, v12, v13);
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v14 = v6;
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

- (DTXMessage)initWithInvocation:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = DTXMessage;
  v7 = [(DTXMessage *)&v42 init];
  if (v7)
  {
    v8 = objc_msgSend_selector(v4, v5, v6);
    v9 = NSStringFromSelector(v8);
    objc_msgSend_setPayloadObject_(v7, v10, v9);

    v7->_messageType = 2;
    v13 = objc_msgSend_methodSignature(v4, v11, v12);
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
          objc_msgSend_getArgument_atIndex_(v4, v25, &v41, i);
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
          v35 = objc_msgSend_selector(v4, v25, v26);
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

- (void)_setPayloadBuffer:(const char *)a3 length:(unint64_t)a4 shouldCopy:(BOOL)a5 destructor:(id)a6
{
  v6 = a5;
  v11 = a6;
  if (a3 && a4)
  {
    if (v6)
    {
      v12 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v10, a3, a4);
    }

    else
    {
      if (v11)
      {
        v13 = objc_alloc(MEMORY[0x277CBEA90]);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = sub_247F529A4;
        v18[3] = &unk_278EEF0B8;
        v19 = v11;
        v15 = objc_msgSend_initWithBytesNoCopy_length_deallocator_(v13, v14, a3, a4, v18);
        payloadData = self->_payloadData;
        self->_payloadData = v15;

        v17 = v19;
LABEL_9:

        goto LABEL_10;
      }

      v12 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v10, a3, a4, 0);
    }

    v17 = self->_payloadData;
    self->_payloadData = v12;
    goto LABEL_9;
  }

LABEL_10:
  self->_messageType = 1;
}

- (void)setPayloadObject:(id)a3
{
  v6 = a3;
  v7 = atomic_load(&self->_immutable);
  if (v7)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    Name = sel_getName(a2);
    objc_msgSend_raise_format_(v8, v12, @"DTXMessageException", @"[%@ %s] Unable to modify immutable message: %@", v10, Name, self);
  }

  if (self->_payloadObject != v6)
  {
    objc_storeStrong(&self->_payloadObject, a3);
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

- (id)objectWithAllowedClasses:(id)a3
{
  v4 = a3;
  sub_247F52B5C(self, v4);
  v5 = self->_payloadObject;
  v6 = v4;
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

- (const)getBufferWithReturnedLength:(unint64_t *)a3
{
  if (self->_messageType != 1)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = objc_msgSend_length(self->_payloadData, a2, a3);
  }

  payloadData = self->_payloadData;

  return objc_msgSend_bytes(payloadData, a2, a3);
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

- (void)setErrorStatus:(unsigned int)a3
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

  self->_status = a3;
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

- (void)setString:(id)a3 forMessageKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = objc_msgSend__mutableAuxiliaryDictionary(self, v7, v8);
        objc_msgSend_setObject_forKeyedSubscript_(v9, v10, v11, v6);
      }
    }
  }
}

- (void)setInteger:(int64_t)a3 forMessageKey:(id)a4
{
  if (a4)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = a4;
    v13 = objc_msgSend_numberWithLongLong_(v6, v8, a3);
    v11 = objc_msgSend__mutableAuxiliaryDictionary(self, v9, v10);
    objc_msgSend_setObject_forKeyedSubscript_(v11, v12, v13, v7);
  }
}

- (void)setData:(id)a3 forMessageKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = objc_msgSend__mutableAuxiliaryDictionary(self, v7, v8);
        objc_msgSend_setObject_forKeyedSubscript_(v9, v10, v11, v6);
      }
    }
  }
}

- (id)_faultAuxiliaryValueOfType:(Class)a3 forKey:(id)a4
{
  v7 = a4;
  if (v7)
  {
    if (self->_messageType == 8)
    {
      v8 = objc_msgSend__faultAuxiliaryValueOfType_forKey_(self->_payloadObject, v6, a3, v7);
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

      v12 = objc_msgSend_objectForKeyedSubscript_(auxiliaryPromoted, v6, v7);
      if (a3 && (objc_opt_isKindOfClass() & 1) == 0)
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

- (int64_t)integerForMessageKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend__faultAuxiliaryValueOfType_forKey_(self, v6, v5, v4);

  v10 = objc_msgSend_longLongValue(v7, v8, v9);
  return v10;
}

- (id)stringForMessageKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend__faultAuxiliaryValueOfType_forKey_(self, v6, v5, v4);

  return v7;
}

- (id)dataForMessageKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend__faultAuxiliaryValueOfType_forKey_(self, v6, v5, v4);

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

- (void)setError:(id)a3
{
  objc_msgSend_setPayloadObject_(self, a2, a3);
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

- (BOOL)shouldInvokeWithTarget:(id)a3
{
  v4 = a3;
  isDispatch = objc_msgSend_isDispatch(self, v5, v6);
  v10 = 0;
  if (v4 && isDispatch)
  {
    v11 = objc_msgSend_payloadObject(self, v8, v9);
    v12 = NSSelectorFromString(v11);

    v14 = objc_msgSend_methodSignatureForSelector_(v4, v13, v12);
    if (v14)
    {
      v10 = sub_247F53D64(v12, v4);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)invokeWithTarget:(id)a3 replyChannel:(id)a4 validator:(id)a5
{
  v85 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!objc_msgSend_isDispatch(self, v11, v12))
  {
    goto LABEL_29;
  }

  v15 = objc_msgSend_payloadObject(self, v13, v14);
  v16 = NSSelectorFromString(v15);

  v20 = objc_msgSend_methodSignatureForSelector_(v8, v17, v16);
  if (v20)
  {
    if (v10 || (sub_247F53D64(v16, v8) & 1) != 0)
    {
      goto LABEL_8;
    }

    v22 = MEMORY[0x277CBEAD8];
    v23 = objc_msgSend_payloadObject(self, v18, v21);
    objc_msgSend_raise_format_(v22, v24, @"DTXMessageInvocationException", @"Unable to invoke [%@ %@] - the selector is not allowed", v8, v23);
  }

  else
  {
    v25 = MEMORY[0x277CBEAD8];
    v23 = objc_msgSend_payloadObject(self, v18, v19);
    objc_msgSend_raise_format_(v25, v26, @"DTXMessageInvocationException", @"Unable to invoke [%@ %@] - it does not respond to the selector", v8, v23);
  }

LABEL_8:
  v27 = objc_msgSend_invocationWithMethodSignature_(MEMORY[0x277CBEAE8], v18, v20);
  objc_msgSend_setSelector_(v27, v28, v16);
  objc_msgSend_setTarget_(v27, v29, v8);
  v34 = objc_msgSend_defaultAllowedSecureCodingClasses(DTXMessage, v30, v31);
  if (v10)
  {
    v35 = v10[2](v10, v27);

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
    objc_msgSend_raise_format_(v42, v45, @"DTXMessageInvocationException", @"Unable to invoke [%@ %@] - too few arguments (%lu provided, %lu expected)", v8, v43, v44, v78[3]);
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
          objc_msgSend_raise_format_(v62, v54, @"DTXMessageInvocationException", @"Unable to invoke [%@ %@] - 'id' return value does not conform to NSSecureCoding", v8, v53);
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
      v64 = v9;
      v65 = self;
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
      objc_msgSend_sendControlAsync_replyHandler_(v9, v60, v59, 0);
    }
  }

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);

LABEL_29:
  v61 = *MEMORY[0x277D85DE8];
}

+ (BOOL)extractSerializedCompressionInfoFromBuffer:(const char *)a3 length:(unint64_t)a4 compressionType:(int *)a5 uncompressedLength:(unint64_t *)a6 compressedDataOffset:(unint64_t *)a7
{
  result = 0;
  if (a3 && a4 >= 0x14 && a5 && a6 && a7)
  {
    if (*a3 == 7 && (v8 = *(a3 + 1) - *(a3 + 1), *a5 = (*a3 >> 8) & 0xF, v8 >= 4))
    {
      v9 = *(a3 + 1);
      *a6 = *&a3[v9 + 16];
      *a7 = v9 + 20;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)_initWithReferencedSerializedForm:(id)a3 compressor:(id)a4 payloadSet:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28.receiver = self;
  v28.super_class = DTXMessage;
  v11 = [(DTXMessage *)&v28 init];
  if (v11)
  {
    v12 = v8;
    v15 = objc_msgSend_bytes(v12, v13, v14);
    v11->_deserialized = 1;
    v11->_cost = objc_msgSend_length(v8, v16, v17);
    v18 = *(v15 + 1);
    v19 = *(v15 + 1) - v18;
    v10[2](v10, &v15[v18 + 16], v19);
    v11->_auxiliary = DTXPrimitiveDictionaryReferencingSerialized(v15 + 16, *(v15 + 1));
    v22 = *v15;
    v11->_messageType = v22;
    v11->_status = v22 == 4;
    if (v22 == 7)
    {
      v23 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v20, &v15[*(v15 + 1) + 16], v19, 0);
      v25 = objc_msgSend__decompressedData_compressor_compressionType_(v11, v24, v23, v9, (*v15 >> 12) & 0xF0 | (*v15 >> 8) & 0xFu);
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

- (DTXMessage)initWithSerializedForm:(id)a3 compressor:(id)a4
{
  objc_storeStrong(&self->_serializedData, a3);
  v7 = a3;
  v8 = a4;
  serializedData = self->_serializedData;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247F54C80;
  v13[3] = &unk_278EEF1E0;
  v14 = self;
  v11 = objc_msgSend__initWithReferencedSerializedForm_compressor_payloadSet_(v14, v10, serializedData, v8, v13);

  return v11;
}

- (DTXMessage)initWithSerializedForm:(const char *)a3 length:(unint64_t)a4 destructor:(id)a5 compressor:(id)a6
{
  v10 = a5;
  v11 = MEMORY[0x277CBEA90];
  v12 = a6;
  v13 = [v11 alloc];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_247F54E04;
  v24[3] = &unk_278EEF0B8;
  v25 = v10;
  v14 = v10;
  v16 = objc_msgSend_initWithBytesNoCopy_length_deallocator_(v13, v15, a3, a4, v24);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_247F54E1C;
  v22[3] = &unk_278EEF1E0;
  v23 = self;
  v18 = objc_msgSend__initWithReferencedSerializedForm_compressor_payloadSet_(v23, v17, v16, v12, v22);

  serializedData = v18->_serializedData;
  v18->_serializedData = v16;
  v20 = v16;

  return v18;
}

- (void)serializedFormApply:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (self->_messageType == 8)
    {
      objc_msgSend_serializedFormApply_(self->_payloadObject, v4, v5);
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
      v5[2](v5, v19, 16);
      v13 = v21;
      if (v21)
      {
        (v5[2])(v5, Serialized);
      }

      payloadData = self->_payloadData;
      if (payloadData)
      {
        v15 = objc_msgSend_bytes(payloadData, v12, v13);
        v18 = objc_msgSend_length(self->_payloadData, v16, v17);
        (v5)[2](v5, v15, v18);
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