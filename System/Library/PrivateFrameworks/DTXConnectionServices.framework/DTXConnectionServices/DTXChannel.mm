@interface DTXChannel
- ($2AC1CA6B41BA5ED35C064565198F84D5)_callbackSnapshot;
- (DTXChannel)initWithConnection:(id)connection channelIdentifier:(unsigned int)identifier label:(id)label;
- (NSString)description;
- (void)_scheduleBlock:(id)block;
- (void)_scheduleMessage:(id)message tracker:(id)tracker withHandler:(id)handler;
- (void)_setDispatchTarget:(id)target queue:(id)queue;
- (void)_setDispatchValidator:(id)validator;
- (void)cancel;
- (void)registerDisconnectHandler:(id)handler;
- (void)sendControlSync:(id)sync replyHandler:(id)handler;
- (void)sendMessageSync:(id)sync replyHandler:(id)handler;
- (void)setMessageHandler:(id)handler;
@end

@implementation DTXChannel

- (DTXChannel)initWithConnection:(id)connection channelIdentifier:(unsigned int)identifier label:(id)label
{
  connectionCopy = connection;
  labelCopy = label;
  if (!connectionCopy)
  {
    sub_247F5A178();
  }

  v30.receiver = self;
  v30.super_class = DTXChannel;
  v11 = [(DTXChannel *)&v30 init];
  v12 = v11;
  if (v11)
  {
    v11->_channelCode = identifier;
    objc_storeStrong(&v11->_label, label);
    if (v12->_channelCode)
    {
      objc_storeStrong(&v12->_strongConnection, connection);
    }

    v12->_connection = connectionCopy;
    v15 = MEMORY[0x277CCACA8];
    v16 = objc_msgSend_atomicConnectionNumber(connectionCopy, v13, v14);
    LODWORD(v18) = v12->_channelCode;
    v19 = v18 < 0;
    if (v18 >= 0)
    {
      v18 = v18;
    }

    else
    {
      v18 = -v18;
    }

    v20 = "f";
    if (!v19)
    {
      v20 = "";
    }

    v21 = objc_msgSend_stringWithFormat_(v15, v17, @"%s [x%d.c%d%s]", "DTXChannel serializer queue", v16, v18, v20);
    v22 = v21;
    v25 = objc_msgSend_UTF8String(v22, v23, v24);
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create(v25, v26);
    serialQueue = v12->_serialQueue;
    v12->_serialQueue = v27;

    v12->_handlerGuard._os_unfair_lock_opaque = 0;
    v12->_compressionTypeHint = 1;
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  v8 = objc_msgSend_atomicConnectionNumber(self->_connection, v6, v7);
  LODWORD(v10) = self->_channelCode;
  v11 = v10 < 0;
  if (v10 >= 0)
  {
    v10 = v10;
  }

  else
  {
    v10 = -v10;
  }

  v12 = "f";
  if (!v11)
  {
    v12 = "";
  }

  return objc_msgSend_stringWithFormat_(v3, v9, @"<%s %p : x%d.c%d%s> %@", Name, self, v8, v10, v12, self->_label);
}

- (void)_scheduleBlock:(id)block
{
  if (block)
  {
    dispatch_async(self->_serialQueue, block);
  }
}

- (void)_scheduleMessage:(id)message tracker:(id)tracker withHandler:(id)handler
{
  messageCopy = message;
  trackerCopy = tracker;
  handlerCopy = handler;
  if (!messageCopy)
  {
    messageCopy = kDTXInterruptionMessage;
  }

  v13 = objc_msgSend_errorStatus(messageCopy, v10, v11);
  if (handlerCopy || v13 != 2)
  {
    if (objc_msgSend_isDispatch(messageCopy, v14, v15))
    {
      v17 = self->_connection;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_247F4BF9C;
      v24[3] = &unk_278EEEDB8;
      v24[4] = self;
      v25 = messageCopy;
      v26 = v17;
      v27 = trackerCopy;
      v18 = v17;
      v19 = MEMORY[0x24C1C0D80](v24);

      if (!v19)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_247F4C2FC;
      v20[3] = &unk_278EEEDE0;
      v20[4] = self;
      v23 = handlerCopy;
      v21 = messageCopy;
      v22 = trackerCopy;
      v19 = MEMORY[0x24C1C0D80](v20);

      if (!v19)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    dispatch_async(self->_serialQueue, v19);
    goto LABEL_11;
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F4BF4C;
  block[3] = &unk_278EEE708;
  block[4] = self;
  dispatch_async(serialQueue, block);
LABEL_12:
}

- ($2AC1CA6B41BA5ED35C064565198F84D5)_callbackSnapshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x5012000000;
  v9 = sub_247F4C534;
  v10 = sub_247F4C568;
  v11 = 1024;
  memset(v12, 0, sizeof(v12));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F4C5E8;
  v5[3] = &unk_278EEEE08;
  v5[4] = &v6;
  sub_247F4C570(self, v5);
  sub_247F4C254(retstr, (v7 + 6));
  _Block_object_dispose(&v6, 8);
  sub_247F4C2B0(v12);
  return result;
}

- (void)setMessageHandler:(id)handler
{
  handlerCopy = handler;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_247F493B4;
  v14 = sub_247F493E0;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247F4C77C;
  v7[3] = &unk_278EEEE30;
  v5 = handlerCopy;
  v7[4] = self;
  v8 = v5;
  v9 = &v10;
  sub_247F4C570(self, v7);
  v6 = v11[5];
  v11[5] = 0;

  _Block_object_dispose(&v10, 8);
}

- (void)_setDispatchTarget:(id)target queue:(id)queue
{
  targetCopy = target;
  queueCopy = queue;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_247F468E0;
  v19 = sub_247F468F0;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_247F4C9B4;
  v11[3] = &unk_278EEEE58;
  v11[4] = self;
  v8 = targetCopy;
  v12 = v8;
  v14 = &v15;
  v9 = queueCopy;
  v13 = v9;
  sub_247F4C570(self, v11);
  v10 = v16[5];
  v16[5] = 0;

  _Block_object_dispose(&v15, 8);
}

- (void)_setDispatchValidator:(id)validator
{
  validatorCopy = validator;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247F4CAE4;
  v6[3] = &unk_278EEEE80;
  v7 = validatorCopy;
  v5 = validatorCopy;
  sub_247F4C570(self, v6);
}

- (void)registerDisconnectHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    connection = self->_connection;
    v7 = qword_2814DB5F8;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_247F4CBE0;
    v9[3] = &unk_278EEEEA8;
    v10 = handlerCopy;
    objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(connection, v8, v7, self, 2, 0, v9);
  }
}

- (void)cancel
{
  objc_msgSend__unregisterChannel_(self->_connection, a2, self);

  objc_msgSend_setIsCanceled_(self, v3, 1);
}

- (void)sendControlSync:(id)sync replyHandler:(id)handler
{
  syncCopy = sync;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    sub_247F4CCE8(self, a2);
  }

  objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self->_connection, v7, syncCopy, self, 2, 1, handlerCopy);
}

- (void)sendMessageSync:(id)sync replyHandler:(id)handler
{
  syncCopy = sync;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    sub_247F4CCE8(self, a2);
  }

  sub_247F4CE00(syncCopy, self->_connection, self, 1, handlerCopy);
}

@end