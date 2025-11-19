@interface IDSIMLMessageFactoryComponent
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IDSIMLMessageFactoryComponent

- (id)runIndividuallyWithInput:(id)a3
{
  v3 = a3;
  v33 = [v3 guid];
  v38 = objc_alloc_init(NSMutableArray);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [v3 endpoints];
  v4 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v37 = *v43;
    v35 = IDSRegistrationPropertySupportsCertifiedDeliveryV1;
    v34 = IDSSendErrorDomain;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * i);
        v8 = [v7 URI];
        v9 = [v3 fromID];
        v10 = [v8 prefixedURI];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = [v3 wantsDeliveryStatus];
        }

        if ([v3 wantsCertifiedDelivery])
        {
          v13 = [v7 capabilities];
          v14 = [v13 valueForCapability:v35] > 0;
        }

        else
        {
          v14 = 0;
        }

        v15 = objc_alloc_init(IDSPeerAggregatableMessage);
        v16 = [v7 pushTokenObject];
        [(IDSPeerAggregatableMessage *)v15 setTargetToken:v16];

        v17 = [v7 sessionToken];
        [(IDSPeerAggregatableMessage *)v15 setTargetSessionToken:v17];

        [(IDSPeerAggregatableMessage *)v15 setTargetPeerID:v8];
        v18 = [NSNumber numberWithBool:v12];
        [(IDSPeerAggregatableMessage *)v15 setWantsDeliveryStatus:v18];

        [(IDSPeerAggregatableMessage *)v15 setWantsCertifiedDelivery:v14];
        v19 = [v7 anonymizedSenderID];
        [(IDSPeerAggregatableMessage *)v15 setAnonymizedSenderID:v19];

        v20 = [v7 expireDate];
        [(IDSPeerAggregatableMessage *)v15 setExpirationDate:v20];

        v21 = [v3 fromShortHandle];
        v22 = +[IDSPeerIDManager sharedInstance];
        v23 = [v3 fromID];
        v24 = [IDSURI URIWithPrefixedURI:v23];
        v25 = [v22 shortHandleForURI:v8 fromURI:v24];

        if (v21 && v25)
        {
          [(IDSPeerAggregatableMessage *)v15 setSenderShortHandle:v21];
          [(IDSPeerAggregatableMessage *)v15 setTargetShortHandle:v25];
          v26 = [CUTUnsafePromise fulfilledPromiseWithValue:v15];
          [v38 addObject:v26];
        }

        else
        {
          v26 = [[NSError alloc] initWithDomain:v34 code:40 userInfo:0];
          v27 = [CUTUnsafePromise failedPromiseWithError:v26];
          [v38 addObject:v27];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v5);
  }

  v28 = [CUTUnsafePromise all:v38];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10034535C;
  v39[3] = &unk_100BD8848;
  v40 = v3;
  v41 = v33;
  v29 = v33;
  v30 = v3;
  v31 = [v28 then:v39];

  return v31;
}

@end