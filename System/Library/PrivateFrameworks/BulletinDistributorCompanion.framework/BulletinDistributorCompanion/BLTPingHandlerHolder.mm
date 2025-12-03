@interface BLTPingHandlerHolder
- (BLTPingHandlerHolder)initWithPingHandler:(id)handler;
- (void)_performPingWithAckableForwardBlock:(id)block ackableNoParametersBlock:(id)parametersBlock noAckBlock:(id)ackBlock clientAck:(id)ack;
- (void)pingWithBulletin:(id)bulletin ack:(id)ack;
- (void)pingWithBulletin:(id)bulletin notification:(id)notification ack:(id)ack;
- (void)pingWithRecordID:(id)d forSectionID:(id)iD ack:(id)ack;
@end

@implementation BLTPingHandlerHolder

- (BLTPingHandlerHolder)initWithPingHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v9.receiver = self;
    v9.super_class = BLTPingHandlerHolder;
    v5 = [(BLTPingHandlerHolder *)&v9 init];
    if (v5)
    {
      v6 = [handlerCopy copy];
      pingHandler = v5->_pingHandler;
      v5->_pingHandler = v6;
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)_performPingWithAckableForwardBlock:(id)block ackableNoParametersBlock:(id)parametersBlock noAckBlock:(id)ackBlock clientAck:(id)ack
{
  blockCopy = block;
  parametersBlockCopy = parametersBlock;
  ackBlockCopy = ackBlock;
  ackCopy = ack;
  if (![(BLTPingHandlerHolder *)self canAck])
  {
    v14 = ackBlockCopy;
    if (ackCopy)
    {
      ackCopy[2](ackCopy, 1);
      v14 = ackBlockCopy;
    }

    goto LABEL_7;
  }

  ackType = self->_ackType;
  v14 = blockCopy;
  if (ackType - 2 < 2 || (v14 = parametersBlockCopy, ackType == 1))
  {
LABEL_7:
    v14[2]();
  }
}

- (void)pingWithRecordID:(id)d forSectionID:(id)iD ack:(id)ack
{
  dCopy = d;
  iDCopy = iD;
  ackCopy = ack;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__BLTPingHandlerHolder_pingWithRecordID_forSectionID_ack___block_invoke;
  v21[3] = &unk_278D316F0;
  v21[4] = self;
  v22 = iDCopy;
  v23 = dCopy;
  v24 = ackCopy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__BLTPingHandlerHolder_pingWithRecordID_forSectionID_ack___block_invoke_2;
  v17[3] = &unk_278D316F0;
  v17[4] = self;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__BLTPingHandlerHolder_pingWithRecordID_forSectionID_ack___block_invoke_3;
  v14[3] = &unk_278D316C8;
  v14[4] = self;
  v15 = v18;
  v16 = v19;
  v11 = v19;
  v12 = v18;
  v13 = v24;
  [(BLTPingHandlerHolder *)self _performPingWithAckableForwardBlock:v21 ackableNoParametersBlock:v17 noAckBlock:v14 clientAck:v13];
}

void __58__BLTPingHandlerHolder_pingWithRecordID_forSectionID_ack___block_invoke(void *a1)
{
  v2 = MEMORY[0x245D067A0](*(a1[4] + 8));
  v3 = v2;
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  if (v6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__BLTPingHandlerHolder_pingWithRecordID_forSectionID_ack___block_invoke_2;
    v7[3] = &unk_278D31CC8;
    v8 = v6;
    (v3)[2](v3, v4, v5, v7);
  }

  else
  {
    (*(v2 + 16))(v2, a1[5], a1[6], 0);
  }
}

uint64_t __58__BLTPingHandlerHolder_pingWithRecordID_forSectionID_ack___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    return (*(*(a1 + 32) + 16))();
  }

  if (a2)
  {
    v6 = blt_general_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__BLTPingHandlerHolder_pingWithRecordID_forSectionID_ack___block_invoke_2_cold_1(v6);
    }

    return (*(*(a1 + 32) + 16))();
  }

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __58__BLTPingHandlerHolder_pingWithRecordID_forSectionID_ack___block_invoke_2(void *a1)
{
  v2 = MEMORY[0x245D067A0](*(a1[4] + 8));
  v3 = v2;
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  if (v6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__BLTPingHandlerHolder_pingWithRecordID_forSectionID_ack___block_invoke_2_3;
    v7[3] = &unk_278D314F0;
    v8 = v6;
    (v3)[2](v3, v4, v5, v7);
  }

  else
  {
    (*(v2 + 16))(v2, a1[5], a1[6], 0);
  }
}

void __58__BLTPingHandlerHolder_pingWithRecordID_forSectionID_ack___block_invoke_3(void *a1)
{
  v2 = MEMORY[0x245D067A0](*(a1[4] + 8));
  (*(v2 + 2))(v2, a1[5], a1[6]);
}

- (void)pingWithBulletin:(id)bulletin ack:(id)ack
{
  bulletinCopy = bulletin;
  ackCopy = ack;
  v8 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__BLTPingHandlerHolder_pingWithBulletin_ack___block_invoke;
  block[3] = &unk_278D316A0;
  block[4] = self;
  v12 = bulletinCopy;
  v13 = ackCopy;
  v9 = ackCopy;
  v10 = bulletinCopy;
  dispatch_async(v8, block);
}

void __45__BLTPingHandlerHolder_pingWithBulletin_ack___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[17] == 1)
  {
    v3 = [MEMORY[0x277CE1F78] notificationForBulletin:a1[5]];
    v2 = a1[4];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 pingWithBulletin:a1[5] notification:v3 ack:a1[6]];
}

- (void)pingWithBulletin:(id)bulletin notification:(id)notification ack:(id)ack
{
  bulletinCopy = bulletin;
  notificationCopy = notification;
  ackCopy = ack;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__BLTPingHandlerHolder_pingWithBulletin_notification_ack___block_invoke;
  v21[3] = &unk_278D31CF0;
  v21[4] = self;
  v22 = notificationCopy;
  v24 = ackCopy;
  v23 = bulletinCopy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__BLTPingHandlerHolder_pingWithBulletin_notification_ack___block_invoke_4;
  v17[3] = &unk_278D31CF0;
  v17[4] = self;
  v18 = v22;
  v20 = v24;
  v19 = v23;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__BLTPingHandlerHolder_pingWithBulletin_notification_ack___block_invoke_4;
  v14[3] = &unk_278D316C8;
  v14[4] = self;
  v15 = v18;
  v16 = v19;
  v11 = v19;
  v12 = v18;
  v13 = v24;
  [(BLTPingHandlerHolder *)self _performPingWithAckableForwardBlock:v21 ackableNoParametersBlock:v17 noAckBlock:v14 clientAck:v13];
}

void __58__BLTPingHandlerHolder_pingWithBulletin_notification_ack___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 17);
  v4 = MEMORY[0x245D067A0](*(v2 + 8));
  v5 = a1[7];
  v7 = v4;
  if (v3 == 1)
  {
    (*(v4 + 16))(v4, a1[5], v5);
  }

  else
  {
    v6 = a1[6];
    if (v5)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __58__BLTPingHandlerHolder_pingWithBulletin_notification_ack___block_invoke_2;
      v8[3] = &unk_278D31CC8;
      v9 = v5;
      (*(v7 + 2))(v7, v6, v8);
    }

    else
    {
      (*(v4 + 16))(v4, v6);
    }
  }
}

uint64_t __58__BLTPingHandlerHolder_pingWithBulletin_notification_ack___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    return (*(*(a1 + 32) + 16))();
  }

  if (a2)
  {
    v6 = blt_general_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__BLTPingHandlerHolder_pingWithRecordID_forSectionID_ack___block_invoke_2_cold_1(v6);
    }

    return (*(*(a1 + 32) + 16))();
  }

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __58__BLTPingHandlerHolder_pingWithBulletin_notification_ack___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 17);
  v4 = MEMORY[0x245D067A0](*(v2 + 8));
  v5 = v4;
  v6 = a1[7];
  if (v3 != 1)
  {
    v7 = a1[6];
    if (v6)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __58__BLTPingHandlerHolder_pingWithBulletin_notification_ack___block_invoke_3;
      v9[3] = &unk_278D314F0;
      v10 = v6;
      (v5)[2](v5, v7, v9);
      v8 = v10;
      goto LABEL_6;
    }

LABEL_7:
    (*(v4 + 16))(v4, v7, 0);
    goto LABEL_8;
  }

  v7 = a1[5];
  if (!v6)
  {
    goto LABEL_7;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__BLTPingHandlerHolder_pingWithBulletin_notification_ack___block_invoke_2_5;
  v11[3] = &unk_278D314F0;
  v12 = v6;
  (v5)[2](v5, v7, v11);
  v8 = v12;
LABEL_6:

LABEL_8:
}

void __58__BLTPingHandlerHolder_pingWithBulletin_notification_ack___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 17);
  v4 = MEMORY[0x245D067A0](*(v2 + 8));
  v6 = v4;
  v5 = 48;
  if (v3)
  {
    v5 = 40;
  }

  (*(v4 + 16))(v4, *(a1 + v5));
}

@end