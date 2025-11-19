@interface IDSIncomingMessageBroadcast
- (IDSIncomingMessageBroadcast)init;
- (IDSIncomingMessageBroadcast)initWithBroadcastBlock:(id)a3 needsClientAck:(BOOL)a4 messageUUID:(id)a5 priority:(int64_t)a6 senderID:(id)a7 sequenceNumber:(unsigned int)a8;
@end

@implementation IDSIncomingMessageBroadcast

- (IDSIncomingMessageBroadcast)init
{
  v5.receiver = self;
  v5.super_class = IDSIncomingMessageBroadcast;
  v2 = [(IDSIncomingMessageBroadcast *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSIncomingMessageBroadcast *)v2 setBroadcastID:atomic_fetch_add_explicit(&qword_100CBD1A0, 1uLL, memory_order_relaxed) + 1];
  }

  return v3;
}

- (IDSIncomingMessageBroadcast)initWithBroadcastBlock:(id)a3 needsClientAck:(BOOL)a4 messageUUID:(id)a5 priority:(int64_t)a6 senderID:(id)a7 sequenceNumber:(unsigned int)a8
{
  v8 = *&a8;
  v12 = a4;
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = IDSIncomingMessageBroadcast;
  v17 = [(IDSIncomingMessageBroadcast *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(IDSIncomingMessageBroadcast *)v17 setBroadcastID:atomic_fetch_add_explicit(&qword_100CBD1A0, 1uLL, memory_order_relaxed) + 1];
    [(IDSIncomingMessageBroadcast *)v18 setBroadcastNeedsClientAck:v12];
    [(IDSIncomingMessageBroadcast *)v18 setBroadcastBlock:v14];
    [(IDSIncomingMessageBroadcast *)v18 setMessageUUID:v15];
    [(IDSIncomingMessageBroadcast *)v18 setMessagePriority:a6];
    [(IDSIncomingMessageBroadcast *)v18 setMessageSenderID:v16];
    [(IDSIncomingMessageBroadcast *)v18 setMessageSequenceNumber:v8];
  }

  return v18;
}

@end