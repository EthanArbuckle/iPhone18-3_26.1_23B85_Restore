@interface IDSAPNSAckTracker
- (id)cloudTelemetryReporter;
- (void)addBlockToAggregatableMessage:(id)a3 forURIs:(id)a4 trackingSet:(id)a5 guid:(id)a6;
- (void)addBlockToAggregateMessage:(id)a3 guid:(id)a4;
- (void)addBlockToMMLMessage:(id)a3 guid:(id)a4;
- (void)trackMMLMessages:(id)a3 forURIs:(id)a4;
- (void)trackMessages:(id)a3 forURIs:(id)a4;
@end

@implementation IDSAPNSAckTracker

- (void)trackMMLMessages:(id)a3 forURIs:(id)a4
{
  v6 = a3;
  v27 = a4;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v6;
  v24 = [v6 countByEnumeratingWithState:&v39 objects:v45 count:16];
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
        v9 = [v8 identifier];
        [(IDSAPNSAckTracker *)self addBlockToMMLMessage:v8 guid:v9];

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v26 = [v8 aggregateMessages];
        v29 = [v26 countByEnumeratingWithState:&v35 objects:v44 count:16];
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
                objc_enumerationMutation(v26);
              }

              v30 = v10;
              v11 = *(*(&v35 + 1) + 8 * v10);
              v12 = [v27 objectForKey:v11];
              v13 = objc_alloc_init(NSMutableSet);
              v14 = [v11 messageID];
              [(IDSAPNSAckTracker *)self addBlockToAggregateMessage:v11 guid:v14];

              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v15 = [v11 individualPeerMessages];
              v16 = [v15 countByEnumeratingWithState:&v31 objects:v43 count:16];
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
                      objc_enumerationMutation(v15);
                    }

                    v20 = *(*(&v31 + 1) + 8 * i);
                    v21 = [v11 messageID];
                    [(IDSAPNSAckTracker *)self addBlockToAggregatableMessage:v20 forURIs:v12 trackingSet:v13 guid:v21];
                  }

                  v17 = [v15 countByEnumeratingWithState:&v31 objects:v43 count:16];
                }

                while (v17);
              }

              v10 = v30 + 1;
            }

            while ((v30 + 1) != v29);
            v29 = [v26 countByEnumeratingWithState:&v35 objects:v44 count:16];
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

- (void)trackMessages:(id)a3 forURIs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableSet);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
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
        v11 = [v10 messageID];
        [(IDSAPNSAckTracker *)self addBlockToAggregateMessage:v10 guid:v11];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v12 = [v10 individualPeerMessages];
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v23 + 1) + 8 * i);
              v18 = [v10 messageID];
              [(IDSAPNSAckTracker *)self addBlockToAggregatableMessage:v17 forURIs:v7 trackingSet:v8 guid:v18];
            }

            v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

- (void)addBlockToMMLMessage:(id)a3 guid:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1004DC4CC;
  v8[3] = &unk_100BDEB30;
  v9 = a4;
  v5 = v9;
  v6 = a3;
  v7 = objc_retainBlock(v8);
  [v6 setDeliveryAcknowledgementBlock:v7];
}

- (void)addBlockToAggregateMessage:(id)a3 guid:(id)a4
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1004DC730;
  v12 = &unk_100BDEB58;
  v13 = a4;
  v14 = self;
  v6 = v13;
  v7 = a3;
  v8 = objc_retainBlock(&v9);
  [v7 setDeliveryAcknowledgementBlock:{v8, v9, v10, v11, v12}];
}

- (void)addBlockToAggregatableMessage:(id)a3 forURIs:(id)a4 trackingSet:(id)a5 guid:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = +[NSString stringGUID];
  [v11 addObject:v14];
  v15 = [v13 targetPeerID];
  v16 = [v13 targetToken];
  v17 = [v15 URIByAddingPushToken:v16];

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1004DCA9C;
  v27 = &unk_100BDEB80;
  v28 = v12;
  v29 = v17;
  v30 = self;
  v31 = v11;
  v32 = v14;
  v33 = v10;
  v18 = v10;
  v19 = v14;
  v20 = v11;
  v21 = v17;
  v22 = v12;
  v23 = objc_retainBlock(&v24);
  [v13 setAckBlock:{v23, v24, v25, v26, v27}];
}

- (id)cloudTelemetryReporter
{
  v2 = +[IDSDaemon sharedInstance];
  v3 = [v2 cloudTelemetryMetricReporter];

  return v3;
}

@end