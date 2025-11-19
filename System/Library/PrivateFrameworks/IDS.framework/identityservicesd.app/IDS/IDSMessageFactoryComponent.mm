@interface IDSMessageFactoryComponent
- (BOOL)shouldSendAsAttachment:(id)a3 maxSize:(unint64_t)a4;
- (IDSMessageFactoryComponent)initWithMMCSUploader:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IDSMessageFactoryComponent

- (IDSMessageFactoryComponent)initWithMMCSUploader:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSMessageFactoryComponent;
  v6 = [(IDSMessageFactoryComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mmcsUploader, a3);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v3 = a3;
  v51 = [v3 guid];
  v4 = [v3 endpointsToEncryptedData];
  [v3 setUsedMMCS:0];
  v49 = objc_alloc_init(NSMutableArray);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v5 = v4;
  v50 = [v5 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v50)
  {
    v48 = *v67;
    v46 = IDSRegistrationPropertySupportsCertifiedDeliveryV1;
    *&v6 = 138412546;
    v45 = v6;
    v47 = v5;
    do
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v67 != v48)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v66 + 1) + 8 * i);
        v9 = [v8 URI];
        v10 = [v3 fromID];
        v54 = v9;
        v11 = [v9 prefixedURI];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          v13 = 0;
        }

        else
        {
          v13 = [v3 wantsDeliveryStatus];
        }

        if ([v3 wantsCertifiedDelivery])
        {
          v14 = [v8 capabilities];
          v15 = [v14 valueForCapability:v46] > 0;
        }

        else
        {
          v15 = 0;
        }

        v16 = [v5 objectForKey:v8];
        if (([v3 forceAttachmentMessage] & 1) != 0 || -[IDSMessageFactoryComponent shouldSendAsAttachment:maxSize:](self, "shouldSendAsAttachment:maxSize:", v16, objc_msgSend(v3, "maxSize")))
        {
          v53 = v15;
          v17 = v13;
          v18 = +[IDSFoundationLog delivery];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v8 pushTokenObject];
            v20 = [v54 URIByAddingPushToken:v19];
            *buf = v45;
            v71 = v51;
            v72 = 2112;
            v73 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "GUID %@ Uploading data as attachment for token: %@", buf, 0x16u);
          }

          [v3 setUsedMMCS:1];
          v21 = objc_alloc_init(CUTUnsafePromiseSeal);
          mmcsUploader = self->_mmcsUploader;
          v23 = [v3 fromID];
          v24 = [v3 service];
          v25 = -[IDSMMCSUploader uploadData:fromID:toEndpoint:onTopic:forGUID:encryptionType:](mmcsUploader, "uploadData:fromID:toEndpoint:onTopic:forGUID:encryptionType:", v16, v23, v8, v24, v51, [v3 encryptionType]);

          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_100444CEC;
          v58[3] = &unk_100BDC510;
          v59 = v3;
          v60 = v21;
          v61 = v8;
          v26 = v54;
          v62 = v54;
          v64 = v17;
          v65 = v53;
          v63 = v51;
          v27 = v21;
          [(IDSPeerAggregatableMessage *)v25 registerResultBlock:v58];
          v28 = [v27 promise];
          [v49 addObject:v28];

          v5 = v47;
        }

        else
        {
          v25 = objc_alloc_init(IDSPeerAggregatableMessage);
          v29 = [v8 pushTokenObject];
          [(IDSPeerAggregatableMessage *)v25 setTargetToken:v29];

          v30 = [v8 sessionToken];
          [(IDSPeerAggregatableMessage *)v25 setTargetSessionToken:v30];

          [(IDSPeerAggregatableMessage *)v25 setTargetPeerID:v54];
          v31 = [v16 data];
          [(IDSPeerAggregatableMessage *)v25 setEncryptedData:v31];

          v32 = [NSNumber numberWithBool:v13];
          [(IDSPeerAggregatableMessage *)v25 setWantsDeliveryStatus:v32];

          [(IDSPeerAggregatableMessage *)v25 setWantsCertifiedDelivery:v15];
          v33 = [v16 payloadMetadata];
          v34 = [v33 length];

          if (v34)
          {
            v35 = [v16 payloadMetadata];
            [(IDSPeerAggregatableMessage *)v25 setPayloadMetadata:v35];
          }

          v36 = [v8 anonymizedSenderID];
          [(IDSPeerAggregatableMessage *)v25 setAnonymizedSenderID:v36];

          v37 = [v8 expireDate];
          [(IDSPeerAggregatableMessage *)v25 setExpirationDate:v37];

          if ([v16 encryptionType] != 2)
          {
            [v16 encryptionType];
            v38 = IDSEncryptionTypeStringFromEncryptionType();
            [(IDSPeerAggregatableMessage *)v25 setEncryptionType:v38];
          }

          v27 = [CUTUnsafePromise fulfilledPromiseWithValue:v25];
          [v49 addObject:v27];
          v26 = v54;
        }
      }

      v50 = [v5 countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v50);
  }

  v39 = [CUTUnsafePromise all:v49];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100445130;
  v55[3] = &unk_100BD8848;
  v56 = v3;
  v57 = v51;
  v40 = v51;
  v41 = v5;
  v42 = v3;
  v43 = [v39 then:v55];

  return v43;
}

- (BOOL)shouldSendAsAttachment:(id)a3 maxSize:(unint64_t)a4
{
  v5 = [a3 data];
  LOBYTE(a4) = [v5 length] >= a4;

  return a4;
}

@end