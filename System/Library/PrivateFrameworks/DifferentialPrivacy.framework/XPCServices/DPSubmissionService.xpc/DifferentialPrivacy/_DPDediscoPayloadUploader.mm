@interface _DPDediscoPayloadUploader
- (_DPDediscoPayloadUploader)initWithBaseURL:(id)l useOHTTP:(BOOL)p;
- (id)buildHTTPHeadersWithPayload:(id)payload withEncoder:(id)encoder withError:(id *)error;
- (id)uploadPayload:(id)payload withEncoder:(id)encoder;
- (id)uploadWithHTTPBody:(id)body withHTTPHeaders:(id)headers withFullURL:(id)l;
@end

@implementation _DPDediscoPayloadUploader

- (_DPDediscoPayloadUploader)initWithBaseURL:(id)l useOHTTP:(BOOL)p
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = _DPDediscoPayloadUploader;
  v8 = [(_DPDediscoPayloadUploader *)&v14 init];
  if (!v8)
  {
LABEL_6:
    v11 = v8;
    goto LABEL_10;
  }

  if ([lCopy length])
  {
    objc_storeStrong(&v8->_baseURL, l);
    if ([(NSString *)v8->_baseURL hasSuffix:@"/"])
    {
      v9 = [(NSString *)v8->_baseURL substringToIndex:[(NSString *)v8->_baseURL length]- 1];
      baseURL = v8->_baseURL;
      v8->_baseURL = v9;
    }

    v8->_useOHTTP = p;
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

- (id)uploadWithHTTPBody:(id)body withHTTPHeaders:(id)headers withFullURL:(id)l
{
  bodyCopy = body;
  headersCopy = headers;
  lCopy = l;
  if (bodyCopy)
  {
    v11 = +[_DPLog service];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      *&buf[4] = [bodyCopy length];
      *&buf[12] = 2112;
      *&buf[14] = lCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Upload via HTTP body size: %lu - uploading to %@", buf, 0x16u);
    }

    v12 = [(_DPDediscoPayloadUploader *)self createUploadClientWithURL:lCopy withHeaders:headersCopy uploadWithOHTTP:[(_DPDediscoPayloadUploader *)self useOHTTP]];
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
      [v12 uploadData:bodyCopy withHeaders:headersCopy onCompletion:v28];
      v15 = dispatch_time(0, 5000000000);
      if (dispatch_semaphore_wait(v14, v15))
      {
        lCopy = [NSString stringWithFormat:@"Timeout uploading: %@", lCopy];
        v17 = [_DPDediscoError errorWithCode:200 description:lCopy];

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
            sub_10004FDB0(lCopy, &buf[8]);
          }
        }

        else
        {
          v18 = +[_DPLog service];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *v31 = 138412290;
            v32 = lCopy;
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
    lCopy2 = [NSString stringWithFormat:@"Nothing to upload: serialized report is empty: %@", lCopy];
    v20 = [_DPDediscoError errorWithCode:201 description:lCopy2];

    v21 = +[_DPLog service];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10004EEE4();
    }

    v22 = v20;
  }

  return v22;
}

- (id)uploadPayload:(id)payload withEncoder:(id)encoder
{
  payloadCopy = payload;
  encoderCopy = encoder;
  getReport = [payloadCopy getReport];
  getCollectionId = [payloadCopy getCollectionId];
  if (getReport)
  {
    v10 = +[_DPLog service];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = getCollectionId;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Bypassing SGX for collectionID %@ - Sending DAP report only", buf, 0xCu);
    }

    v23 = 0;
    v11 = [(_DPDediscoPayloadUploader *)self buildHTTPHeadersWithPayload:payloadCopy withEncoder:encoderCopy withError:&v23];
    v12 = v23;
    if (v12)
    {
      v13 = v12;
      v14 = v13;
    }

    else
    {
      v22 = 0;
      v16 = [encoderCopy taskIDWithError:&v22];
      v17 = v22;
      v13 = v17;
      if (v17)
      {
        v14 = v17;
      }

      else
      {
        baseURL = [(_DPDediscoPayloadUploader *)self baseURL];
        v18 = [_DPDediscoUtils toBase64URLEncoded:v16];
        v19 = [NSString stringWithFormat:@"%@/tasks/%@/reports", baseURL, v18];

        v14 = [(_DPDediscoPayloadUploader *)self uploadWithHTTPBody:getReport withHTTPHeaders:v11 withFullURL:v19];
      }
    }
  }

  else
  {
    v13 = [NSString stringWithFormat:@"Failed to send V1 payloads collectionID %@ - http upload is forbidden", getCollectionId];
    v15 = +[_DPLog service];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10004EEE4();
    }

    v14 = [_DPDediscoError errorWithCode:203 description:v13];
  }

  return v14;
}

- (id)buildHTTPHeadersWithPayload:(id)payload withEncoder:(id)encoder withError:(id *)error
{
  payloadCopy = payload;
  encoderCopy = encoder;
  v9 = [encoderCopy encodedReportAuthExtensionDataWithError:error];
  if (error && *error)
  {
    v10 = 0;
  }

  else
  {
    v11 = [encoderCopy encodedTaskProvExtensionDataWithError:error];
    if (v11)
    {
      dapVersion = [encoderCopy dapVersion];
      v13 = +[_DPDeviceInfo isInternalBuild];
      v14 = @"0";
      if (v13)
      {
        v14 = @"1";
      }

      v15 = [NSString stringWithFormat:@"application/dap-reportversion=%@;build-type=%@", dapVersion, v14];;

      getCollectionId = [payloadCopy getCollectionId];
      v23[0] = getCollectionId;
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