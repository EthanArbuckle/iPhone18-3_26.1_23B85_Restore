@interface CPLCloudKitGetStreamingURLTask
- ($9AC8AD2FEA0B9A5F24CD76D172BBF93B)timeRange;
- (BOOL)shouldRequestEncryptedStream;
- (CPLCloudKitGetStreamingURLTask)initWithController:(id)a3 resource:(id)a4 hints:(id)a5 timeRange:(id *)a6 target:(id)a7 transportScopeMapping:(id)a8 cache:(id)a9 completionHandler:(id)a10;
- (id)_streamOperationForKey:(id)a3 operationType:(int64_t)a4 completionHandler:(id)a5;
- (void)_fetchStreamingURL;
- (void)runOperations;
@end

@implementation CPLCloudKitGetStreamingURLTask

- (CPLCloudKitGetStreamingURLTask)initWithController:(id)a3 resource:(id)a4 hints:(id)a5 timeRange:(id *)a6 target:(id)a7 transportScopeMapping:(id)a8 cache:(id)a9 completionHandler:(id)a10
{
  v34 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v35.receiver = self;
  v35.super_class = CPLCloudKitGetStreamingURLTask;
  v22 = [(CPLCloudKitTransportTask *)&v35 initWithController:a3];
  if (v22)
  {
    v23 = [v21 copy];
    v24 = *(v22 + 38);
    *(v22 + 38) = v23;

    objc_storeStrong(v22 + 37, a9);
    objc_storeStrong(v22 + 35, a4);
    v25 = [v17 copy];
    v26 = *(v22 + 36);
    *(v22 + 36) = v25;

    v28 = *&a6->var0.var3;
    v27 = *&a6->var1.var1;
    *(v22 + 312) = *&a6->var0.var0;
    *(v22 + 328) = v28;
    *(v22 + 344) = v27;
    v29 = objc_alloc_init(CPLRecordTargetMapping);
    v30 = *(v22 + 34);
    *(v22 + 34) = v29;

    v31 = *(v22 + 34);
    v32 = [v18 scopedIdentifier];
    [v31 setTarget:v18 forRecordWithScopedIdentifier:v32];

    [v22 setTransportScopeMapping:v19];
  }

  return v22;
}

- (id)_streamOperationForKey:(id)a3 operationType:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(CPLCloudKitGetStreamingURLTask *)self shouldRequestEncryptedStream])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001AAD70(v8);
    }

    v10 = 2;
  }

  else
  {
    if (CPLCloudKitUseGateKeeperForOperationType(a4))
    {
      v11 = [v8 recordID];
      v12 = [v8 resourceKey];
      v13 = CPLCloudKitGateKeeperDefaultDownloadType;
      v14 = [v8 filename];
      p_timeRange = &self->_timeRange;
      hints = self->_hints;
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100097E1C;
      v38[3] = &unk_100276738;
      v39 = v9;
      v17 = *&p_timeRange->start.epoch;
      v35 = *&p_timeRange->start.value;
      v36 = v17;
      v37 = *&p_timeRange->duration.timescale;
      v18 = [CPLCKResourceDownloadOperation streamOperationForRecordID:v11 key:v12 downloadType:v13 filename:v14 timeRange:&v35 mediaRequestHints:hints completionBlock:v38];

      goto LABEL_9;
    }

    v10 = 1;
  }

  v19 = [CKPublishAssetsOperation alloc];
  v20 = [v8 recordID];
  v42 = v20;
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
  v22 = v9;
  v33 = v22;
  v23 = v8;
  v32 = v23;
  [v18 setAssetPublishedBlock:v31];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10009814C;
  v28[3] = &unk_100276788;
  v30 = &v35;
  v29 = v22;
  [v18 setPublishAssetCompletionBlock:v28];
  v24 = [v23 resourceKey];
  v40 = v24;
  v25 = [v23 filename];
  v41 = v25;
  v26 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];

  [v18 setFileNamesByAssetFieldNames:v26];
  _Block_object_dispose(&v35, 8);
LABEL_9:

  return v18;
}

- (BOOL)shouldRequestEncryptedStream
{
  v2 = [(NSDictionary *)self->_hints objectForKeyedSubscript:CPLLibraryManagerStreamingHintShouldRequestEncryptedStream];
  v3 = [v2 BOOLValue];

  return v3;
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
      v52 = [(CPLResource *)self->_resource itemScopedIdentifier];
      if (v52)
      {
        v7 = sub_100084A0C(CPLCloudKitResourceKeys, [(CPLResource *)self->_resource resourceType]);
        v8 = sub_1001A8CE0(v7);

        if (v8)
        {
          v51 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v52];
          v9 = [v51 resourceScopedIdentifier];
          v10 = [v9 scopeIdentifier];
          v11 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:v10];

          if (v11)
          {
            v49 = v9;
            v12 = [v9 identifier];
            v50 = v11;
            v13 = [v11 recordIDWithRecordName:v12];

            -[CPLCloudKitTransportTask setAllowsCellular:](self, "setAllowsCellular:", [objc_opt_class() allowsCellularForDownloadOperationOfResource:self->_resource isForeground:-[CPLCloudKitTransportTask foreground](self isHighPriority:{"foreground"), 1}]);
            v14 = [(CPLResource *)self->_resource identity];
            v15 = [v14 fileURL];
            v16 = [v15 lastPathComponent];

            if (!v16)
            {
              v17 = [(CPLResource *)self->_resource itemScopedIdentifier];
              v18 = [v17 safeFilename];
              v16 = [NSString stringWithFormat:@"%@_%@", v18, v8];
            }

            v19 = [CPLCloudKitStreamingKey alloc];
            v47 = v14;
            v20 = [v14 fingerPrint];
            v21 = [(CPLCloudKitTransportTask *)self operationGroup];
            v22 = [v21 name];
            v23 = [(CPLCloudKitGetStreamingURLTask *)self shouldRequestEncryptedStream];
            v24 = *&self->_timeRange.start.epoch;
            v57[0] = *&self->_timeRange.start.value;
            v57[1] = v24;
            v57[2] = *&self->_timeRange.duration.timescale;
            LOBYTE(v45) = v23;
            v48 = v13;
            v25 = [(CPLCloudKitStreamingKey *)v19 initWithRecordID:v13 resourceKey:v8 fingerPrint:v20 filename:v16 groupName:v22 timeRange:v57 useEncryptedStream:v45];

            cache = self->_cache;
            v27 = +[NSDate date];
            v56 = 0;
            v28 = [(CPLCloudKitSimpleCache *)cache objectForKey:v25 date:v27 expirationDate:&v56];
            v29 = v56;

            v30 = v16;
            v46 = v4;
            if (v28)
            {
              v31 = self->_completionHandler;
              v32 = [v28 streamingURL];
              [v28 mediaItemMakerData];
              v33 = v28;
              v35 = v34 = v8;
              (*(v31 + 2))(v31, v32, v35, v29, 0, 0);

              v8 = v34;
              v30 = v16;

              v36 = self->_completionHandler;
              self->_completionHandler = 0;
              v9 = v49;
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

              v9 = v49;
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