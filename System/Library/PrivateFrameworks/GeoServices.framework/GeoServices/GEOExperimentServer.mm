@interface GEOExperimentServer
+ (void)submitBackgroundTasksNeededDuringDaemonStart;
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (GEOExperimentServer)initWithDaemon:(id)daemon;
- (void)fetchAllExperimentsWithMessage:(id)message;
- (void)fetchAssignUUIDSyncWithMessage:(id)message;
- (void)fetchAssignUUIDWithMessage:(id)message;
- (void)fetchBucketIDWithRequest:(id)request;
- (void)refreshDatasetWithMessage:(id)message;
- (void)runBackgroundTask:(id)task;
- (void)setActiveBranchWithMessage:(id)message;
- (void)setBucketIdWithMessage:(id)message;
- (void)setQuerySubstringWithMessage:(id)message;
- (void)updateWithMessage:(id)message;
@end

@implementation GEOExperimentServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  v14 = 0;
  if (v13 <= 1460)
  {
    if (v13 > 1268)
    {
      if (v13 == 1269)
      {
        v14 = 1;
        if (sub_100001B78(peerCopy, objectCopy, @"experiments", messageCopy, &off_100088B38, 1))
        {
          v21 = objc_opt_class();
          v22 = sub_100001388(@"experiments", messageCopy, objectCopy, v21, peerCopy);
          v16 = v22;
          if (v22)
          {
            [v22 setSignpostId:id];
            [(GEOExperimentServer *)self fetchBucketIDWithRequest:v16];
            goto LABEL_37;
          }

          goto LABEL_40;
        }
      }

      else if (v13 == 1446)
      {
        v18 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
        v16 = v18;
        if (v18)
        {
          [v18 setSignpostId:id];
          [(GEOExperimentServer *)self fetchAssignUUIDWithMessage:v16];
          goto LABEL_37;
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (v13 == 643)
      {
        v20 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
        v16 = v20;
        if (v20)
        {
          [v20 setSignpostId:id];
          [(GEOExperimentServer *)self updateWithMessage:v16];
          goto LABEL_37;
        }

        goto LABEL_40;
      }

      if (v13 == 1111)
      {
        if (sub_100001B78(peerCopy, objectCopy, @"experiments", messageCopy, &off_100088B08, 0))
        {
          v17 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
          v16 = v17;
          if (v17)
          {
            [v17 setSignpostId:id];
            [(GEOExperimentServer *)self setBucketIdWithMessage:v16];
            goto LABEL_37;
          }

LABEL_40:
          v14 = 0;
          goto LABEL_38;
        }

        goto LABEL_32;
      }
    }

    goto LABEL_39;
  }

  if (v13 <= 1826)
  {
    if (v13 == 1461)
    {
      v24 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
      v16 = v24;
      if (v24)
      {
        [v24 setSignpostId:id];
        [(GEOExperimentServer *)self refreshDatasetWithMessage:v16];
        goto LABEL_37;
      }

      goto LABEL_40;
    }

    if (v13 != 1526)
    {
      goto LABEL_39;
    }

    if (sub_100001B78(peerCopy, objectCopy, @"experiments", messageCopy, &off_100088AF0, 0))
    {
      v19 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
      v16 = v19;
      if (v19)
      {
        [v19 setSignpostId:id];
        [(GEOExperimentServer *)self setActiveBranchWithMessage:v16];
        goto LABEL_37;
      }

      goto LABEL_40;
    }

LABEL_32:
    v14 = 1;
    goto LABEL_39;
  }

  switch(v13)
  {
    case 1827:
      if (sub_100001B78(peerCopy, objectCopy, @"experiments", messageCopy, &off_100088AD8, 0))
      {
        v23 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
        v16 = v23;
        if (v23)
        {
          [v23 setSignpostId:id];
          [(GEOExperimentServer *)self setQuerySubstringWithMessage:v16];
          goto LABEL_37;
        }

        goto LABEL_40;
      }

      goto LABEL_32;
    case 1859:
      v25 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
      v16 = v25;
      if (v25)
      {
        [v25 setSignpostId:id];
        [(GEOExperimentServer *)self fetchAssignUUIDSyncWithMessage:v16];
        goto LABEL_37;
      }

      goto LABEL_40;
    case 1975:
      if (sub_100001B78(peerCopy, objectCopy, @"experiments", messageCopy, &off_100088B20, 0))
      {
        v15 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
        v16 = v15;
        if (v15)
        {
          [v15 setSignpostId:id];
          [(GEOExperimentServer *)self fetchAllExperimentsWithMessage:v16];
LABEL_37:
          v14 = 1;
LABEL_38:

          break;
        }

        goto LABEL_40;
      }

      goto LABEL_32;
  }

LABEL_39:

  return v14;
}

- (void)runBackgroundTask:(id)task
{
  taskCopy = task;
  identifier = [taskCopy identifier];
  GEOBackgroundTaskReportReportTaskInitiated();

  identifier2 = [taskCopy identifier];
  if ([identifier2 isEqualToString:GEOExperimentServerLocalProxyBackgroundTaskIdentifier])
  {
  }

  else
  {
    identifier3 = [taskCopy identifier];
    v8 = [identifier3 isEqualToString:GEOExperimentServerLocalProxyBackgroundTaskRetryIdentifier];

    if (!v8)
    {
      v11.receiver = self;
      v11.super_class = GEOExperimentServer;
      [(GEOExperimentServer *)&v11 runBackgroundTask:taskCopy];
      goto LABEL_6;
    }
  }

  v9 = taskCopy;
  v10 = +[GEOExperimentConfiguration sharedConfiguration];
  [v10 forceUpdate:v9];

LABEL_6:
}

- (void)fetchBucketIDWithRequest:(id)request
{
  requestCopy = request;
  v4 = [[GEOExperimentFetchBucketIDReply alloc] initWithRequest:requestCopy];

  v5 = +[GEOExperimentConfiguration sharedConfiguration];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001BCAC;
  v7[3] = &unk_100081D98;
  v8 = v4;
  v6 = v4;
  [v5 fetchBucketID:v7];
}

- (void)fetchAssignUUIDSyncWithMessage:(id)message
{
  messageCopy = message;
  v4 = +[GEOExperimentConfiguration sharedConfiguration];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001BDB0;
  v6[3] = &unk_100081DC0;
  v7 = messageCopy;
  v5 = messageCopy;
  [v4 abAssignUUIDWithSyncCompletionHandler:v6];
}

- (void)fetchAssignUUIDWithMessage:(id)message
{
  messageCopy = message;
  v4 = +[GEOExperimentConfiguration sharedConfiguration];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001BF8C;
  v6[3] = &unk_100081DC0;
  v7 = messageCopy;
  v5 = messageCopy;
  [v4 abAssignUUIDWithCompletionHandler:v6];
}

- (void)fetchAllExperimentsWithMessage:(id)message
{
  messageCopy = message;
  v4 = +[GEOExperimentConfiguration sharedConfiguration];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001C168;
  v6[3] = &unk_100081D70;
  v7 = messageCopy;
  v5 = messageCopy;
  [v4 _fetchAllAvailableExperimentsResponse:v6];
}

- (void)setBucketIdWithMessage:(id)message
{
  userInfo = [message userInfo];
  v5 = [userInfo objectForKey:@"bucketIdDR"];

  v4 = +[GEOExperimentConfiguration sharedConfiguration];
  [v4 _debug_setBucketIdDictionaryRepresentation:v5];
}

- (void)setActiveBranchWithMessage:(id)message
{
  userInfo = [message userInfo];
  v5 = [userInfo objectForKey:@"abdr"];

  v4 = +[GEOExperimentConfiguration sharedConfiguration];
  [v4 _setActiveExperimentBranchDictionaryRepresentation:v5];
}

- (void)setQuerySubstringWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v10 = [userInfo objectForKey:@"type"];

  userInfo2 = [messageCopy userInfo];
  v6 = [userInfo2 objectForKey:@"placeRequestType"];

  userInfo3 = [messageCopy userInfo];

  v8 = [userInfo3 objectForKey:@"querySubstring"];

  if (v10)
  {
    v9 = +[GEOExperimentConfiguration sharedConfiguration];
    [v9 _debug_setCustomQuerySubstring:v8 forExperimentType:objc_msgSend(v10 dispatcherRequestType:{"integerValue"), objc_msgSend(v6, "intValue")}];
  }
}

- (void)refreshDatasetWithMessage:(id)message
{
  userInfo = [message userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"datasetABStatus"];

  v4 = [[GEOPDDatasetABStatus alloc] initWithData:v6];
  v5 = +[GEOExperimentConfiguration sharedConfiguration];
  [v5 refreshDatasetABStatus:v4];
}

- (void)updateWithMessage:(id)message
{
  v3 = +[GEOExperimentConfiguration sharedConfiguration];
  [v3 _debug_forceUpdate];
}

- (GEOExperimentServer)initWithDaemon:(id)daemon
{
  v7.receiver = self;
  v7.super_class = GEOExperimentServer;
  v3 = [(GEOExperimentServer *)&v7 initWithDaemon:daemon];
  if (v3)
  {
    v4 = +[GEOExperimentConfiguration sharedConfiguration];
    v5 = v3;
  }

  return v3;
}

+ (void)submitBackgroundTasksNeededDuringDaemonStart
{
  v2 = +[GEOExperimentConfiguration sharedConfiguration];
  [v2 submitBackgroundTasksNeededDuringDaemonStart];
}

@end