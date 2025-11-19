@interface IMDiMessageIDSTrustedData
- (IMDiMessageIDSTrustedData)initWithBatchedMessage:(id)a3 batchContext:(id)a4;
- (IMDiMessageIDSTrustedData)initWithTopLevelMessage:(id)a3 fromPushID:(id)a4 messageContext:(id)a5;
- (id)description;
@end

@implementation IMDiMessageIDSTrustedData

- (IMDiMessageIDSTrustedData)initWithTopLevelMessage:(id)a3 fromPushID:(id)a4 messageContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29.receiver = self;
  v29.super_class = IMDiMessageIDSTrustedData;
  v11 = [(IMDiMessageIDSTrustedData *)&v29 init];
  if (v11)
  {
    v12 = [v8 objectForKey:@"IDSIncomingMessagePushPayload"];
    v13 = [v12 objectForKey:*MEMORY[0x277D18848]];
    if (!v13)
    {
      v13 = [v12 objectForKey:@"c"];
    }

    v14 = [v9 copy];
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
    v11->_fromTrustedSender = [v10 isFromTrustedSender];
    v11->_fromSnapTrustedSender = [v12 BOOLValueForKey:@"stu" withDefault:1];
    v25 = [v10 senderCorrelationIdentifier];
    senderCorrelationIdentifier = v11->_senderCorrelationIdentifier;
    v11->_senderCorrelationIdentifier = v25;

    batchContext = v11->_batchContext;
    v11->_batchContext = 0;
  }

  return v11;
}

- (IMDiMessageIDSTrustedData)initWithBatchedMessage:(id)a3 batchContext:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    v9 = [v6 messageContext];
    v10 = [v9 originalCommand];

    v11 = [v6 messageContext];
    v12 = [v11 fromID];
    fromPushID = v8->_fromPushID;
    v8->_fromPushID = v12;

    v14 = [v6 messageContext];
    v15 = [v14 senderPushToken];
    fromToken = v8->_fromToken;
    v8->_fromToken = v15;

    v17 = [v6 messageContext];
    v18 = [v17 fromID];
    fromIdentifier = v8->_fromIdentifier;
    v8->_fromIdentifier = v18;

    v20 = [v6 messageContext];
    v21 = [v20 toID];
    toIdentifier = v8->_toIdentifier;
    v8->_toIdentifier = v21;

    v8->_command = [v10 integerValue];
    v23 = [v6 messageContext];
    v8->_fromTrustedSender = [v23 isFromTrustedSender];

    v24 = [v6 messageContext];
    v25 = [v24 snapTrustedUser];
    v8->_fromSnapTrustedSender = [v25 BOOLValue];

    v26 = [v6 messageContext];
    v27 = [v26 senderCorrelationIdentifier];
    senderCorrelationIdentifier = v8->_senderCorrelationIdentifier;
    v8->_senderCorrelationIdentifier = v27;

    objc_storeStrong(&v8->_batchContext, a4);
  }

  v29 = v8;
LABEL_6:

  return v29;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMDiMessageIDSTrustedData *)self fromPushID];
  v5 = [(IMDiMessageIDSTrustedData *)self fromToken];
  v6 = [(IMDiMessageIDSTrustedData *)self fromIdentifier];
  v7 = [(IMDiMessageIDSTrustedData *)self toIdentifier];
  if ([(IMDiMessageIDSTrustedData *)self isFromMe])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v3 stringWithFormat:@"<IMDiMessageIDSTrustedData: %p fromPushID = %@; fromToken = %@; fromIdentifier = %@; toIdentifier = %@; isFromMe = %@; command = %ld>", self, v4, v5, v6, v7, v8, -[IMDiMessageIDSTrustedData command](self, "command")];;

  return v9;
}

@end