@interface AutoFetchState
- (AutoFetchState)init;
- (id)accountDidFinish;
- (id)accountDidStart;
- (id)mailboxesDidFinish;
- (id)mailboxesDidFinishAll;
- (id)mailboxesDidStart;
- (id)update:(int64_t)a3;
- (int64_t)currentStage;
@end

@implementation AutoFetchState

- (int64_t)currentStage
{
  if ([(AutoFetchState *)self activeAccountSyncCount])
  {
    return 1;
  }

  return [(AutoFetchState *)self mailboxesStage];
}

- (id)accountDidStart
{
  v3 = [(AutoFetchState *)self currentStage];
  [(AutoFetchState *)self setActiveAccountSyncCount:[(AutoFetchState *)self activeAccountSyncCount]+ 1];
  if (v3 == 1)
  {
    v4 = &__NSArray0__struct;
  }

  else
  {
    v6 = @"AutoFetchProcessStartNotification";
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  return v4;
}

- (id)mailboxesDidStart
{
  v3 = [(AutoFetchState *)self currentStage];
  [(AutoFetchState *)self setMailboxesStage:1];
  if (v3 == 1)
  {
    v4 = &__NSArray0__struct;
  }

  else
  {
    v6 = @"AutoFetchProcessStartNotification";
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  return v4;
}

- (id)mailboxesDidFinish
{
  if ([(AutoFetchState *)self mailboxesStage]!= 1)
  {
    v3 = MFAutoFetchLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100006064(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = [(AutoFetchState *)self currentStage];
  [(AutoFetchState *)self setMailboxesStage:2];
  if ([(AutoFetchState *)self currentStage]== 2)
  {
    if (v11 == 1)
    {
      v16 = @"AutoFetchProcessFinishedNotification";
      v12 = &v16;
      v13 = 1;
    }

    else
    {
      v17 = @"AutoFetchProcessStartNotification";
      v18 = @"AutoFetchProcessFinishedNotification";
      v12 = &v17;
      v13 = 2;
    }

    v14 = [NSArray arrayWithObjects:v12 count:v13, v16, v17, v18];
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  return v14;
}

- (id)mailboxesDidFinishAll
{
  if ([(AutoFetchState *)self mailboxesStage]== 2)
  {
    [(AutoFetchState *)self setMailboxesStage:0];
    if (![(AutoFetchState *)self currentStage])
    {
      v13 = @"AutoFetchDoneNotification";
      v3 = [NSArray arrayWithObjects:&v13 count:1];
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MFAutoFetchLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D07EC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v3 = &__NSArray0__struct;
LABEL_8:

  return v3;
}

- (AutoFetchState)init
{
  v3.receiver = self;
  v3.super_class = AutoFetchState;
  result = [(AutoFetchState *)&v3 init];
  if (result)
  {
    result->_activeAccountSyncCount = 0;
    result->_mailboxesStage = 0;
  }

  return result;
}

- (id)update:(int64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_13;
      }

      v3 = [(AutoFetchState *)self accountDidFinish];
    }

    else
    {
      v3 = [(AutoFetchState *)self accountDidStart];
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        v3 = [(AutoFetchState *)self mailboxesDidStart];
        break;
      case 3:
        v3 = [(AutoFetchState *)self mailboxesDidFinish];
        break;
      case 4:
        v3 = [(AutoFetchState *)self mailboxesDidFinishAll];
        break;
      default:
        goto LABEL_13;
    }
  }

  a2 = v3;
LABEL_13:

  return a2;
}

- (id)accountDidFinish
{
  if (![(AutoFetchState *)self activeAccountSyncCount])
  {
    v6 = MFAutoFetchLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000D07B4(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    goto LABEL_8;
  }

  [(AutoFetchState *)self setActiveAccountSyncCount:[(AutoFetchState *)self activeAccountSyncCount]- 1];
  v3 = [(AutoFetchState *)self currentStage];
  if (v3 == 2)
  {
    v16 = @"AutoFetchProcessFinishedNotification";
    v4 = &v16;
    v5 = 1;
    goto LABEL_10;
  }

  if (v3)
  {
LABEL_8:
    v14 = &__NSArray0__struct;
    goto LABEL_11;
  }

  v17 = @"AutoFetchProcessFinishedNotification";
  v18 = @"AutoFetchDoneNotification";
  v4 = &v17;
  v5 = 2;
LABEL_10:
  v14 = [NSArray arrayWithObjects:v4 count:v5, v16, v17, v18];
LABEL_11:

  return v14;
}

@end