@interface IDSIncomingMessageBroadcast
- (IDSIncomingMessageBroadcast)init;
- (IDSIncomingMessageBroadcast)initWithBroadcastBlock:(id)block needsClientAck:(BOOL)ack messageUUID:(id)d priority:(int64_t)priority senderID:(id)iD sequenceNumber:(unsigned int)number;
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

- (IDSIncomingMessageBroadcast)initWithBroadcastBlock:(id)block needsClientAck:(BOOL)ack messageUUID:(id)d priority:(int64_t)priority senderID:(id)iD sequenceNumber:(unsigned int)number
{
  v8 = *&number;
  ackCopy = ack;
  blockCopy = block;
  dCopy = d;
  iDCopy = iD;
  v20.receiver = self;
  v20.super_class = IDSIncomingMessageBroadcast;
  v17 = [(IDSIncomingMessageBroadcast *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(IDSIncomingMessageBroadcast *)v17 setBroadcastID:atomic_fetch_add_explicit(&qword_100CBD1A0, 1uLL, memory_order_relaxed) + 1];
    [(IDSIncomingMessageBroadcast *)v18 setBroadcastNeedsClientAck:ackCopy];
    [(IDSIncomingMessageBroadcast *)v18 setBroadcastBlock:blockCopy];
    [(IDSIncomingMessageBroadcast *)v18 setMessageUUID:dCopy];
    [(IDSIncomingMessageBroadcast *)v18 setMessagePriority:priority];
    [(IDSIncomingMessageBroadcast *)v18 setMessageSenderID:iDCopy];
    [(IDSIncomingMessageBroadcast *)v18 setMessageSequenceNumber:v8];
  }

  return v18;
}

@end