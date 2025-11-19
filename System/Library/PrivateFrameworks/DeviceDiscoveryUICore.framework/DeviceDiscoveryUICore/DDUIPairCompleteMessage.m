@interface DDUIPairCompleteMessage
- (DDUIPairCompleteMessage)initWithCancellationReason:(id)a3;
- (DDUIPairCompleteMessage)initWithDictionaryRepresentation:(id)a3;
- (DDUIPairCompleteMessage)initWithNotificationResult:(unint64_t)a3;
- (DDUIPairCompleteMessage)initWithNotificationResult:(unint64_t)a3 listenerUUID:(id)a4;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation DDUIPairCompleteMessage

- (DDUIPairCompleteMessage)initWithNotificationResult:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = DDUIPairCompleteMessage;
  result = [(DDUIPairCompleteMessage *)&v5 init];
  if (result)
  {
    result->_notificationResult = a3;
  }

  return result;
}

- (DDUIPairCompleteMessage)initWithNotificationResult:(unint64_t)a3 listenerUUID:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DDUIPairCompleteMessage;
  v8 = [(DDUIPairCompleteMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_notificationResult = a3;
    objc_storeStrong(&v8->_listenerUUID, a4);
  }

  return v9;
}

- (DDUIPairCompleteMessage)initWithCancellationReason:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DDUIPairCompleteMessage;
  v6 = [(DDUIPairCompleteMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cancellationReason, a3);
    v7->_isCancellation = 1;
  }

  return v7;
}

- (DDUIPairCompleteMessage)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"DDUIMessageResponseIsCancelKey"];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = [v5 objectForKeyedSubscript:@"DDUIMessageResponseCancelReasonKey"];
      self = [(DDUIPairCompleteMessage *)self initWithCancellationReason:v8];
    }

    else
    {
      v8 = [v5 objectForKeyedSubscript:@"DDUIMessageResponseListenerUUIDKey"];
      v10 = [v5 objectForKeyedSubscript:@"DDUIMessageResponseResultKey"];
      v11 = [v10 unsignedIntegerValue];
      if (v8)
      {
        v12 = [(DDUIPairCompleteMessage *)self initWithNotificationResult:v11 listenerUUID:v8];
      }

      else
      {
        v12 = [(DDUIPairCompleteMessage *)self initWithNotificationResult:v11];
      }

      self = v12;
    }

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"DDUIMessageResponseIsCancelKey";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[DDUIPairCompleteMessage isCancellation](self, "isCancellation")}];
  v14[0] = v3;
  v13[1] = @"DDUIMessageResponseResultKey";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DDUIPairCompleteMessage notificationResult](self, "notificationResult")}];
  v14[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v6 = [v5 mutableCopy];

  v7 = [(DDUIPairCompleteMessage *)self cancellationReason];

  if (v7)
  {
    v8 = [(DDUIPairCompleteMessage *)self cancellationReason];
    [v6 setObject:v8 forKeyedSubscript:@"DDUIMessageResponseCancelReasonKey"];
  }

  v9 = [(DDUIPairCompleteMessage *)self listenerUUID];

  if (v9)
  {
    v10 = [(DDUIPairCompleteMessage *)self listenerUUID];
    [v6 setObject:v10 forKeyedSubscript:@"DDUIMessageResponseListenerUUIDKey"];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if (self->_isCancellation)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = DDUINotificationResultString(self->_notificationResult);
  v7 = [v3 stringWithFormat:@"<%@: %p isCancellation = %@; notificationResult = %@; cancellationReason = %@; listenerUUID = %@>", v4, self, v5, v6, self->_cancellationReason, self->_listenerUUID];;

  return v7;
}

@end