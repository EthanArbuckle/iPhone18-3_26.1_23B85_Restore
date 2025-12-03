@interface IDSIMLMessageFactoryComponent
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IDSIMLMessageFactoryComponent

- (id)runIndividuallyWithInput:(id)input
{
  inputCopy = input;
  guid = [inputCopy guid];
  v38 = objc_alloc_init(NSMutableArray);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [inputCopy endpoints];
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
        fromID = [inputCopy fromID];
        prefixedURI = [v8 prefixedURI];
        v11 = [fromID isEqualToString:prefixedURI];

        if (v11)
        {
          wantsDeliveryStatus = 0;
        }

        else
        {
          wantsDeliveryStatus = [inputCopy wantsDeliveryStatus];
        }

        if ([inputCopy wantsCertifiedDelivery])
        {
          capabilities = [v7 capabilities];
          v14 = [capabilities valueForCapability:v35] > 0;
        }

        else
        {
          v14 = 0;
        }

        v15 = objc_alloc_init(IDSPeerAggregatableMessage);
        pushTokenObject = [v7 pushTokenObject];
        [(IDSPeerAggregatableMessage *)v15 setTargetToken:pushTokenObject];

        sessionToken = [v7 sessionToken];
        [(IDSPeerAggregatableMessage *)v15 setTargetSessionToken:sessionToken];

        [(IDSPeerAggregatableMessage *)v15 setTargetPeerID:v8];
        v18 = [NSNumber numberWithBool:wantsDeliveryStatus];
        [(IDSPeerAggregatableMessage *)v15 setWantsDeliveryStatus:v18];

        [(IDSPeerAggregatableMessage *)v15 setWantsCertifiedDelivery:v14];
        anonymizedSenderID = [v7 anonymizedSenderID];
        [(IDSPeerAggregatableMessage *)v15 setAnonymizedSenderID:anonymizedSenderID];

        expireDate = [v7 expireDate];
        [(IDSPeerAggregatableMessage *)v15 setExpirationDate:expireDate];

        fromShortHandle = [inputCopy fromShortHandle];
        v22 = +[IDSPeerIDManager sharedInstance];
        fromID2 = [inputCopy fromID];
        v24 = [IDSURI URIWithPrefixedURI:fromID2];
        v25 = [v22 shortHandleForURI:v8 fromURI:v24];

        if (fromShortHandle && v25)
        {
          [(IDSPeerAggregatableMessage *)v15 setSenderShortHandle:fromShortHandle];
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
  v40 = inputCopy;
  v41 = guid;
  v29 = guid;
  v30 = inputCopy;
  v31 = [v28 then:v39];

  return v31;
}

@end