@interface IDSIMLFanoutFactoryComponent
- (id)createFanoutFromMessage:(id)a3 forService:(id)a4 fromIdentity:(id)a5 withMaxSize:(unint64_t)a6 chunkNumber:(int64_t)a7 firstMessage:(id)a8;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IDSIMLFanoutFactoryComponent

- (id)runIndividuallyWithInput:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v82 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 guid];
  v6 = [v3 prioritizedTokenList];
  v7 = [v6 prioritizedTokens];

  v74 = v7;
  v83 = v3;
  v73 = v5;
  v76 = v4;
  if ([v7 count])
  {
    v8 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v111 = v5;
      v112 = 2112;
      v113 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "GUID %@ Prioritizing tokens %@", buf, 0x16u);
    }

    v9 = objc_alloc_init(NSMutableArray);
    v10 = objc_alloc_init(NSMutableArray);
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v11 = [v3 aggregatableMessages];
    v12 = [v11 countByEnumeratingWithState:&v101 objects:v109 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v101 + 1) + 8 * i);
          v17 = [v16 targetToken];
          v18 = [v17 rawToken];
          v19 = [v74 containsObject:v18];

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

        v13 = [v11 countByEnumeratingWithState:&v101 objects:v109 count:16];
      }

      while (v13);
    }

    v21 = [v10 arrayByAddingObjectsFromArray:v9];

    v3 = v83;
  }

  else
  {
    v21 = [v3 aggregatableMessages];
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v21;
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
        v27 = [v26 command];
        v28 = v27;
        if (v27)
        {
          v29 = v27;
        }

        else
        {
          v30 = [v3 messageToSend];
          v31 = [v30 additionalDictionary];
          v29 = [v31 objectForKey:@"c"];

          v3 = v83;
        }

        v32 = [v82 objectForKey:v29];
        if (([v3 forceOnePerFanout] & 1) != 0 || (objc_msgSend(v32, "hasSpaceForAggregatableMessage:", v26) & 1) == 0)
        {
          if (v32)
          {
            v33 = [v32 copy];
            [v76 addObject:v33];
          }

          v34 = [v3 messageToSend];
          v35 = [v3 service];
          v36 = [v83 fromIdentity];
          v37 = -[IDSIMLFanoutFactoryComponent createFanoutFromMessage:forService:fromIdentity:withMaxSize:chunkNumber:firstMessage:](self, "createFanoutFromMessage:forService:fromIdentity:withMaxSize:chunkNumber:firstMessage:", v34, v35, v36, [v83 maxSize], v24, v26);

          v3 = v83;
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

        v39 = [v3 encryptedTopLevelPayload];
        [v32 setGroupPayload:v39];

        [v32 addAggregatableMessage:v26];
      }

      v23 = [obj countByEnumeratingWithState:&v97 objects:v108 count:16];
    }

    while (v23);
  }

  v40 = [v82 allValues];
  [v76 addObjectsFromArray:v40];

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
        v47 = [v45 individualPeerMessages];
        v48 = [v47 countByEnumeratingWithState:&v89 objects:v106 count:16];
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
          v59 = [v45 individualPeerMessages];
          v60 = [v59 countByEnumeratingWithState:&v85 objects:v105 count:16];
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
                  objc_enumerationMutation(v59);
                }

                [*(*(&v85 + 1) + 8 * m) setWantsCertifiedDelivery:0];
              }

              v61 = [v59 countByEnumeratingWithState:&v85 objects:v105 count:16];
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
        v51 = 1;
        do
        {
          for (n = 0; n != v49; n = n + 1)
          {
            if (*v90 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v53 = *(*(&v89 + 1) + 8 * n);
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

          v49 = [v47 countByEnumeratingWithState:&v89 objects:v106 count:16];
        }

        while (v49);

        v42 = v73;
        v57 = &IDSRegistrationControlErrorDomain_ptr;
        v45 = v79;
        k = v81;
        if (v51)
        {
          goto LABEL_56;
        }

LABEL_64:
        v64 = [v57[240] delivery];
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = [v45 chunkNumber];
          *buf = 138412546;
          v111 = v42;
          v112 = 2112;
          v113 = v65;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "GUID %@ finished constructing fanout %@", buf, 0x16u);
        }

        v66 = [v45 chunkNumber];
        v67 = [NSString stringWithFormat:@"GUID %@ Fanout %@ (%@) contains:\n%@", v42, v66, v45, v46];

        v84 = v67;
        v68 = v67;
        cut_dispatch_log_queue();

        v3 = v83;
      }

      v77 = [v71 countByEnumeratingWithState:&v93 objects:v107 count:16];
    }

    while (v77);
  }

  [v3 setAggregateMessages:v71];
  v69 = [CUTUnsafePromise fulfilledPromiseWithValue:v3];

  return v69;
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

  v19 = [(IDSPeerAggregateMessage *)v17 additionalDictionary];
  v20 = [v19 mutableCopy];
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

  v24 = [v13 messageBody];
  v25 = [v24 objectForKey:IDSCommandKey];

  v26 = [v14 command];

  if (v26)
  {
    v27 = [v14 command];
    [v23 setObject:v27 forKey:@"c"];

    if (v25)
    {
      v28 = [v13 additionalDictionary];
      v29 = [v28 objectForKey:@"c"];
      [v23 setObject:v29 forKey:@"oC"];
    }
  }

  [(IDSPeerAggregateMessage *)v17 setAdditionalDictionary:v23];

  return v17;
}

@end