@interface DDUIPairCompleteMessage
- (DDUIPairCompleteMessage)initWithCancellationReason:(id)reason;
- (DDUIPairCompleteMessage)initWithDictionaryRepresentation:(id)representation;
- (DDUIPairCompleteMessage)initWithNotificationResult:(unint64_t)result;
- (DDUIPairCompleteMessage)initWithNotificationResult:(unint64_t)result listenerUUID:(id)d;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation DDUIPairCompleteMessage

- (DDUIPairCompleteMessage)initWithNotificationResult:(unint64_t)result
{
  v5.receiver = self;
  v5.super_class = DDUIPairCompleteMessage;
  result = [(DDUIPairCompleteMessage *)&v5 init];
  if (result)
  {
    result->_notificationResult = result;
  }

  return result;
}

- (DDUIPairCompleteMessage)initWithNotificationResult:(unint64_t)result listenerUUID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = DDUIPairCompleteMessage;
  v8 = [(DDUIPairCompleteMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_notificationResult = result;
    objc_storeStrong(&v8->_listenerUUID, d);
  }

  return v9;
}

- (DDUIPairCompleteMessage)initWithCancellationReason:(id)reason
{
  reasonCopy = reason;
  v9.receiver = self;
  v9.super_class = DDUIPairCompleteMessage;
  v6 = [(DDUIPairCompleteMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cancellationReason, reason);
    v7->_isCancellation = 1;
  }

  return v7;
}

- (DDUIPairCompleteMessage)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"DDUIMessageResponseIsCancelKey"];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      v8 = [v5 objectForKeyedSubscript:@"DDUIMessageResponseCancelReasonKey"];
      self = [(DDUIPairCompleteMessage *)self initWithCancellationReason:v8];
    }

    else
    {
      v8 = [v5 objectForKeyedSubscript:@"DDUIMessageResponseListenerUUIDKey"];
      v10 = [v5 objectForKeyedSubscript:@"DDUIMessageResponseResultKey"];
      unsignedIntegerValue = [v10 unsignedIntegerValue];
      if (v8)
      {
        v12 = [(DDUIPairCompleteMessage *)self initWithNotificationResult:unsignedIntegerValue listenerUUID:v8];
      }

      else
      {
        v12 = [(DDUIPairCompleteMessage *)self initWithNotificationResult:unsignedIntegerValue];
      }

      self = v12;
    }

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

  cancellationReason = [(DDUIPairCompleteMessage *)self cancellationReason];

  if (cancellationReason)
  {
    cancellationReason2 = [(DDUIPairCompleteMessage *)self cancellationReason];
    [v6 setObject:cancellationReason2 forKeyedSubscript:@"DDUIMessageResponseCancelReasonKey"];
  }

  listenerUUID = [(DDUIPairCompleteMessage *)self listenerUUID];

  if (listenerUUID)
  {
    listenerUUID2 = [(DDUIPairCompleteMessage *)self listenerUUID];
    [v6 setObject:listenerUUID2 forKeyedSubscript:@"DDUIMessageResponseListenerUUIDKey"];
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