@interface ICASFastSyncErrorData
- (ICASFastSyncErrorData)initWithErrorCode:(id)code countOfIgnoredMessages:(id)messages;
- (id)toDict;
@end

@implementation ICASFastSyncErrorData

- (ICASFastSyncErrorData)initWithErrorCode:(id)code countOfIgnoredMessages:(id)messages
{
  codeCopy = code;
  messagesCopy = messages;
  v12.receiver = self;
  v12.super_class = ICASFastSyncErrorData;
  v9 = [(ICASFastSyncErrorData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_errorCode, code);
    objc_storeStrong(&v10->_countOfIgnoredMessages, messages);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"errorCode";
  errorCode = [(ICASFastSyncErrorData *)self errorCode];
  if (errorCode)
  {
    errorCode2 = [(ICASFastSyncErrorData *)self errorCode];
  }

  else
  {
    errorCode2 = objc_opt_new();
  }

  v5 = errorCode2;
  v12[1] = @"countOfIgnoredMessages";
  v13[0] = errorCode2;
  countOfIgnoredMessages = [(ICASFastSyncErrorData *)self countOfIgnoredMessages];
  if (countOfIgnoredMessages)
  {
    countOfIgnoredMessages2 = [(ICASFastSyncErrorData *)self countOfIgnoredMessages];
  }

  else
  {
    countOfIgnoredMessages2 = objc_opt_new();
  }

  v8 = countOfIgnoredMessages2;
  v13[1] = countOfIgnoredMessages2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end