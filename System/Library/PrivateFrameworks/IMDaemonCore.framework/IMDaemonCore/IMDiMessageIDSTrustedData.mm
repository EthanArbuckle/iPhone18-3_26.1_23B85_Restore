@interface IMDiMessageIDSTrustedData
- (IMDiMessageIDSTrustedData)initWithBatchedMessage:(id)message batchContext:(id)context;
- (IMDiMessageIDSTrustedData)initWithTopLevelMessage:(id)message fromPushID:(id)d messageContext:(id)context;
- (id)description;
@end

@implementation IMDiMessageIDSTrustedData

- (IMDiMessageIDSTrustedData)initWithTopLevelMessage:(id)message fromPushID:(id)d messageContext:(id)context
{
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v29.receiver = self;
  v29.super_class = IMDiMessageIDSTrustedData;
  v11 = [(IMDiMessageIDSTrustedData *)&v29 init];
  if (v11)
  {
    v12 = [messageCopy objectForKey:@"IDSIncomingMessagePushPayload"];
    v13 = [v12 objectForKey:*MEMORY[0x277D18848]];
    if (!v13)
    {
      v13 = [v12 objectForKey:@"c"];
    }

    v14 = [dCopy copy];
    fromPushID = v11->_fromPushID;
    v11->_fromPushID = v14;

    v16 = [v12 objectForKey:@"t"];
    v17 = [v16 copy];
    fromToken = v11->_fromToken;
    v11->_fromToken = v17;

    v19 = [v12 objectForKey:@"sP"];
    v20 = [v19 copy];
    fromIdentifier = v11->_fromIdentifier;
    v11->_fromIdentifier = v20;

    v22 = [v12 objectForKey:@"tP"];
    v23 = [v22 copy];
    toIdentifier = v11->_toIdentifier;
    v11->_toIdentifier = v23;

    v11->_command = [v13 integerValue];
    v11->_fromTrustedSender = [contextCopy isFromTrustedSender];
    v11->_fromSnapTrustedSender = [v12 BOOLValueForKey:@"stu" withDefault:1];
    senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];
    senderCorrelationIdentifier = v11->_senderCorrelationIdentifier;
    v11->_senderCorrelationIdentifier = senderCorrelationIdentifier;

    batchContext = v11->_batchContext;
    v11->_batchContext = 0;
  }

  return v11;
}

- (IMDiMessageIDSTrustedData)initWithBatchedMessage:(id)message batchContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  v31.receiver = self;
  v31.super_class = IMDiMessageIDSTrustedData;
  v8 = [(IMDiMessageIDSTrustedData *)&v31 init];
  if (v8)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v29 = 0;
      goto LABEL_6;
    }

    messageContext = [messageCopy messageContext];
    originalCommand = [messageContext originalCommand];

    messageContext2 = [messageCopy messageContext];
    fromID = [messageContext2 fromID];
    fromPushID = v8->_fromPushID;
    v8->_fromPushID = fromID;

    messageContext3 = [messageCopy messageContext];
    senderPushToken = [messageContext3 senderPushToken];
    fromToken = v8->_fromToken;
    v8->_fromToken = senderPushToken;

    messageContext4 = [messageCopy messageContext];
    fromID2 = [messageContext4 fromID];
    fromIdentifier = v8->_fromIdentifier;
    v8->_fromIdentifier = fromID2;

    messageContext5 = [messageCopy messageContext];
    toID = [messageContext5 toID];
    toIdentifier = v8->_toIdentifier;
    v8->_toIdentifier = toID;

    v8->_command = [originalCommand integerValue];
    messageContext6 = [messageCopy messageContext];
    v8->_fromTrustedSender = [messageContext6 isFromTrustedSender];

    messageContext7 = [messageCopy messageContext];
    snapTrustedUser = [messageContext7 snapTrustedUser];
    v8->_fromSnapTrustedSender = [snapTrustedUser BOOLValue];

    messageContext8 = [messageCopy messageContext];
    senderCorrelationIdentifier = [messageContext8 senderCorrelationIdentifier];
    senderCorrelationIdentifier = v8->_senderCorrelationIdentifier;
    v8->_senderCorrelationIdentifier = senderCorrelationIdentifier;

    objc_storeStrong(&v8->_batchContext, context);
  }

  v29 = v8;
LABEL_6:

  return v29;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  fromPushID = [(IMDiMessageIDSTrustedData *)self fromPushID];
  fromToken = [(IMDiMessageIDSTrustedData *)self fromToken];
  fromIdentifier = [(IMDiMessageIDSTrustedData *)self fromIdentifier];
  toIdentifier = [(IMDiMessageIDSTrustedData *)self toIdentifier];
  if ([(IMDiMessageIDSTrustedData *)self isFromMe])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v3 stringWithFormat:@"<IMDiMessageIDSTrustedData: %p fromPushID = %@; fromToken = %@; fromIdentifier = %@; toIdentifier = %@; isFromMe = %@; command = %ld>", self, fromPushID, fromToken, fromIdentifier, toIdentifier, v8, -[IMDiMessageIDSTrustedData command](self, "command")];;

  return v9;
}

@end