@interface IDSFanoutFactoryComponent
- (id)createFanoutFromMessage:(id)a3 forService:(id)a4 fromIdentity:(id)a5 withMaxSize:(unint64_t)a6 chunkNumber:(int64_t)a7 firstMessage:(id)a8;
- (id)runIndividuallyWithInput:(id)a3;
- (void)addMessage:(id)a3 toFanout:(id)a4;
- (void)setExpiration:(id)a3 onFanout:(id)a4 withMessage:(id)a5;
@end

@implementation IDSFanoutFactoryComponent

- (id)runIndividuallyWithInput:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v85 = objc_alloc_init(NSMutableDictionary);
  v6 = [v4 guid];
  v7 = [v4 prioritizedTokenList];
  v8 = [v7 prioritizedTokens];

  v75 = v8;
  v76 = v4;
  v74 = v6;
  v78 = v5;
  if ([v8 count])
  {
    v9 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v110 = v6;
      v111 = 2112;
      v112 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "GUID %@ Prioritizing tokens %@", buf, 0x16u);
    }

    v10 = objc_alloc_init(NSMutableArray);
    v11 = objc_alloc_init(NSMutableArray);
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    obj = [v4 aggregatableMessages];
    v12 = [obj countByEnumeratingWithState:&v105 objects:v119 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v106;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v106 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v105 + 1) + 8 * i);
          v17 = [v16 targetToken];
          v18 = [v17 rawToken];
          v19 = [v75 containsObject:v18];

          if (v19)
          {
            v20 = v11;
          }

          else
          {
            v20 = v10;
          }

          [v20 addObject:v16];
        }

        v13 = [obj countByEnumeratingWithState:&v105 objects:v119 count:16];
      }

      while (v13);
    }

    v21 = [v11 arrayByAddingObjectsFromArray:v10];

    v4 = v76;
  }

  else
  {
    v21 = [v4 aggregatableMessages];
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v73 = v21;
  obja = [v73 countByEnumeratingWithState:&v101 objects:v118 count:16];
  if (obja)
  {
    v80 = *v102;
    v22 = 1;
    do
    {
      for (j = 0; j != obja; j = j + 1)
      {
        if (*v102 != v80)
        {
          objc_enumerationMutation(v73);
        }

        v24 = *(*(&v101 + 1) + 8 * j);
        v25 = [v24 command];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v28 = [v4 messageToSend];
          v29 = [v28 additionalDictionary];
          v27 = [v29 objectForKey:@"c"];
        }

        v30 = [v85 objectForKey:v27];
        if (([v4 forceOnePerFanout] & 1) != 0 || (objc_msgSend(v30, "hasSpaceForAggregatableMessage:", v24) & 1) == 0)
        {
          if (v30)
          {
            v31 = [v30 copy];
            [v78 addObject:v31];
          }

          v32 = [v4 messageToSend];
          v33 = [v4 service];
          v34 = [v4 fromIdentity];
          v35 = -[IDSFanoutFactoryComponent createFanoutFromMessage:forService:fromIdentity:withMaxSize:chunkNumber:firstMessage:](self, "createFanoutFromMessage:forService:fromIdentity:withMaxSize:chunkNumber:firstMessage:", v32, v33, v34, [v4 maxSize], v22, v24);

          ++v22;
          if (v27)
          {
            v36 = v27;
          }

          else
          {
            v36 = &off_100C3BA28;
          }

          [v85 setObject:v35 forKey:v36];
          v30 = v35;
          v4 = v76;
        }

        v37 = [v24 expirationDate];
        v38 = [v4 messageToSend];
        [(IDSFanoutFactoryComponent *)self setExpiration:v37 onFanout:v30 withMessage:v38];

        [(IDSFanoutFactoryComponent *)self addMessage:v24 toFanout:v30];
      }

      obja = [v73 countByEnumeratingWithState:&v101 objects:v118 count:16];
    }

    while (obja);
  }

  v39 = [v85 allValues];
  [v78 addObjectsFromArray:v39];

  v40 = +[IDSFoundationLog delivery];
  v41 = v74;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [v78 count];
    *buf = 138412546;
    v110 = v74;
    v111 = 2048;
    v112 = v42;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "GUID %@ Constructed %lu fanouts", buf, 0x16u);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v72 = v78;
  v79 = [v72 countByEnumeratingWithState:&v97 objects:v117 count:16];
  if (v79)
  {
    v77 = *v98;
    *&v43 = 138412802;
    v71 = v43;
    do
    {
      for (k = 0; k != v79; k = k + 1)
      {
        if (*v98 != v77)
        {
          objc_enumerationMutation(v72);
        }

        v45 = *(*(&v97 + 1) + 8 * k);
        v46 = objc_alloc_init(NSMutableArray);
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v47 = [v45 individualPeerMessages];
        v48 = [v47 countByEnumeratingWithState:&v93 objects:v116 count:16];
        if (!v48)
        {

          v57 = &IDSRegistrationControlErrorDomain_ptr;
LABEL_56:
          [v45 setWantsCertifiedDelivery:{1, v71}];
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v58 = [v45 individualPeerMessages];
          v59 = [v58 countByEnumeratingWithState:&v89 objects:v115 count:16];
          if (v59)
          {
            v60 = v59;
            v61 = *v90;
            do
            {
              for (m = 0; m != v60; m = m + 1)
              {
                if (*v90 != v61)
                {
                  objc_enumerationMutation(v58);
                }

                [*(*(&v89 + 1) + 8 * m) setWantsCertifiedDelivery:0];
              }

              v60 = [v58 countByEnumeratingWithState:&v89 objects:v115 count:16];
            }

            while (v60);
          }

          goto LABEL_64;
        }

        v49 = v48;
        v81 = v45;
        objb = k;
        v50 = *v94;
        v51 = 1;
        do
        {
          for (n = 0; n != v49; n = n + 1)
          {
            if (*v94 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v53 = *(*(&v93 + 1) + 8 * n);
            v54 = [v53 targetPeerID];
            v55 = [v53 targetToken];
            v56 = [v54 URIByAddingPushToken:v55];

            if (v56)
            {
              [v46 addObject:v56];
            }

            if (v51)
            {
              v51 = [v53 wantsCertifiedDelivery];
            }

            else
            {
              v51 = 0;
            }
          }

          v49 = [v47 countByEnumeratingWithState:&v93 objects:v116 count:16];
        }

        while (v49);

        v41 = v74;
        v57 = &IDSRegistrationControlErrorDomain_ptr;
        v45 = v81;
        k = objb;
        if (v51)
        {
          goto LABEL_56;
        }

LABEL_64:
        v63 = [v57[240] delivery];
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = [v45 chunkNumber];
          *buf = v71;
          v110 = v41;
          v111 = 2112;
          v112 = v64;
          v113 = 2048;
          v114 = v45;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "GUID %@ finished constructing fanout %@ %p", buf, 0x20u);
        }

        v65 = [v45 chunkNumber];
        v66 = [v46 description];
        v86 = v41;
        v87 = v65;
        v88 = v66;
        v67 = v66;
        v68 = v65;
        cut_dispatch_log_queue();
      }

      v79 = [v72 countByEnumeratingWithState:&v97 objects:v117 count:16];
    }

    while (v79);
  }

  [v76 setAggregateMessages:v72];
  v69 = [CUTUnsafePromise fulfilledPromiseWithValue:v76];

  return v69;
}

- (void)addMessage:(id)a3 toFanout:(id)a4
{
  v8 = a3;
  v5 = a4;
  [v5 addAggregatableMessage:v8];
  v6 = [v8 encryptionType];
  v7 = [v5 encryptionType];

  if (v6 == v7)
  {
    [v8 setEncryptionType:0];
  }
}

- (id)createFanoutFromMessage:(id)a3 forService:(id)a4 fromIdentity:(id)a5 withMaxSize:(unint64_t)a6 chunkNumber:(int64_t)a7 firstMessage:(id)a8
{
  v13 = a3;
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = [[IDSPeerAggregateMessage alloc] initWithPeerMessage:v13 service:v16 fromIdentity:v15 maxSize:a6];

  v18 = [NSNumber numberWithInteger:a7];
  [(IDSPeerAggregateMessage *)v17 setChunkNumber:v18];

  v19 = [v14 encryptionType];

  if (v19)
  {
    v20 = [v14 encryptionType];
    [(IDSPeerAggregateMessage *)v17 setEncryptionType:v20];
  }

  v21 = [(IDSPeerAggregateMessage *)v17 additionalDictionary];
  v22 = [v21 mutableCopy];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = objc_alloc_init(NSMutableDictionary);
  }

  v25 = v24;

  v26 = [v13 messageBody];
  v27 = [v26 objectForKey:IDSCommandKey];

  v28 = [v14 command];

  if (v28)
  {
    v29 = [v14 command];
    [v25 setObject:v29 forKey:@"c"];

    if (v27)
    {
      v30 = [v13 additionalDictionary];
      v31 = [v30 objectForKey:@"c"];
      [v25 setObject:v31 forKey:@"oC"];
    }
  }

  if (([v27 isEqualToNumber:&off_100C3BA40] & 1) == 0)
  {
    v32 = [v13 deliveryMinimumTimeDelay];
    if (v32)
    {
    }

    else
    {
      v33 = [v13 deliveryMinimumTime];

      if (!v33)
      {
        goto LABEL_15;
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    v34 = _IDSScheduledSendVersionNumber();
    [v25 setObject:v34 forKey:@"sv"];
  }

LABEL_15:
  [(IDSPeerAggregateMessage *)v17 setAdditionalDictionary:v25];
  v35 = [(IDSPeerAggregateMessage *)v17 sendMetric];
  v36 = [v35 copy];

  [(IDSPeerAggregateMessage *)v17 setSendMetric:v36];

  return v17;
}

- (void)setExpiration:(id)a3 onFanout:(id)a4 withMessage:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = a5;
  if (v15)
  {
    [v15 timeIntervalSinceNow];
    if (v9 > 0.0)
    {
      [v15 timeIntervalSinceNow];
      v11 = v10;
      [v8 timeout];
      if (v11 < v12)
      {
        [v7 timeout];
        if (v13 == 0.0 || ([v7 timeout], v11 < v14))
        {
          [v7 setTimeout:v11];
        }
      }
    }
  }
}

@end