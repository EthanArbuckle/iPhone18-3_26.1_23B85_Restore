@interface IDSMadridAckTracker
- (void)addBlockToAggregatableMessage:(id)message forURIs:(id)is trackingSet:(id)set guid:(id)guid;
- (void)addBlockToAggregateMessage:(id)message forURIs:(id)is messageQueue:(id)queue guid:(id)guid;
- (void)addBlockToMMLMessage:(id)message guid:(id)guid;
- (void)trackMMLMessages:(id)messages forURIs:(id)is messageQueue:(id)queue;
- (void)trackMessages:(id)messages forURIs:(id)is messageQueue:(id)queue;
@end

@implementation IDSMadridAckTracker

- (void)trackMMLMessages:(id)messages forURIs:(id)is messageQueue:(id)queue
{
  messagesCopy = messages;
  isCopy = is;
  queueCopy = queue;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = messagesCopy;
  v26 = [messagesCopy countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v26)
  {
    v25 = *v43;
    do
    {
      v9 = 0;
      do
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v9;
        v10 = *(*(&v42 + 1) + 8 * v9);
        identifier = [v10 identifier];
        [(IDSMadridAckTracker *)self addBlockToMMLMessage:v10 guid:identifier];

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        aggregateMessages = [v10 aggregateMessages];
        v32 = [aggregateMessages countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v32)
        {
          v31 = *v39;
          do
          {
            v12 = 0;
            do
            {
              if (*v39 != v31)
              {
                objc_enumerationMutation(aggregateMessages);
              }

              v33 = v12;
              v13 = *(*(&v38 + 1) + 8 * v12);
              v14 = [isCopy objectForKey:v13];
              v15 = objc_alloc_init(NSMutableSet);
              messageID = [v13 messageID];
              [(IDSMadridAckTracker *)self addBlockToAggregateMessage:v13 forURIs:v14 messageQueue:queueCopy guid:messageID];

              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              individualPeerMessages = [v13 individualPeerMessages];
              v18 = [individualPeerMessages countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v35;
                do
                {
                  for (i = 0; i != v19; i = i + 1)
                  {
                    if (*v35 != v20)
                    {
                      objc_enumerationMutation(individualPeerMessages);
                    }

                    v22 = *(*(&v34 + 1) + 8 * i);
                    messageID2 = [v13 messageID];
                    [(IDSMadridAckTracker *)self addBlockToAggregatableMessage:v22 forURIs:v14 trackingSet:v15 guid:messageID2];
                  }

                  v19 = [individualPeerMessages countByEnumeratingWithState:&v34 objects:v46 count:16];
                }

                while (v19);
              }

              v12 = v33 + 1;
            }

            while ((v33 + 1) != v32);
            v32 = [aggregateMessages countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v32);
        }

        v9 = v27 + 1;
      }

      while ((v27 + 1) != v26);
      v26 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v26);
  }
}

- (void)trackMessages:(id)messages forURIs:(id)is messageQueue:(id)queue
{
  messagesCopy = messages;
  isCopy = is;
  queueCopy = queue;
  overallSendTimestamp = self->_overallSendTimestamp;
  self->_overallSendTimestamp = 0;

  v11 = objc_alloc_init(NSMutableSet);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = messagesCopy;
  v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v23 = *v32;
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v12;
        v13 = *(*(&v31 + 1) + 8 * v12);
        messageID = [v13 messageID];
        [(IDSMadridAckTracker *)self addBlockToAggregateMessage:v13 forURIs:isCopy messageQueue:queueCopy guid:messageID];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        individualPeerMessages = [v13 individualPeerMessages];
        v16 = [individualPeerMessages countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v28;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v28 != v18)
              {
                objc_enumerationMutation(individualPeerMessages);
              }

              v20 = *(*(&v27 + 1) + 8 * i);
              messageID2 = [v13 messageID];
              [(IDSMadridAckTracker *)self addBlockToAggregatableMessage:v20 forURIs:isCopy trackingSet:v11 guid:messageID2];
            }

            v17 = [individualPeerMessages countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v17);
        }

        v12 = v26 + 1;
      }

      while ((v26 + 1) != v25);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }
}

- (void)addBlockToMMLMessage:(id)message guid:(id)guid
{
  messageCopy = message;
  guidCopy = guid;
  objc_initWeak(&location, messageCopy);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006E0B2C;
  v8[3] = &unk_100BDE878;
  objc_copyWeak(&v10, &location);
  v7 = guidCopy;
  v9 = v7;
  [messageCopy setCompletionBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)addBlockToAggregateMessage:(id)message forURIs:(id)is messageQueue:(id)queue guid:(id)guid
{
  messageCopy = message;
  isCopy = is;
  queueCopy = queue;
  guidCopy = guid;
  wantsResponse = [messageCopy wantsResponse];
  objc_initWeak(&location, messageCopy);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1006E10B4;
  v18[3] = &unk_100BE5AA0;
  objc_copyWeak(&v23, &location);
  v15 = guidCopy;
  v19 = v15;
  v16 = isCopy;
  v20 = v16;
  selfCopy = self;
  v24 = wantsResponse;
  v17 = queueCopy;
  v22 = v17;
  [messageCopy setCompletionBlock:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)addBlockToAggregatableMessage:(id)message forURIs:(id)is trackingSet:(id)set guid:(id)guid
{
  isCopy = is;
  setCopy = set;
  guidCopy = guid;
  messageCopy = message;
  v14 = +[NSString stringGUID];
  [setCopy addObject:v14];
  completionBlock = [messageCopy completionBlock];
  v16 = [completionBlock copy];

  targetPeerID = [messageCopy targetPeerID];
  targetToken = [messageCopy targetToken];
  v19 = [targetPeerID URIByAddingPushToken:targetToken];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1006E1818;
  v27[3] = &unk_100BE5AC8;
  v28 = guidCopy;
  v29 = v19;
  selfCopy = self;
  v31 = setCopy;
  v32 = v14;
  v33 = isCopy;
  v34 = v16;
  v20 = v16;
  v21 = isCopy;
  v22 = v14;
  v23 = setCopy;
  v24 = v19;
  v25 = guidCopy;
  v26 = objc_retainBlock(v27);
  [messageCopy setCompletionBlock:v26];
}

@end