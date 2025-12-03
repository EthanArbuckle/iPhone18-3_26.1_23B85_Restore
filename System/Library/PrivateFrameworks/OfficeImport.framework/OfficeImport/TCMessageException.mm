@interface TCMessageException
+ (id)exceptionWithMessage:(id)message;
+ (id)exceptionWithMessage:(id)message args:(char *)args;
+ (id)exceptionWithUntaggedMessage:(id)message;
+ (id)exceptionWithUntaggedMessage:(id)message args:(char *)args;
+ (id)nsError:(id)error domain:(id)domain;
+ (void)initialize;
+ (void)raise:(id)raise;
+ (void)raiseUntaggedMessage:(id)message;
- (TCMessageException)initWithMessage:(id)message;
- (TCMessageException)initWithUntaggedMessage:(id)message;
- (id)description;
@end

@implementation TCMessageException

+ (void)initialize
{
  if (objc_opt_class() == self && (initAllMessages(void)::alreadyDone & 1) == 0)
  {
    initAllMessages(void)::alreadyDone = 1;

    objc_opt_class();
  }
}

- (TCMessageException)initWithMessage:(id)message
{
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = TCMessageException;
  v5 = [(TCMessageException *)&v12 initWithName:@"TCMessageException" reason:0 userInfo:0];
  if (v5)
  {
    v6 = [TCMessageEntry alloc];
    messageTag = [messageCopy messageTag];
    messageText = [messageCopy messageText];
    v9 = [(TCMessageEntry *)v6 initWithTag:messageTag affectedObject:0 text:messageText parameters:&v13];
    m_entry = v5->m_entry;
    v5->m_entry = v9;
  }

  return v5;
}

- (TCMessageException)initWithUntaggedMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = TCMessageException;
  v5 = [(TCMessageException *)&v9 initWithName:@"TCMessageException" reason:0 userInfo:0];
  if (v5)
  {
    v6 = [[TCMessageEntry alloc] initWithTag:0xFFFFFFFFLL affectedObject:0 text:messageCopy parameters:&v10];
    m_entry = v5->m_entry;
    v5->m_entry = v6;
  }

  return v5;
}

+ (id)exceptionWithMessage:(id)message args:(char *)args
{
  messageCopy = message;
  v7 = [[self alloc] initWithName:@"TCMessageException" reason:0 userInfo:0];
  if (v7)
  {
    v8 = [TCMessageEntry alloc];
    messageTag = [messageCopy messageTag];
    messageText = [messageCopy messageText];
    v11 = [(TCMessageEntry *)v8 initWithTag:messageTag affectedObject:0 text:messageText parameters:args];
    v12 = v7[5];
    v7[5] = v11;
  }

  return v7;
}

+ (id)exceptionWithMessage:(id)message
{
  v3 = [self exceptionWithMessage:message args:&v6];

  return v3;
}

+ (id)exceptionWithUntaggedMessage:(id)message args:(char *)args
{
  messageCopy = message;
  v7 = [[self alloc] initWithName:@"TCMessageException" reason:0 userInfo:0];
  if (v7)
  {
    v8 = [[TCMessageEntry alloc] initWithTag:0xFFFFFFFFLL affectedObject:0 text:messageCopy parameters:args];
    v9 = v7[5];
    v7[5] = v8;
  }

  return v7;
}

+ (id)exceptionWithUntaggedMessage:(id)message
{
  v3 = [self exceptionWithUntaggedMessage:message args:&v6];

  return v3;
}

+ (void)raise:(id)raise
{
  v3 = [TCMessageException exceptionWithMessage:raise args:&v4];
  objc_exception_throw(v3);
}

+ (void)raiseUntaggedMessage:(id)message
{
  v3 = [self exceptionWithUntaggedMessage:message args:&v4];
  objc_exception_throw(v3);
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TCMessageEntry *)self->m_entry description];
  v4 = [v2 stringWithFormat:@"TCMessageException: %@", v3];

  return v4;
}

+ (id)nsError:(id)error domain:(id)domain
{
  v24[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  domainCopy = domain;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    getMessageText = 0;
    goto LABEL_10;
  }

  getEntry = [errorCopy getEntry];
  getMessageText = [getEntry getMessageText];
  if (!getMessageText)
  {

    goto LABEL_10;
  }

  messageText = [TCUnknownProblemMessage messageText];
  v10 = [getMessageText isEqualToString:messageText];

  if (v10)
  {
LABEL_10:
    name = [errorCopy name];
    v20 = [name isEqualToString:*MEMORY[0x277CBE728]];

    if (v20)
    {
      messageText2 = [TCOutOfMemoryMessage messageText];

      getMessageText = messageText2;
    }

    v12 = 0;
    getAdditionalText = 0;
    v17 = 0;
    v16 = MEMORY[0x277CCA9B8];
    goto LABEL_13;
  }

  getEntry2 = [errorCopy getEntry];
  LODWORD(v12) = [getEntry2 getMessageTag];

  getEntry3 = [errorCopy getEntry];
  getAdditionalText = [getEntry3 getAdditionalText];

  if ([getMessageText isEqualToString:@"TCUserCancelled"])
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    if (v15)
    {
      goto LABEL_16;
    }
  }

  v16 = MEMORY[0x277CCA9B8];
  v12 = v12;
  if (getAdditionalText)
  {
    v23 = *MEMORY[0x277CCA470];
    v24[0] = getAdditionalText;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v18 = 0;
    goto LABEL_14;
  }

  v17 = 0;
LABEL_13:
  v18 = 1;
LABEL_14:
  v15 = [v16 tsu_errorWithDomain:domainCopy code:v12 alertTitle:getMessageText alertMessage:getAdditionalText userInfo:v17];
  if ((v18 & 1) == 0)
  {
  }

LABEL_16:

  return v15;
}

@end