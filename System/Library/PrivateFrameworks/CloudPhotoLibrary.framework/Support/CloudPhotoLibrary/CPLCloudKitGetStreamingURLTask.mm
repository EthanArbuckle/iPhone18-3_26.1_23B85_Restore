@interface CPLCloudKitGetStreamingURLTask
- ($9AC8AD2FEA0B9A5F24CD76D172BBF93B)timeRange;
- (BOOL)shouldRequestEncryptedStream;
- (CPLCloudKitGetStreamingURLTask)initWithController:(id)controller resource:(id)resource hints:(id)hints timeRange:(id *)range target:(id)target transportScopeMapping:(id)mapping cache:(id)cache completionHandler:(id)self0;
- (id)_streamOperationForKey:(id)key operationType:(int64_t)type completionHandler:(id)handler;
- (void)_fetchStreamingURL;
- (void)runOperations;
@end

@implementation CPLCloudKitGetStreamingURLTask

- (CPLCloudKitGetStreamingURLTask)initWithController:(id)controller resource:(id)resource hints:(id)hints timeRange:(id *)range target:(id)target transportScopeMapping:(id)mapping cache:(id)cache completionHandler:(id)self0
{
  resourceCopy = resource;
  hintsCopy = hints;
  targetCopy = target;
  mappingCopy = mapping;
  cacheCopy = cache;
  handlerCopy = handler;
  v35.receiver = self;
  v35.super_class = CPLCloudKitGetStreamingURLTask;
  v22 = [(CPLCloudKitTransportTask *)&v35 initWithController:controller];
  if (v22)
  {
    v23 = [handlerCopy copy];
    v24 = *(v22 + 38);
    *(v22 + 38) = v23;

    objc_storeStrong(v22 + 37, cache);
    objc_storeStrong(v22 + 35, resource);
    v25 = [hintsCopy copy];
    v26 = *(v22 + 36);
    *(v22 + 36) = v25;

    v28 = *&range->var0.var3;
    v27 = *&range->var1.var1;
    *(v22 + 312) = *&range->var0.var0;
    *(v22 + 328) = v28;
    *(v22 + 344) = v27;
    v29 = objc_alloc_init(CPLRecordTargetMapping);
    v30 = *(v22 + 34);
    *(v22 + 34) = v29;

    v31 = *(v22 + 34);
    scopedIdentifier = [targetCopy scopedIdentifier];
    [v31 setTarget:targetCopy forRecordWithScopedIdentifier:scopedIdentifier];

    [v22 setTransportScopeMapping:mappingCopy];
  }

  return v22;
}

- (id)_streamOperationForKey:(id)key operationType:(int64_t)type completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  if ([(CPLCloudKitGetStreamingURLTask *)self shouldRequestEncryptedStream])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001AAD70(keyCopy);
    }

    v10 = 2;
  }

  else
  {
    if (CPLCloudKitUseGateKeeperForOperationType(type))
    {
      recordID = [keyCopy recordID];
      resourceKey = [keyCopy resourceKey];
      v13 = CPLCloudKitGateKeeperDefaultDownloadType;
      filename = [keyCopy filename];
      p_timeRange = &self->_timeRange;
      hints = self->_hints;
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100097E1C;
      v38[3] = &unk_100276738;
      v39 = handlerCopy;
      v17 = *&p_timeRange->start.epoch;
      v35 = *&p_timeRange->start.value;
      v36 = v17;
      v37 = *&p_timeRange->duration.timescale;
      v18 = [CPLCKResourceDownloadOperation streamOperationForRecordID:recordID key:resourceKey downloadType:v13 filename:filename timeRange:&v35 mediaRequestHints:hints completionBlock:v38];

      goto LABEL_9;
    }

    v10 = 1;
  }

  v19 = [CKPublishAssetsOperation alloc];
  recordID2 = [keyCopy recordID];
  v42 = recordID2;
  v21 = [NSArray arrayWithObjects:&v42 count:1];
  v18 = [v19 initWithRecordIDs:v21];

  [v18 setURLOptions:v10];
  *&v35 = 0;
  *(&v35 + 1) = &v35;
  *&v36 = 0x2020000000;
  BYTE8(v36) = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100097EBC;
  v31[3] = &unk_100276760;
  v34 = &v35;
  v22 = handlerCopy;
  v33 = v22;
  v23 = keyCopy;
  v32 = v23;
  [v18 setAssetPublishedBlock:v31];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10009814C;
  v28[3] = &unk_100276788;
  v30 = &v35;
  v29 = v22;
  [v18 setPublishAssetCompletionBlock:v28];
  resourceKey2 = [v23 resourceKey];
  v40 = resourceKey2;
  filename2 = [v23 filename];
  v41 = filename2;
  v26 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];

  [v18 setFileNamesByAssetFieldNames:v26];
  _Block_object_dispose(&v35, 8);
LABEL_9:

  return v18;
}

- (BOOL)shouldRequestEncryptedStream
{
  v2 = [(NSDictionary *)self->_hints objectForKeyedSubscript:CPLLibraryManagerStreamingHintShouldRequestEncryptedStream];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)runOperations
{
  targetMapping = self->_targetMapping;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000982E0;
  v3[3] = &unk_100272468;
  v3[4] = self;
  [(CPLCloudKitTransportTask *)self fetchUnknownTargetsInMapping:targetMapping completionHandler:v3];
}

- (void)_fetchStreamingURL
{
  v58[0] = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:v58];
  v4 = v58[0];
  if (v3)
  {
    if ([CPLCloudKitFakeDynamicDerivatives isFakeDerivative:self->_resource])
    {
      completionHandler = self->_completionHandler;
      v6 = [CPLErrors cplErrorWithCode:255 description:@"Streaming fake derivatives is not supported"];
      (*(completionHandler + 2))(completionHandler, 0, 0, 0, 0, v6);
    }

    else
    {
      itemScopedIdentifier = [(CPLResource *)self->_resource itemScopedIdentifier];
      if (itemScopedIdentifier)
      {
        v7 = sub_100084A0C(CPLCloudKitResourceKeys, [(CPLResource *)self->_resource resourceType]);
        v8 = sub_1001A8CE0(v7);

        if (v8)
        {
          v51 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:itemScopedIdentifier];
          resourceScopedIdentifier = [v51 resourceScopedIdentifier];
          scopeIdentifier = [resourceScopedIdentifier scopeIdentifier];
          v11 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier];

          if (v11)
          {
            v49 = resourceScopedIdentifier;
            identifier = [resourceScopedIdentifier identifier];
            v50 = v11;
            v13 = [v11 recordIDWithRecordName:identifier];

            -[CPLCloudKitTransportTask setAllowsCellular:](self, "setAllowsCellular:", [objc_opt_class() allowsCellularForDownloadOperationOfResource:self->_resource isForeground:-[CPLCloudKitTransportTask foreground](self isHighPriority:{"foreground"), 1}]);
            identity = [(CPLResource *)self->_resource identity];
            fileURL = [identity fileURL];
            lastPathComponent = [fileURL lastPathComponent];

            if (!lastPathComponent)
            {
              itemScopedIdentifier2 = [(CPLResource *)self->_resource itemScopedIdentifier];
              safeFilename = [itemScopedIdentifier2 safeFilename];
              lastPathComponent = [NSString stringWithFormat:@"%@_%@", safeFilename, v8];
            }

            v19 = [CPLCloudKitStreamingKey alloc];
            v47 = identity;
            fingerPrint = [identity fingerPrint];
            operationGroup = [(CPLCloudKitTransportTask *)self operationGroup];
            name = [operationGroup name];
            shouldRequestEncryptedStream = [(CPLCloudKitGetStreamingURLTask *)self shouldRequestEncryptedStream];
            v24 = *&self->_timeRange.start.epoch;
            v57[0] = *&self->_timeRange.start.value;
            v57[1] = v24;
            v57[2] = *&self->_timeRange.duration.timescale;
            LOBYTE(v45) = shouldRequestEncryptedStream;
            v48 = v13;
            v25 = [(CPLCloudKitStreamingKey *)v19 initWithRecordID:v13 resourceKey:v8 fingerPrint:fingerPrint filename:lastPathComponent groupName:name timeRange:v57 useEncryptedStream:v45];

            cache = self->_cache;
            v27 = +[NSDate date];
            v56 = 0;
            v28 = [(CPLCloudKitSimpleCache *)cache objectForKey:v25 date:v27 expirationDate:&v56];
            v29 = v56;

            v30 = lastPathComponent;
            v46 = v4;
            if (v28)
            {
              v31 = self->_completionHandler;
              streamingURL = [v28 streamingURL];
              [v28 mediaItemMakerData];
              v33 = v28;
              v35 = v34 = v8;
              (*(v31 + 2))(v31, streamingURL, v35, v29, 0, 0);

              v8 = v34;
              v30 = lastPathComponent;

              v36 = self->_completionHandler;
              self->_completionHandler = 0;
              resourceScopedIdentifier = v49;
            }

            else
            {
              v55 = 0;
              v39 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v55];
              v36 = v55;
              if (v39)
              {
                v40 = CPLCloudKitOperationTypeForScope(v50);
                v53[0] = _NSConcreteStackBlock;
                v53[1] = 3221225472;
                v53[2] = sub_100098900;
                v53[3] = &unk_1002767D8;
                v53[4] = self;
                v54 = v25;
                [(CPLCloudKitGetStreamingURLTask *)self _streamOperationForKey:v54 operationType:v40 completionHandler:v53];
                v41 = v25;
                v43 = v42 = v8;
                [(CPLCloudKitTransportTask *)self launchOperation:v43 type:v40 withContext:0];

                v8 = v42;
                v25 = v41;
                v44 = v54;
              }

              else
              {
                (*(self->_completionHandler + 2))();
                v44 = self->_completionHandler;
                self->_completionHandler = 0;
              }

              resourceScopedIdentifier = v49;
              v33 = 0;
            }

            v11 = v50;
            v38 = v48;
            v4 = v46;
          }

          else
          {
            v37 = self->_completionHandler;
            v38 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone"];
            (*(v37 + 2))(v37, 0, 0, 0, 0, v38);
          }
        }

        else
        {
          sub_1001AAE68(&self->_resource, self);
        }
      }

      else
      {
        sub_1001AAF4C(&self->_resource, self);
        v8 = *&v57[0];
      }
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- ($9AC8AD2FEA0B9A5F24CD76D172BBF93B)timeRange
{
  v3 = *&self[6].var1.var3;
  *&retstr->var0.var0 = *&self[6].var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[7].var0.var1;
  return self;
}

@end