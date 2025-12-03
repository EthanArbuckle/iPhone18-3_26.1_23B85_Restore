@interface IDSAPNSAckTracker
- (id)cloudTelemetryReporter;
- (void)addBlockToAggregatableMessage:(id)message forURIs:(id)is trackingSet:(id)set guid:(id)guid;
- (void)addBlockToAggregateMessage:(id)message guid:(id)guid;
- (void)addBlockToMMLMessage:(id)message guid:(id)guid;
- (void)trackMMLMessages:(id)messages forURIs:(id)is;
- (void)trackMessages:(id)messages forURIs:(id)is;
@end

@implementation IDSAPNSAckTracker

- (void)trackMMLMessages:(id)messages forURIs:(id)is
{
  messagesCopy = messages;
  isCopy = is;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = messagesCopy;
  v24 = [messagesCopy countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v24)
  {
    v23 = *v40;
    do
    {
      v7 = 0;
      do
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v7;
        v8 = *(*(&v39 + 1) + 8 * v7);
        identifier = [v8 identifier];
        [(IDSAPNSAckTracker *)self addBlockToMMLMessage:v8 guid:identifier];

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        aggregateMessages = [v8 aggregateMessages];
        v29 = [aggregateMessages countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v29)
        {
          v28 = *v36;
          do
          {
            v10 = 0;
            do
            {
              if (*v36 != v28)
              {
                objc_enumerationMutation(aggregateMessages);
              }

              v30 = v10;
              v11 = *(*(&v35 + 1) + 8 * v10);
              v12 = [isCopy objectForKey:v11];
              v13 = objc_alloc_init(NSMutableSet);
              messageID = [v11 messageID];
              [(IDSAPNSAckTracker *)self addBlockToAggregateMessage:v11 guid:messageID];

              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              individualPeerMessages = [v11 individualPeerMessages];
              v16 = [individualPeerMessages countByEnumeratingWithState:&v31 objects:v43 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v32;
                do
                {
                  for (i = 0; i != v17; i = i + 1)
                  {
                    if (*v32 != v18)
                    {
                      objc_enumerationMutation(individualPeerMessages);
                    }

                    v20 = *(*(&v31 + 1) + 8 * i);
                    messageID2 = [v11 messageID];
                    [(IDSAPNSAckTracker *)self addBlockToAggregatableMessage:v20 forURIs:v12 trackingSet:v13 guid:messageID2];
                  }

                  v17 = [individualPeerMessages countByEnumeratingWithState:&v31 objects:v43 count:16];
                }

                while (v17);
              }

              v10 = v30 + 1;
            }

            while ((v30 + 1) != v29);
            v29 = [aggregateMessages countByEnumeratingWithState:&v35 objects:v44 count:16];
          }

          while (v29);
        }

        v7 = v25 + 1;
      }

      while ((v25 + 1) != v24);
      v24 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v24);
  }
}

- (void)trackMessages:(id)messages forURIs:(id)is
{
  messagesCopy = messages;
  isCopy = is;
  v8 = objc_alloc_init(NSMutableSet);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = messagesCopy;
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v20 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v9;
        v10 = *(*(&v27 + 1) + 8 * v9);
        messageID = [v10 messageID];
        [(IDSAPNSAckTracker *)self addBlockToAggregateMessage:v10 guid:messageID];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        individualPeerMessages = [v10 individualPeerMessages];
        v13 = [individualPeerMessages countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(individualPeerMessages);
              }

              v17 = *(*(&v23 + 1) + 8 * i);
              messageID2 = [v10 messageID];
              [(IDSAPNSAckTracker *)self addBlockToAggregatableMessage:v17 forURIs:isCopy trackingSet:v8 guid:messageID2];
            }

            v14 = [individualPeerMessages countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v14);
        }

        v9 = v22 + 1;
      }

      while ((v22 + 1) != v21);
      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }
}

- (void)addBlockToMMLMessage:(id)message guid:(id)guid
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1004DC4CC;
  v8[3] = &unk_100BDEB30;
  guidCopy = guid;
  v5 = guidCopy;
  messageCopy = message;
  v7 = objc_retainBlock(v8);
  [messageCopy setDeliveryAcknowledgementBlock:v7];
}

- (void)addBlockToAggregateMessage:(id)message guid:(id)guid
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1004DC730;
  v12 = &unk_100BDEB58;
  guidCopy = guid;
  selfCopy = self;
  v6 = guidCopy;
  messageCopy = message;
  v8 = objc_retainBlock(&v9);
  [messageCopy setDeliveryAcknowledgementBlock:{v8, v9, v10, v11, v12}];
}

- (void)addBlockToAggregatableMessage:(id)message forURIs:(id)is trackingSet:(id)set guid:(id)guid
{
  isCopy = is;
  setCopy = set;
  guidCopy = guid;
  messageCopy = message;
  v14 = +[NSString stringGUID];
  [setCopy addObject:v14];
  targetPeerID = [messageCopy targetPeerID];
  targetToken = [messageCopy targetToken];
  v17 = [targetPeerID URIByAddingPushToken:targetToken];

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1004DCA9C;
  v27 = &unk_100BDEB80;
  v28 = guidCopy;
  v29 = v17;
  selfCopy = self;
  v31 = setCopy;
  v32 = v14;
  v33 = isCopy;
  v18 = isCopy;
  v19 = v14;
  v20 = setCopy;
  v21 = v17;
  v22 = guidCopy;
  v23 = objc_retainBlock(&v24);
  [messageCopy setAckBlock:{v23, v24, v25, v26, v27}];
}

- (id)cloudTelemetryReporter
{
  v2 = +[IDSDaemon sharedInstance];
  cloudTelemetryMetricReporter = [v2 cloudTelemetryMetricReporter];

  return cloudTelemetryMetricReporter;
}

@end