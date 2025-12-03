@interface IDSMessageFactoryComponent
- (BOOL)shouldSendAsAttachment:(id)attachment maxSize:(unint64_t)size;
- (IDSMessageFactoryComponent)initWithMMCSUploader:(id)uploader;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IDSMessageFactoryComponent

- (IDSMessageFactoryComponent)initWithMMCSUploader:(id)uploader
{
  uploaderCopy = uploader;
  v9.receiver = self;
  v9.super_class = IDSMessageFactoryComponent;
  v6 = [(IDSMessageFactoryComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mmcsUploader, uploader);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  inputCopy = input;
  guid = [inputCopy guid];
  endpointsToEncryptedData = [inputCopy endpointsToEncryptedData];
  [inputCopy setUsedMMCS:0];
  v49 = objc_alloc_init(NSMutableArray);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v5 = endpointsToEncryptedData;
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
        fromID = [inputCopy fromID];
        v54 = v9;
        prefixedURI = [v9 prefixedURI];
        v12 = [fromID isEqualToString:prefixedURI];

        if (v12)
        {
          wantsDeliveryStatus = 0;
        }

        else
        {
          wantsDeliveryStatus = [inputCopy wantsDeliveryStatus];
        }

        if ([inputCopy wantsCertifiedDelivery])
        {
          capabilities = [v8 capabilities];
          v15 = [capabilities valueForCapability:v46] > 0;
        }

        else
        {
          v15 = 0;
        }

        v16 = [v5 objectForKey:v8];
        if (([inputCopy forceAttachmentMessage] & 1) != 0 || -[IDSMessageFactoryComponent shouldSendAsAttachment:maxSize:](self, "shouldSendAsAttachment:maxSize:", v16, objc_msgSend(inputCopy, "maxSize")))
        {
          v53 = v15;
          v17 = wantsDeliveryStatus;
          v18 = +[IDSFoundationLog delivery];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            pushTokenObject = [v8 pushTokenObject];
            v20 = [v54 URIByAddingPushToken:pushTokenObject];
            *buf = v45;
            v71 = guid;
            v72 = 2112;
            v73 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "GUID %@ Uploading data as attachment for token: %@", buf, 0x16u);
          }

          [inputCopy setUsedMMCS:1];
          v21 = objc_alloc_init(CUTUnsafePromiseSeal);
          mmcsUploader = self->_mmcsUploader;
          fromID2 = [inputCopy fromID];
          service = [inputCopy service];
          v25 = -[IDSMMCSUploader uploadData:fromID:toEndpoint:onTopic:forGUID:encryptionType:](mmcsUploader, "uploadData:fromID:toEndpoint:onTopic:forGUID:encryptionType:", v16, fromID2, v8, service, guid, [inputCopy encryptionType]);

          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_100444CEC;
          v58[3] = &unk_100BDC510;
          v59 = inputCopy;
          v60 = v21;
          v61 = v8;
          v26 = v54;
          v62 = v54;
          v64 = v17;
          v65 = v53;
          v63 = guid;
          v27 = v21;
          [(IDSPeerAggregatableMessage *)v25 registerResultBlock:v58];
          promise = [v27 promise];
          [v49 addObject:promise];

          v5 = v47;
        }

        else
        {
          v25 = objc_alloc_init(IDSPeerAggregatableMessage);
          pushTokenObject2 = [v8 pushTokenObject];
          [(IDSPeerAggregatableMessage *)v25 setTargetToken:pushTokenObject2];

          sessionToken = [v8 sessionToken];
          [(IDSPeerAggregatableMessage *)v25 setTargetSessionToken:sessionToken];

          [(IDSPeerAggregatableMessage *)v25 setTargetPeerID:v54];
          data = [v16 data];
          [(IDSPeerAggregatableMessage *)v25 setEncryptedData:data];

          v32 = [NSNumber numberWithBool:wantsDeliveryStatus];
          [(IDSPeerAggregatableMessage *)v25 setWantsDeliveryStatus:v32];

          [(IDSPeerAggregatableMessage *)v25 setWantsCertifiedDelivery:v15];
          payloadMetadata = [v16 payloadMetadata];
          v34 = [payloadMetadata length];

          if (v34)
          {
            payloadMetadata2 = [v16 payloadMetadata];
            [(IDSPeerAggregatableMessage *)v25 setPayloadMetadata:payloadMetadata2];
          }

          anonymizedSenderID = [v8 anonymizedSenderID];
          [(IDSPeerAggregatableMessage *)v25 setAnonymizedSenderID:anonymizedSenderID];

          expireDate = [v8 expireDate];
          [(IDSPeerAggregatableMessage *)v25 setExpirationDate:expireDate];

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
  v56 = inputCopy;
  v57 = guid;
  v40 = guid;
  v41 = v5;
  v42 = inputCopy;
  v43 = [v39 then:v55];

  return v43;
}

- (BOOL)shouldSendAsAttachment:(id)attachment maxSize:(unint64_t)size
{
  data = [attachment data];
  LOBYTE(size) = [data length] >= size;

  return size;
}

@end