@interface TCMessageException
+ (id)exceptionWithMessage:(id)a3;
+ (id)exceptionWithMessage:(id)a3 args:(char *)a4;
+ (id)exceptionWithUntaggedMessage:(id)a3;
+ (id)exceptionWithUntaggedMessage:(id)a3 args:(char *)a4;
+ (id)nsError:(id)a3 domain:(id)a4;
+ (void)initialize;
+ (void)raise:(id)a3;
+ (void)raiseUntaggedMessage:(id)a3;
- (TCMessageException)initWithMessage:(id)a3;
- (TCMessageException)initWithUntaggedMessage:(id)a3;
- (id)description;
@end

@implementation TCMessageException

+ (void)initialize
{
  if (objc_opt_class() == a1 && (initAllMessages(void)::alreadyDone & 1) == 0)
  {
    initAllMessages(void)::alreadyDone = 1;

    objc_opt_class();
  }
}

- (TCMessageException)initWithMessage:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TCMessageException;
  v5 = [(TCMessageException *)&v12 initWithName:@"TCMessageException" reason:0 userInfo:0];
  if (v5)
  {
    v6 = [TCMessageEntry alloc];
    v7 = [v4 messageTag];
    v8 = [v4 messageText];
    v9 = [(TCMessageEntry *)v6 initWithTag:v7 affectedObject:0 text:v8 parameters:&v13];
    m_entry = v5->m_entry;
    v5->m_entry = v9;
  }

  return v5;
}

- (TCMessageException)initWithUntaggedMessage:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TCMessageException;
  v5 = [(TCMessageException *)&v9 initWithName:@"TCMessageException" reason:0 userInfo:0];
  if (v5)
  {
    v6 = [[TCMessageEntry alloc] initWithTag:0xFFFFFFFFLL affectedObject:0 text:v4 parameters:&v10];
    m_entry = v5->m_entry;
    v5->m_entry = v6;
  }

  return v5;
}

+ (id)exceptionWithMessage:(id)a3 args:(char *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithName:@"TCMessageException" reason:0 userInfo:0];
  if (v7)
  {
    v8 = [TCMessageEntry alloc];
    v9 = [v6 messageTag];
    v10 = [v6 messageText];
    v11 = [(TCMessageEntry *)v8 initWithTag:v9 affectedObject:0 text:v10 parameters:a4];
    v12 = v7[5];
    v7[5] = v11;
  }

  return v7;
}

+ (id)exceptionWithMessage:(id)a3
{
  v3 = [a1 exceptionWithMessage:a3 args:&v6];

  return v3;
}

+ (id)exceptionWithUntaggedMessage:(id)a3 args:(char *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithName:@"TCMessageException" reason:0 userInfo:0];
  if (v7)
  {
    v8 = [[TCMessageEntry alloc] initWithTag:0xFFFFFFFFLL affectedObject:0 text:v6 parameters:a4];
    v9 = v7[5];
    v7[5] = v8;
  }

  return v7;
}

+ (id)exceptionWithUntaggedMessage:(id)a3
{
  v3 = [a1 exceptionWithUntaggedMessage:a3 args:&v6];

  return v3;
}

+ (void)raise:(id)a3
{
  v3 = [TCMessageException exceptionWithMessage:a3 args:&v4];
  objc_exception_throw(v3);
}

+ (void)raiseUntaggedMessage:(id)a3
{
  v3 = [a1 exceptionWithUntaggedMessage:a3 args:&v4];
  objc_exception_throw(v3);
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TCMessageEntry *)self->m_entry description];
  v4 = [v2 stringWithFormat:@"TCMessageException: %@", v3];

  return v4;
}

+ (id)nsError:(id)a3 domain:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v7 = [v5 getEntry];
  v8 = [v7 getMessageText];
  if (!v8)
  {

    goto LABEL_10;
  }

  v9 = [TCUnknownProblemMessage messageText];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
LABEL_10:
    v19 = [v5 name];
    v20 = [v19 isEqualToString:*MEMORY[0x277CBE728]];

    if (v20)
    {
      v21 = [TCOutOfMemoryMessage messageText];

      v8 = v21;
    }

    v12 = 0;
    v14 = 0;
    v17 = 0;
    v16 = MEMORY[0x277CCA9B8];
    goto LABEL_13;
  }

  v11 = [v5 getEntry];
  LODWORD(v12) = [v11 getMessageTag];

  v13 = [v5 getEntry];
  v14 = [v13 getAdditionalText];

  if ([v8 isEqualToString:@"TCUserCancelled"])
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    if (v15)
    {
      goto LABEL_16;
    }
  }

  v16 = MEMORY[0x277CCA9B8];
  v12 = v12;
  if (v14)
  {
    v23 = *MEMORY[0x277CCA470];
    v24[0] = v14;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v18 = 0;
    goto LABEL_14;
  }

  v17 = 0;
LABEL_13:
  v18 = 1;
LABEL_14:
  v15 = [v16 tsu_errorWithDomain:v6 code:v12 alertTitle:v8 alertMessage:v14 userInfo:v17];
  if ((v18 & 1) == 0)
  {
  }

LABEL_16:

  return v15;
}

@end