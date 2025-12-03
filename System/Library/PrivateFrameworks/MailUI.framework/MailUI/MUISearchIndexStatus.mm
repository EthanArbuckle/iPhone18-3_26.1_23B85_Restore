@interface MUISearchIndexStatus
- (BOOL)isNotFullyIndexed;
- (MUISearchIndexStatus)initWithLocalMessageBodiesIndexed:(unint64_t)indexed totalLocalMessages:(unint64_t)messages remoteMessageBodiesIndexed:(unint64_t)bodiesIndexed totalRemoteMessages:(unint64_t)remoteMessages messagesInLargestRemoteAccount:(unint64_t)account;
- (int64_t)scenario;
@end

@implementation MUISearchIndexStatus

- (BOOL)isNotFullyIndexed
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D06EB8] getValueForKey:@"min-messages-for-search-index-visibility"];
  v4 = [MEMORY[0x277D06EB8] getValueForKey:@"max-indexing-ratio-for-search-index-visibility"];
  v5 = EMLogSearchableIndexStatus();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = v3;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "Server Config:: MinMessageToIndex:%{public}@ MaxIndexedToTotalRatio:%{public}@", &v16, 0x16u);
  }

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
    if (v4)
    {
LABEL_5:
      [v4 floatValue];
      v8 = v7;
      goto LABEL_8;
    }
  }

  else
  {
    unsignedIntegerValue = 100;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v8 = 0.95;
LABEL_8:
  messageBodiesIndexed = [(MUISearchIndexStatus *)self messageBodiesIndexed];
  v10 = messageBodiesIndexed / [(MUISearchIndexStatus *)self totalMessages];
  messageBodiesIndexed2 = [(MUISearchIndexStatus *)self messageBodiesIndexed];
  v13 = v10 < v8 && messageBodiesIndexed2 > unsignedIntegerValue;
  v14 = EMLogSearchableIndexStatus();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109120;
    LODWORD(v17) = v13;
    _os_log_impl(&dword_214A5E000, v14, OS_LOG_TYPE_DEFAULT, "Indexing Status Visible:%{BOOL}d", &v16, 8u);
  }

  return v13;
}

- (int64_t)scenario
{
  if ([(MUISearchIndexStatus *)self isNotFullyIndexed])
  {
    return [(MUISearchIndexStatus *)self messagesInLargestRemoteAccount]>> 5 > 0xC34;
  }

  else
  {
    return 2;
  }
}

- (MUISearchIndexStatus)initWithLocalMessageBodiesIndexed:(unint64_t)indexed totalLocalMessages:(unint64_t)messages remoteMessageBodiesIndexed:(unint64_t)bodiesIndexed totalRemoteMessages:(unint64_t)remoteMessages messagesInLargestRemoteAccount:(unint64_t)account
{
  v15.receiver = self;
  v15.super_class = MUISearchIndexStatus;
  result = [(MUISearchIndexStatus *)&v15 init];
  if (result)
  {
    if (indexed <= bodiesIndexed)
    {
      indexedCopy = bodiesIndexed;
    }

    else
    {
      indexedCopy = indexed;
    }

    if (messages <= remoteMessages)
    {
      messagesCopy = remoteMessages;
    }

    else
    {
      messagesCopy = messages;
    }

    result->_messageBodiesIndexed = indexedCopy;
    result->_totalMessages = messagesCopy;
    result->_messagesInLargestRemoteAccount = account;
  }

  return result;
}

@end