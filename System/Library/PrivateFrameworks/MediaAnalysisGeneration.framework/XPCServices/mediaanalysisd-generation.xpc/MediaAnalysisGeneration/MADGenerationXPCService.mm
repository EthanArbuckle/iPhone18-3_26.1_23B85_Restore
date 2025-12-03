@interface MADGenerationXPCService
- (int64_t)consumeSandboxExtension:(id)extension url:(id)url;
- (void)requestAlchemistProcessingForIOSurface:(id)surface options:(id)options reply:(id)reply;
- (void)requestAlchemistProcessingForURL:(id)l sandboxToken:(id)token options:(id)options reply:(id)reply;
@end

@implementation MADGenerationXPCService

- (void)requestAlchemistProcessingForIOSurface:(id)surface options:(id)options reply:(id)reply
{
  surfaceCopy = surface;
  optionsCopy = options;
  replyCopy = reply;
  pixelBufferOut = 0;
  v10 = CVPixelBufferCreateWithIOSurface(0, surfaceCopy, 0, &pixelBufferOut);
  if (v10)
  {
    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_100008D40(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v39 = NSLocalizedDescriptionKey;
    v40 = @"Failed to create CVPixelBuffer from specified IOSurface";
    v19 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v20 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v10 userInfo:v19];
    replyCopy[2](replyCopy, 0, v20);
  }

  v21 = [[MADAlchemistAnalzyer alloc] initWithOptions:optionsCopy];
  v35 = 0;
  v22 = [(MADAlchemistAnalzyer *)v21 performAlchemistForPixelBuffer:pixelBufferOut options:optionsCopy results:&v35 cancel:0];
  v23 = v35;
  if (v22)
  {
    v24 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      sub_100008D7C(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    v37 = NSLocalizedDescriptionKey;
    v38 = @"Error performing Alchemist processing";
    v32 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v33 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v32];
    replyCopy[2](replyCopy, 0, v33);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v34 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[MADGenerationXPCService] Completed Alchemist processing", &v34, 2u);
    }

    (replyCopy)[2](replyCopy, v23, 0);
  }

  sub_1000020D0(&pixelBufferOut);
}

- (void)requestAlchemistProcessingForURL:(id)l sandboxToken:(id)token options:(id)options reply:(id)reply
{
  lCopy = l;
  tokenCopy = token;
  optionsCopy = options;
  replyCopy = reply;
  if (tokenCopy && [(MADGenerationXPCService *)self consumeSandboxExtension:tokenCopy url:lCopy]< 0)
  {
    v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      sub_100008DB8(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    v39 = NSLocalizedDescriptionKey;
    v40 = @"[MADGenerationXPCService] Failed to consume sandbox extension";
    v22 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v23 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v22];
    replyCopy[2](replyCopy, 0, v23);
  }

  else
  {
    v23 = [[MADAlchemistAnalzyer alloc] initWithOptions:optionsCopy];
    v36 = 0;
    v24 = [(MADAlchemistAnalzyer *)v23 performAlchemistForURL:lCopy options:optionsCopy results:&v36 cancel:0];
    v22 = v36;
    if (tokenCopy)
    {
      sandbox_extension_release();
    }

    if (v24)
    {
      v25 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v25)
      {
        sub_100008D7C(v25, v26, v27, v28, v29, v30, v31, v32);
      }

      v37 = NSLocalizedDescriptionKey;
      v38 = @"Error performing Alchemist processing";
      v33 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v34 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v33];
      replyCopy[2](replyCopy, 0, v34);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v35[0] = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[MADGenerationXPCService] Completed Alchemist processing", v35, 2u);
      }

      (replyCopy)[2](replyCopy, v22, 0);
    }
  }
}

- (int64_t)consumeSandboxExtension:(id)extension url:(id)url
{
  extensionCopy = extension;
  urlCopy = url;
  fileSystemRepresentation = [urlCopy fileSystemRepresentation];
  v8 = +[NSXPCConnection currentConnection];
  v9 = v8;
  if (v8)
  {
    [v8 auditToken];
  }

  v10 = sandbox_check_by_audit_token();

  if (v10 == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100008DF4(fileSystemRepresentation);
    }

    goto LABEL_9;
  }

  if (v10 == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100008E74(fileSystemRepresentation);
    }

LABEL_9:
    v11 = -1;
    goto LABEL_13;
  }

  [extensionCopy UTF8String];
  v11 = sandbox_extension_consume();
  if (v11 < 0)
  {
    v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      sub_100008DB8(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

LABEL_13:

  return v11;
}

@end