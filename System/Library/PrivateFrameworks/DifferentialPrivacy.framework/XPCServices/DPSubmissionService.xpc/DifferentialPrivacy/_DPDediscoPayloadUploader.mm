@interface _DPDediscoPayloadUploader
- (_DPDediscoPayloadUploader)initWithBaseURL:(id)a3 useOHTTP:(BOOL)a4;
- (id)buildHTTPHeadersWithPayload:(id)a3 withEncoder:(id)a4 withError:(id *)a5;
- (id)uploadPayload:(id)a3 withEncoder:(id)a4;
- (id)uploadWithHTTPBody:(id)a3 withHTTPHeaders:(id)a4 withFullURL:(id)a5;
@end

@implementation _DPDediscoPayloadUploader

- (_DPDediscoPayloadUploader)initWithBaseURL:(id)a3 useOHTTP:(BOOL)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = _DPDediscoPayloadUploader;
  v8 = [(_DPDediscoPayloadUploader *)&v14 init];
  if (!v8)
  {
LABEL_6:
    v11 = v8;
    goto LABEL_10;
  }

  if ([v7 length])
  {
    objc_storeStrong(&v8->_baseURL, a3);
    if ([(NSString *)v8->_baseURL hasSuffix:@"/"])
    {
      v9 = [(NSString *)v8->_baseURL substringToIndex:[(NSString *)v8->_baseURL length]- 1];
      baseURL = v8->_baseURL;
      v8->_baseURL = v9;
    }

    v8->_useOHTTP = a4;
    goto LABEL_6;
  }

  v12 = +[_DPLog service];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10004FD04(v12);
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (id)uploadWithHTTPBody:(id)a3 withHTTPHeaders:(id)a4 withFullURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = +[_DPLog service];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      *&buf[4] = [v8 length];
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Upload via HTTP body size: %lu - uploading to %@", buf, 0x16u);
    }

    v12 = [(_DPDediscoPayloadUploader *)self createUploadClientWithURL:v10 withHeaders:v9 uploadWithOHTTP:[(_DPDediscoPayloadUploader *)self useOHTTP]];
    if (v12)
    {
      v13 = +[NSProcessInfo processInfo];
      [v13 systemUptime];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v34 = sub_100010930;
      v35 = sub_100010940;
      v36 = 0;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100010948;
      v28[3] = &unk_1000711B8;
      v30 = buf;
      v14 = dispatch_semaphore_create(0);
      v29 = v14;
      [v12 uploadData:v8 withHeaders:v9 onCompletion:v28];
      v15 = dispatch_time(0, 5000000000);
      if (dispatch_semaphore_wait(v14, v15))
      {
        v16 = [NSString stringWithFormat:@"Timeout uploading: %@", v10];
        v17 = [_DPDediscoError errorWithCode:200 description:v16];

        v18 = +[_DPLog service];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10004FD48();
        }
      }

      else
      {
        v26 = *(*&buf[8] + 40);
        if (v26)
        {
          v17 = v26;
          v18 = +[_DPLog service];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10004FDB0(v10, &buf[8]);
          }
        }

        else
        {
          v18 = +[_DPLog service];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *v31 = 138412290;
            v32 = v10;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Successfully uploaded DAP report to %@", v31, 0xCu);
          }

          v17 = 0;
        }
      }

      reportCoreAnalyticsUploadEvent();
      v22 = v17;

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v23 = [NSString stringWithFormat:@"Failed to create HTTP client"];
      v24 = [_DPDediscoError errorWithCode:201 description:v23];

      v25 = +[_DPLog service];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10004EEE4();
      }

      v22 = v24;
    }
  }

  else
  {
    v19 = [NSString stringWithFormat:@"Nothing to upload: serialized report is empty: %@", v10];
    v20 = [_DPDediscoError errorWithCode:201 description:v19];

    v21 = +[_DPLog service];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10004EEE4();
    }

    v22 = v20;
  }

  return v22;
}

- (id)uploadPayload:(id)a3 withEncoder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 getReport];
  v9 = [v6 getCollectionId];
  if (v8)
  {
    v10 = +[_DPLog service];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Bypassing SGX for collectionID %@ - Sending DAP report only", buf, 0xCu);
    }

    v23 = 0;
    v11 = [(_DPDediscoPayloadUploader *)self buildHTTPHeadersWithPayload:v6 withEncoder:v7 withError:&v23];
    v12 = v23;
    if (v12)
    {
      v13 = v12;
      v14 = v13;
    }

    else
    {
      v22 = 0;
      v16 = [v7 taskIDWithError:&v22];
      v17 = v22;
      v13 = v17;
      if (v17)
      {
        v14 = v17;
      }

      else
      {
        v21 = [(_DPDediscoPayloadUploader *)self baseURL];
        v18 = [_DPDediscoUtils toBase64URLEncoded:v16];
        v19 = [NSString stringWithFormat:@"%@/tasks/%@/reports", v21, v18];

        v14 = [(_DPDediscoPayloadUploader *)self uploadWithHTTPBody:v8 withHTTPHeaders:v11 withFullURL:v19];
      }
    }
  }

  else
  {
    v13 = [NSString stringWithFormat:@"Failed to send V1 payloads collectionID %@ - http upload is forbidden", v9];
    v15 = +[_DPLog service];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10004EEE4();
    }

    v14 = [_DPDediscoError errorWithCode:203 description:v13];
  }

  return v14;
}

- (id)buildHTTPHeadersWithPayload:(id)a3 withEncoder:(id)a4 withError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 encodedReportAuthExtensionDataWithError:a5];
  if (a5 && *a5)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v8 encodedTaskProvExtensionDataWithError:a5];
    if (v11)
    {
      v12 = [v8 dapVersion];
      v13 = +[_DPDeviceInfo isInternalBuild];
      v14 = @"0";
      if (v13)
      {
        v14 = @"1";
      }

      v15 = [NSString stringWithFormat:@"application/dap-reportversion=%@;build-type=%@", v12, v14];;

      v16 = [v7 getCollectionId];
      v23[0] = v16;
      v23[1] = v15;
      v17 = [NSArray arrayWithObjects:v23 count:2];
      v10 = [NSMutableDictionary dictionaryWithObjects:v17 forKeys:&off_100075AF0];
      if (v9)
      {
        v18 = [_DPDediscoUtils toBase64URLEncoded:v9];
        [v10 setObject:v18 forKeyedSubscript:@"dap-reportauth"];
        v19 = +[_DPLog service];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_10004FE3C();
        }
      }

      v20 = [_DPDediscoUtils toBase64URLEncoded:v11];
      [v10 setObject:v20 forKeyedSubscript:@"dap-taskprov"];
      v21 = +[_DPLog service];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_10004FEB0();
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end