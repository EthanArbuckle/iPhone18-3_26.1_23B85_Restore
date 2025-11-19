@interface IDSMadridAckTracker
- (void)addBlockToAggregatableMessage:(id)a3 forURIs:(id)a4 trackingSet:(id)a5 guid:(id)a6;
- (void)addBlockToAggregateMessage:(id)a3 forURIs:(id)a4 messageQueue:(id)a5 guid:(id)a6;
- (void)addBlockToMMLMessage:(id)a3 guid:(id)a4;
- (void)trackMMLMessages:(id)a3 forURIs:(id)a4 messageQueue:(id)a5;
- (void)trackMessages:(id)a3 forURIs:(id)a4 messageQueue:(id)a5;
@end

@implementation IDSMadridAckTracker

- (void)trackMMLMessages:(id)a3 forURIs:(id)a4 messageQueue:(id)a5
{
  v8 = a3;
  v30 = a4;
  v29 = a5;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v8;
  v26 = [v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
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
        v11 = [v10 identifier];
        [(IDSMadridAckTracker *)self addBlockToMMLMessage:v10 guid:v11];

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v28 = [v10 aggregateMessages];
        v32 = [v28 countByEnumeratingWithState:&v38 objects:v47 count:16];
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
                objc_enumerationMutation(v28);
              }

              v33 = v12;
              v13 = *(*(&v38 + 1) + 8 * v12);
              v14 = [v30 objectForKey:v13];
              v15 = objc_alloc_init(NSMutableSet);
              v16 = [v13 messageID];
              [(IDSMadridAckTracker *)self addBlockToAggregateMessage:v13 forURIs:v14 messageQueue:v29 guid:v16];

              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              v17 = [v13 individualPeerMessages];
              v18 = [v17 countByEnumeratingWithState:&v34 objects:v46 count:16];
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
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v34 + 1) + 8 * i);
                    v23 = [v13 messageID];
                    [(IDSMadridAckTracker *)self addBlockToAggregatableMessage:v22 forURIs:v14 trackingSet:v15 guid:v23];
                  }

                  v19 = [v17 countByEnumeratingWithState:&v34 objects:v46 count:16];
                }

                while (v19);
              }

              v12 = v33 + 1;
            }

            while ((v33 + 1) != v32);
            v32 = [v28 countByEnumeratingWithState:&v38 objects:v47 count:16];
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

- (void)trackMessages:(id)a3 forURIs:(id)a4 messageQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v24 = a5;
  overallSendTimestamp = self->_overallSendTimestamp;
  self->_overallSendTimestamp = 0;

  v11 = objc_alloc_init(NSMutableSet);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v8;
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
        v14 = [v13 messageID];
        [(IDSMadridAckTracker *)self addBlockToAggregateMessage:v13 forURIs:v9 messageQueue:v24 guid:v14];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v15 = [v13 individualPeerMessages];
        v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v27 + 1) + 8 * i);
              v21 = [v13 messageID];
              [(IDSMadridAckTracker *)self addBlockToAggregatableMessage:v20 forURIs:v9 trackingSet:v11 guid:v21];
            }

            v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
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

- (void)addBlockToMMLMessage:(id)a3 guid:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_initWeak(&location, v5);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006E0B2C;
  v8[3] = &unk_100BDE878;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [v5 setCompletionBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)addBlockToAggregateMessage:(id)a3 forURIs:(id)a4 messageQueue:(id)a5 guid:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 wantsResponse];
  objc_initWeak(&location, v10);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1006E10B4;
  v18[3] = &unk_100BE5AA0;
  objc_copyWeak(&v23, &location);
  v15 = v13;
  v19 = v15;
  v16 = v11;
  v20 = v16;
  v21 = self;
  v24 = v14;
  v17 = v12;
  v22 = v17;
  [v10 setCompletionBlock:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)addBlockToAggregatableMessage:(id)a3 forURIs:(id)a4 trackingSet:(id)a5 guid:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = +[NSString stringGUID];
  [v11 addObject:v14];
  v15 = [v13 completionBlock];
  v16 = [v15 copy];

  v17 = [v13 targetPeerID];
  v18 = [v13 targetToken];
  v19 = [v17 URIByAddingPushToken:v18];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1006E1818;
  v27[3] = &unk_100BE5AC8;
  v28 = v12;
  v29 = v19;
  v30 = self;
  v31 = v11;
  v32 = v14;
  v33 = v10;
  v34 = v16;
  v20 = v16;
  v21 = v10;
  v22 = v14;
  v23 = v11;
  v24 = v19;
  v25 = v12;
  v26 = objc_retainBlock(v27);
  [v13 setCompletionBlock:v26];
}

@end