@interface _DPDediscoNetworkingService
- (_DPDediscoNetworkingService)initWithDomain:(id)a3 configurationURL:(id)a4;
- (id)downloadConfigSynchronouslyWithError:(id *)a3;
@end

@implementation _DPDediscoNetworkingService

- (_DPDediscoNetworkingService)initWithDomain:(id)a3 configurationURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _DPDediscoNetworkingService;
  v8 = [(_DPDediscoNetworkingService *)&v12 init];
  if (v8)
  {
    v9 = [[_DPSubmissionServiceHTTPClient alloc] initWithDomain:v6 retries:3];
    networkingClient = v8->_networkingClient;
    v8->_networkingClient = v9;

    objc_storeStrong(&v8->_configurationURL, a4);
  }

  return v8;
}

- (id)downloadConfigSynchronouslyWithError:(id *)a3
{
  v5 = +[_DPLog service];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(_DPDediscoNetworkingService *)self configurationURL];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting to download config file from %@", &buf, 0xCu);
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v45 = 0x3032000000;
  v46 = sub_1000097D8;
  v47 = sub_1000097E8;
  v48 = 0;
  v37 = 0;
  v38[0] = &v37;
  v38[1] = 0x3032000000;
  v38[2] = sub_1000097D8;
  v38[3] = sub_1000097E8;
  v39 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = [(_DPDediscoNetworkingService *)self networkingClient];
  v9 = [(_DPDediscoNetworkingService *)self configurationURL];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000097F0;
  v32[3] = &unk_100071140;
  p_buf = &buf;
  v35 = &v37;
  v36 = &v40;
  v10 = v7;
  v33 = v10;
  [v8 downloadConfigFromURL:v9 completion:v32];

  v11 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v10, v11))
  {
    v12 = +[_DPLog service];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004E224(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    if (a3)
    {
      v20 = [_DPDediscoError errorWithCode:200 description:@"Timeout while downloading config on client"];
LABEL_16:
      v22 = 0;
      *a3 = v20;
      goto LABEL_18;
    }

LABEL_17:
    v22 = 0;
    goto LABEL_18;
  }

  if ((v41[3] & 1) == 0)
  {
    v23 = +[_DPLog service];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10004E298(v38, v23, v24, v25, v26, v27, v28, v29);
    }

    if (a3)
    {
      v20 = [_DPDediscoError errorWithCode:201 underlyingError:*(v38[0] + 40) description:@"Networking client returned an error"];
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v21 = +[_DPLog service];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Finished downloading config successfully", v31, 2u);
  }

  v22 = *(*(&buf + 1) + 40);
LABEL_18:

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v40, 8);

  return v22;
}

@end