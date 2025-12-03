@interface IDSIMLFanoutFactoryComponent
- (id)createFanoutFromMessage:(id)message forService:(id)service fromIdentity:(id)identity withMaxSize:(unint64_t)size chunkNumber:(int64_t)number firstMessage:(id)firstMessage;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IDSIMLFanoutFactoryComponent

- (id)runIndividuallyWithInput:(id)input
{
  inputCopy = input;
  v4 = objc_alloc_init(NSMutableArray);
  v82 = objc_alloc_init(NSMutableDictionary);
  guid = [inputCopy guid];
  prioritizedTokenList = [inputCopy prioritizedTokenList];
  prioritizedTokens = [prioritizedTokenList prioritizedTokens];

  v74 = prioritizedTokens;
  v83 = inputCopy;
  v73 = guid;
  v76 = v4;
  if ([prioritizedTokens count])
  {
    v8 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v111 = guid;
      v112 = 2112;
      v113 = prioritizedTokens;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "GUID %@ Prioritizing tokens %@", buf, 0x16u);
    }

    v9 = objc_alloc_init(NSMutableArray);
    v10 = objc_alloc_init(NSMutableArray);
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    aggregatableMessages = [inputCopy aggregatableMessages];
    v12 = [aggregatableMessages countByEnumeratingWithState:&v101 objects:v109 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v102;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v102 != v14)
          {
            objc_enumerationMutation(aggregatableMessages);
          }

          v16 = *(*(&v101 + 1) + 8 * i);
          targetToken = [v16 targetToken];
          rawToken = [targetToken rawToken];
          v19 = [v74 containsObject:rawToken];

          if (v19)
          {
            v20 = v10;
          }

          else
          {
            v20 = v9;
          }

          [v20 addObject:v16];
        }

        v13 = [aggregatableMessages countByEnumeratingWithState:&v101 objects:v109 count:16];
      }

      while (v13);
    }

    aggregatableMessages2 = [v10 arrayByAddingObjectsFromArray:v9];

    inputCopy = v83;
  }

  else
  {
    aggregatableMessages2 = [inputCopy aggregatableMessages];
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = aggregatableMessages2;
  v22 = [obj countByEnumeratingWithState:&v97 objects:v108 count:16];
  if (v22)
  {
    v23 = v22;
    v80 = *v98;
    v24 = 1;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v98 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v97 + 1) + 8 * j);
        command = [v26 command];
        v28 = command;
        if (command)
        {
          v29 = command;
        }

        else
        {
          messageToSend = [inputCopy messageToSend];
          additionalDictionary = [messageToSend additionalDictionary];
          v29 = [additionalDictionary objectForKey:@"c"];

          inputCopy = v83;
        }

        v32 = [v82 objectForKey:v29];
        if (([inputCopy forceOnePerFanout] & 1) != 0 || (objc_msgSend(v32, "hasSpaceForAggregatableMessage:", v26) & 1) == 0)
        {
          if (v32)
          {
            v33 = [v32 copy];
            [v76 addObject:v33];
          }

          messageToSend2 = [inputCopy messageToSend];
          service = [inputCopy service];
          fromIdentity = [v83 fromIdentity];
          v37 = -[IDSIMLFanoutFactoryComponent createFanoutFromMessage:forService:fromIdentity:withMaxSize:chunkNumber:firstMessage:](self, "createFanoutFromMessage:forService:fromIdentity:withMaxSize:chunkNumber:firstMessage:", messageToSend2, service, fromIdentity, [v83 maxSize], v24, v26);

          inputCopy = v83;
          ++v24;
          if (v29)
          {
            v38 = v29;
          }

          else
          {
            v38 = &off_100C3C070;
          }

          [v82 setObject:v37 forKey:v38];
          v32 = v37;
        }

        encryptedTopLevelPayload = [inputCopy encryptedTopLevelPayload];
        [v32 setGroupPayload:encryptedTopLevelPayload];

        [v32 addAggregatableMessage:v26];
      }

      v23 = [obj countByEnumeratingWithState:&v97 objects:v108 count:16];
    }

    while (v23);
  }

  allValues = [v82 allValues];
  [v76 addObjectsFromArray:allValues];

  v41 = +[IDSFoundationLog delivery];
  v42 = v73;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [v76 count];
    *buf = 138412546;
    v111 = v73;
    v112 = 2048;
    v113 = v43;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "GUID %@ Constructed %lu fanouts", buf, 0x16u);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v71 = v76;
  v77 = [v71 countByEnumeratingWithState:&v93 objects:v107 count:16];
  if (v77)
  {
    v75 = *v94;
    do
    {
      for (k = 0; k != v77; k = k + 1)
      {
        if (*v94 != v75)
        {
          objc_enumerationMutation(v71);
        }

        v45 = *(*(&v93 + 1) + 8 * k);
        v46 = objc_alloc_init(NSMutableArray);
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        individualPeerMessages = [v45 individualPeerMessages];
        v48 = [individualPeerMessages countByEnumeratingWithState:&v89 objects:v106 count:16];
        if (!v48)
        {

          v57 = &IDSRegistrationControlErrorDomain_ptr;
LABEL_56:
          [v45 setWantsCertifiedDelivery:1];
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v58 = v45;
          individualPeerMessages2 = [v45 individualPeerMessages];
          v60 = [individualPeerMessages2 countByEnumeratingWithState:&v85 objects:v105 count:16];
          if (v60)
          {
            v61 = v60;
            v62 = *v86;
            do
            {
              for (m = 0; m != v61; m = m + 1)
              {
                if (*v86 != v62)
                {
                  objc_enumerationMutation(individualPeerMessages2);
                }

                [*(*(&v85 + 1) + 8 * m) setWantsCertifiedDelivery:0];
              }

              v61 = [individualPeerMessages2 countByEnumeratingWithState:&v85 objects:v105 count:16];
            }

            while (v61);
          }

          v45 = v58;
          goto LABEL_64;
        }

        v49 = v48;
        v79 = v45;
        v81 = k;
        v50 = *v90;
        wantsCertifiedDelivery = 1;
        do
        {
          for (n = 0; n != v49; n = n + 1)
          {
            if (*v90 != v50)
            {
              objc_enumerationMutation(individualPeerMessages);
            }

            v53 = *(*(&v89 + 1) + 8 * n);
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

          v49 = [individualPeerMessages countByEnumeratingWithState:&v89 objects:v106 count:16];
        }

        while (v49);

        v42 = v73;
        v57 = &IDSRegistrationControlErrorDomain_ptr;
        v45 = v79;
        k = v81;
        if (wantsCertifiedDelivery)
        {
          goto LABEL_56;
        }

LABEL_64:
        delivery = [v57[240] delivery];
        if (os_log_type_enabled(delivery, OS_LOG_TYPE_DEFAULT))
        {
          chunkNumber = [v45 chunkNumber];
          *buf = 138412546;
          v111 = v42;
          v112 = 2112;
          v113 = chunkNumber;
          _os_log_impl(&_mh_execute_header, delivery, OS_LOG_TYPE_DEFAULT, "GUID %@ finished constructing fanout %@", buf, 0x16u);
        }

        chunkNumber2 = [v45 chunkNumber];
        v67 = [NSString stringWithFormat:@"GUID %@ Fanout %@ (%@) contains:\n%@", v42, chunkNumber2, v45, v46];

        v84 = v67;
        v68 = v67;
        cut_dispatch_log_queue();

        inputCopy = v83;
      }

      v77 = [v71 countByEnumeratingWithState:&v93 objects:v107 count:16];
    }

    while (v77);
  }

  [inputCopy setAggregateMessages:v71];
  v69 = [CUTUnsafePromise fulfilledPromiseWithValue:inputCopy];

  return v69;
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

  additionalDictionary = [(IDSPeerAggregateMessage *)v17 additionalDictionary];
  v20 = [additionalDictionary mutableCopy];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = objc_alloc_init(NSMutableDictionary);
  }

  v23 = v22;

  messageBody = [messageCopy messageBody];
  v25 = [messageBody objectForKey:IDSCommandKey];

  command = [firstMessageCopy command];

  if (command)
  {
    command2 = [firstMessageCopy command];
    [v23 setObject:command2 forKey:@"c"];

    if (v25)
    {
      additionalDictionary2 = [messageCopy additionalDictionary];
      v29 = [additionalDictionary2 objectForKey:@"c"];
      [v23 setObject:v29 forKey:@"oC"];
    }
  }

  [(IDSPeerAggregateMessage *)v17 setAdditionalDictionary:v23];

  return v17;
}

@end