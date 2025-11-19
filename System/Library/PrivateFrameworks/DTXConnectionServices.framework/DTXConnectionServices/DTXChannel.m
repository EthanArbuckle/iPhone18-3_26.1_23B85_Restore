@interface DTXChannel
- ($2AC1CA6B41BA5ED35C064565198F84D5)_callbackSnapshot;
- (DTXChannel)initWithConnection:(id)a3 channelIdentifier:(unsigned int)a4 label:(id)a5;
- (NSString)description;
- (void)_scheduleBlock:(id)a3;
- (void)_scheduleMessage:(id)a3 tracker:(id)a4 withHandler:(id)a5;
- (void)_setDispatchTarget:(id)a3 queue:(id)a4;
- (void)_setDispatchValidator:(id)a3;
- (void)cancel;
- (void)registerDisconnectHandler:(id)a3;
- (void)sendControlSync:(id)a3 replyHandler:(id)a4;
- (void)sendMessageSync:(id)a3 replyHandler:(id)a4;
- (void)setMessageHandler:(id)a3;
@end

@implementation DTXChannel

- (DTXChannel)initWithConnection:(id)a3 channelIdentifier:(unsigned int)a4 label:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    sub_247F5A178();
  }

  v30.receiver = self;
  v30.super_class = DTXChannel;
  v11 = [(DTXChannel *)&v30 init];
  v12 = v11;
  if (v11)
  {
    v11->_channelCode = a4;
    objc_storeStrong(&v11->_label, a5);
    if (v12->_channelCode)
    {
      objc_storeStrong(&v12->_strongConnection, a3);
    }

    v12->_connection = v9;
    v15 = MEMORY[0x277CCACA8];
    v16 = objc_msgSend_atomicConnectionNumber(v9, v13, v14);
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

- (void)_scheduleBlock:(id)a3
{
  if (a3)
  {
    dispatch_async(self->_serialQueue, a3);
  }
}

- (void)_scheduleMessage:(id)a3 tracker:(id)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12 = a5;
  if (!v8)
  {
    v8 = kDTXInterruptionMessage;
  }

  v13 = objc_msgSend_errorStatus(v8, v10, v11);
  if (v12 || v13 != 2)
  {
    if (objc_msgSend_isDispatch(v8, v14, v15))
    {
      v17 = self->_connection;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_247F4BF9C;
      v24[3] = &unk_278EEEDB8;
      v24[4] = self;
      v25 = v8;
      v26 = v17;
      v27 = v9;
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
      v23 = v12;
      v21 = v8;
      v22 = v9;
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

- (void)setMessageHandler:(id)a3
{
  v4 = a3;
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
  v5 = v4;
  v7[4] = self;
  v8 = v5;
  v9 = &v10;
  sub_247F4C570(self, v7);
  v6 = v11[5];
  v11[5] = 0;

  _Block_object_dispose(&v10, 8);
}

- (void)_setDispatchTarget:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v12 = v8;
  v14 = &v15;
  v9 = v7;
  v13 = v9;
  sub_247F4C570(self, v11);
  v10 = v16[5];
  v16[5] = 0;

  _Block_object_dispose(&v15, 8);
}

- (void)_setDispatchValidator:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247F4CAE4;
  v6[3] = &unk_278EEEE80;
  v7 = v4;
  v5 = v4;
  sub_247F4C570(self, v6);
}

- (void)registerDisconnectHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    connection = self->_connection;
    v7 = qword_2814DB5F8;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_247F4CBE0;
    v9[3] = &unk_278EEEEA8;
    v10 = v4;
    objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(connection, v8, v7, self, 2, 0, v9);
  }
}

- (void)cancel
{
  objc_msgSend__unregisterChannel_(self->_connection, a2, self);

  objc_msgSend_setIsCanceled_(self, v3, 1);
}

- (void)sendControlSync:(id)a3 replyHandler:(id)a4
{
  v9 = a3;
  v8 = a4;
  if (!v8)
  {
    sub_247F4CCE8(self, a2);
  }

  objc_msgSend_sendMessage_fromChannel_sendMode_syncWithReply_replyHandler_(self->_connection, v7, v9, self, 2, 1, v8);
}

- (void)sendMessageSync:(id)a3 replyHandler:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (!v7)
  {
    sub_247F4CCE8(self, a2);
  }

  sub_247F4CE00(v8, self->_connection, self, 1, v7);
}

@end