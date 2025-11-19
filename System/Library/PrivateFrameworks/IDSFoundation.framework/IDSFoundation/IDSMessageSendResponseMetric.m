@interface IDSMessageSendResponseMetric
- (IDSMessageSendResponseMetric)initWithResponseCode:(int64_t)a3 service:(id)a4 command:(id)a5 hasDataToEncrypt:(BOOL)a6 messageType:(int64_t)a7;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSMessageSendResponseMetric

- (IDSMessageSendResponseMetric)initWithResponseCode:(int64_t)a3 service:(id)a4 command:(id)a5 hasDataToEncrypt:(BOOL)a6 messageType:(int64_t)a7
{
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = IDSMessageSendResponseMetric;
  v14 = [(IDSMessageSendResponseMetric *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_responseCode = a3;
    v16 = [v12 copy];
    service = v15->_service;
    v15->_service = v16;

    objc_storeStrong(&v15->_command, a5);
    v15->_hasDataToEncrypt = a6;
    v15->_messageType = a7;
  }

  return v15;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(IDSMessageSendResponseMetric *)self service];

  if (v4)
  {
    v5 = [(IDSMessageSendResponseMetric *)self service];
    [v3 setObject:v5 forKeyedSubscript:@"service"];
  }

  v6 = [(IDSMessageSendResponseMetric *)self command];

  if (v6)
  {
    v7 = [(IDSMessageSendResponseMetric *)self command];
    [v3 setObject:v7 forKeyedSubscript:@"command"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSMessageSendResponseMetric responseCode](self, "responseCode")}];
  [v3 setObject:v8 forKeyedSubscript:@"responseCode"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSMessageSendResponseMetric messageType](self, "messageType")}];
  [v3 setObject:v9 forKeyedSubscript:@"messageType"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSMessageSendResponseMetric hasDataToEncrypt](self, "hasDataToEncrypt")}];
  [v3 setObject:v10 forKeyedSubscript:@"hasDataToEncrypt"];

  v11 = [v3 copy];

  return v11;
}

@end