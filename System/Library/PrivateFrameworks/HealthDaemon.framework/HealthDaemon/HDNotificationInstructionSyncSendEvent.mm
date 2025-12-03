@interface HDNotificationInstructionSyncSendEvent
- (HDNotificationInstructionSyncSendEvent)initWithNotificationInstructionMessage:(id)message sendError:(id)error;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HDNotificationInstructionSyncSendEvent

- (HDNotificationInstructionSyncSendEvent)initWithNotificationInstructionMessage:(id)message sendError:(id)error
{
  messageCopy = message;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = HDNotificationInstructionSyncSendEvent;
  v8 = [(HDNotificationInstructionSyncSendEvent *)&v14 init];
  if (v8)
  {
    v9 = [messageCopy copy];
    message = v8->_message;
    v8->_message = v9;

    v11 = [errorCopy copy];
    sendError = v8->_sendError;
    v8->_sendError = v11;
  }

  return v8;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"categoryIdentifier";
  v4 = [(HDNotificationInstructionMessage *)self->_message categoryIdentifier:source];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v17 = @"clientIdentifier";
  clientIdentifier = [(HDNotificationInstructionMessage *)self->_message clientIdentifier];
  v18[0] = clientIdentifier;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v8 = [v5 initWithDictionary:v7];

  sendError = self->_sendError;
  if (sendError)
  {
    v10 = MEMORY[0x277CCACA8];
    domain = [(NSError *)sendError domain];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSError code](self->_sendError, "code")}];
    v13 = [v10 stringWithFormat:@"%@_%@", domain, v12];
    [v8 setObject:v13 forKeyedSubscript:@"error"];
  }

  v14 = [v8 copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end