@interface IDSFanoutFactoryComponent
- (id)createFanoutFromMessage:(id)message forService:(id)service fromIdentity:(id)identity withMaxSize:(unint64_t)size chunkNumber:(int64_t)number firstMessage:(id)firstMessage;
- (id)runIndividuallyWithInput:(id)input;
- (void)addMessage:(id)message toFanout:(id)fanout;
- (void)setExpiration:(id)expiration onFanout:(id)fanout withMessage:(id)message;
@end

@implementation IDSFanoutFactoryComponent

- (id)runIndividuallyWithInput:(id)input
{
  inputCopy = input;
  v5 = objc_alloc_init(NSMutableArray);
  v85 = objc_alloc_init(NSMutableDictionary);
  guid = [inputCopy guid];
  prioritizedTokenList = [inputCopy prioritizedTokenList];
  prioritizedTokens = [prioritizedTokenList prioritizedTokens];

  v75 = prioritizedTokens;
  v76 = inputCopy;
  v74 = guid;
  v78 = v5;
  if ([prioritizedTokens count])
  {
    v9 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v110 = guid;
      v111 = 2112;
      v112 = prioritizedTokens;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "GUID %@ Prioritizing tokens %@", buf, 0x16u);
    }

    v10 = objc_alloc_init(NSMutableArray);
    v11 = objc_alloc_init(NSMutableArray);
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    obj = [inputCopy aggregatableMessages];
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
          targetToken = [v16 targetToken];
          rawToken = [targetToken rawToken];
          v19 = [v75 containsObject:rawToken];

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

    aggregatableMessages = [v11 arrayByAddingObjectsFromArray:v10];

    inputCopy = v76;
  }

  else
  {
    aggregatableMessages = [inputCopy aggregatableMessages];
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v73 = aggregatableMessages;
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
        command = [v24 command];
        v26 = command;
        if (command)
        {
          v27 = command;
        }

        else
        {
          messageToSend = [inputCopy messageToSend];
          additionalDictionary = [messageToSend additionalDictionary];
          v27 = [additionalDictionary objectForKey:@"c"];
        }

        v30 = [v85 objectForKey:v27];
        if (([inputCopy forceOnePerFanout] & 1) != 0 || (objc_msgSend(v30, "hasSpaceForAggregatableMessage:", v24) & 1) == 0)
        {
          if (v30)
          {
            v31 = [v30 copy];
            [v78 addObject:v31];
          }

          messageToSend2 = [inputCopy messageToSend];
          service = [inputCopy service];
          fromIdentity = [inputCopy fromIdentity];
          v35 = -[IDSFanoutFactoryComponent createFanoutFromMessage:forService:fromIdentity:withMaxSize:chunkNumber:firstMessage:](self, "createFanoutFromMessage:forService:fromIdentity:withMaxSize:chunkNumber:firstMessage:", messageToSend2, service, fromIdentity, [inputCopy maxSize], v22, v24);

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
          inputCopy = v76;
        }

        expirationDate = [v24 expirationDate];
        messageToSend3 = [inputCopy messageToSend];
        [(IDSFanoutFactoryComponent *)self setExpiration:expirationDate onFanout:v30 withMessage:messageToSend3];

        [(IDSFanoutFactoryComponent *)self addMessage:v24 toFanout:v30];
      }

      obja = [v73 countByEnumeratingWithState:&v101 objects:v118 count:16];
    }

    while (obja);
  }

  allValues = [v85 allValues];
  [v78 addObjectsFromArray:allValues];

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
        individualPeerMessages = [v45 individualPeerMessages];
        v48 = [individualPeerMessages countByEnumeratingWithState:&v93 objects:v116 count:16];
        if (!v48)
        {

          v57 = &IDSRegistrationControlErrorDomain_ptr;
LABEL_56:
          [v45 setWantsCertifiedDelivery:{1, v71}];
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          individualPeerMessages2 = [v45 individualPeerMessages];
          v59 = [individualPeerMessages2 countByEnumeratingWithState:&v89 objects:v115 count:16];
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
                  objc_enumerationMutation(individualPeerMessages2);
                }

                [*(*(&v89 + 1) + 8 * m) setWantsCertifiedDelivery:0];
              }

              v60 = [individualPeerMessages2 countByEnumeratingWithState:&v89 objects:v115 count:16];
            }

            while (v60);
          }

          goto LABEL_64;
        }

        v49 = v48;
        v81 = v45;
        objb = k;
        v50 = *v94;
        wantsCertifiedDelivery = 1;
        do
        {
          for (n = 0; n != v49; n = n + 1)
          {
            if (*v94 != v50)
            {
              objc_enumerationMutation(individualPeerMessages);
            }

            v53 = *(*(&v93 + 1) + 8 * n);
            targetPeerID = [v53 targetPeerID];
            targetToken2 = [v53 targetToken];
            v56 = [targetPeerID URIByAddingPushToken:targetToken2];

            if (v56)
            {
              [v46 addObject:v56];
            }

            if (wantsCertifiedDelivery)
            {
              wantsCertifiedDelivery = [v53 wantsCertifiedDelivery];
            }

            else
            {
              wantsCertifiedDelivery = 0;
            }
          }

          v49 = [individualPeerMessages countByEnumeratingWithState:&v93 objects:v116 count:16];
        }

        while (v49);

        v41 = v74;
        v57 = &IDSRegistrationControlErrorDomain_ptr;
        v45 = v81;
        k = objb;
        if (wantsCertifiedDelivery)
        {
          goto LABEL_56;
        }

LABEL_64:
        delivery = [v57[240] delivery];
        if (os_log_type_enabled(delivery, OS_LOG_TYPE_DEFAULT))
        {
          chunkNumber = [v45 chunkNumber];
          *buf = v71;
          v110 = v41;
          v111 = 2112;
          v112 = chunkNumber;
          v113 = 2048;
          v114 = v45;
          _os_log_impl(&_mh_execute_header, delivery, OS_LOG_TYPE_DEFAULT, "GUID %@ finished constructing fanout %@ %p", buf, 0x20u);
        }

        chunkNumber2 = [v45 chunkNumber];
        v66 = [v46 description];
        v86 = v41;
        v87 = chunkNumber2;
        v88 = v66;
        v67 = v66;
        v68 = chunkNumber2;
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

- (void)addMessage:(id)message toFanout:(id)fanout
{
  messageCopy = message;
  fanoutCopy = fanout;
  [fanoutCopy addAggregatableMessage:messageCopy];
  encryptionType = [messageCopy encryptionType];
  encryptionType2 = [fanoutCopy encryptionType];

  if (encryptionType == encryptionType2)
  {
    [messageCopy setEncryptionType:0];
  }
}

- (id)createFanoutFromMessage:(id)message forService:(id)service fromIdentity:(id)identity withMaxSize:(unint64_t)size chunkNumber:(int64_t)number firstMessage:(id)firstMessage
{
  messageCopy = message;
  firstMessageCopy = firstMessage;
  identityCopy = identity;
  serviceCopy = service;
  v17 = [[IDSPeerAggregateMessage alloc] initWithPeerMessage:messageCopy service:serviceCopy fromIdentity:identityCopy maxSize:size];

  v18 = [NSNumber numberWithInteger:number];
  [(IDSPeerAggregateMessage *)v17 setChunkNumber:v18];

  encryptionType = [firstMessageCopy encryptionType];

  if (encryptionType)
  {
    encryptionType2 = [firstMessageCopy encryptionType];
    [(IDSPeerAggregateMessage *)v17 setEncryptionType:encryptionType2];
  }

  additionalDictionary = [(IDSPeerAggregateMessage *)v17 additionalDictionary];
  v22 = [additionalDictionary mutableCopy];
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

  messageBody = [messageCopy messageBody];
  v27 = [messageBody objectForKey:IDSCommandKey];

  command = [firstMessageCopy command];

  if (command)
  {
    command2 = [firstMessageCopy command];
    [v25 setObject:command2 forKey:@"c"];

    if (v27)
    {
      additionalDictionary2 = [messageCopy additionalDictionary];
      v31 = [additionalDictionary2 objectForKey:@"c"];
      [v25 setObject:v31 forKey:@"oC"];
    }
  }

  if (([v27 isEqualToNumber:&off_100C3BA40] & 1) == 0)
  {
    deliveryMinimumTimeDelay = [messageCopy deliveryMinimumTimeDelay];
    if (deliveryMinimumTimeDelay)
    {
    }

    else
    {
      deliveryMinimumTime = [messageCopy deliveryMinimumTime];

      if (!deliveryMinimumTime)
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
  sendMetric = [(IDSPeerAggregateMessage *)v17 sendMetric];
  v36 = [sendMetric copy];

  [(IDSPeerAggregateMessage *)v17 setSendMetric:v36];

  return v17;
}

- (void)setExpiration:(id)expiration onFanout:(id)fanout withMessage:(id)message
{
  expirationCopy = expiration;
  fanoutCopy = fanout;
  messageCopy = message;
  if (expirationCopy)
  {
    [expirationCopy timeIntervalSinceNow];
    if (v9 > 0.0)
    {
      [expirationCopy timeIntervalSinceNow];
      v11 = v10;
      [messageCopy timeout];
      if (v11 < v12)
      {
        [fanoutCopy timeout];
        if (v13 == 0.0 || ([fanoutCopy timeout], v11 < v14))
        {
          [fanoutCopy setTimeout:v11];
        }
      }
    }
  }
}

@end