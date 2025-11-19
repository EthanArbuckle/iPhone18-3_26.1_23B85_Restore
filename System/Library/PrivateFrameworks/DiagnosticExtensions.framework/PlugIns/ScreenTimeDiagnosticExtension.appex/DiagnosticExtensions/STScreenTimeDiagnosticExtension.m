@interface STScreenTimeDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation STScreenTimeDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v42 = 0;
  v5 = [v4 collectScreenTimeDatabaseAndReturnError:&v42];
  v6 = v42;
  v7 = +[STLog diagnostics];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully collected ScreenTime database", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100002E60(v6, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = [v3 objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];

  if ([v15 BOOLValue])
  {

    v40 = 0;
    v16 = [v4 collectDeviceActivityDatabaseAndReturnError:&v40];
    v17 = v40;
    v18 = +[STLog diagnostics];
    v19 = v18;
    if (v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Successfully collected DeviceActivity database", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100002ECC(v17, v19, v20, v21, v22, v23, v24, v25);
    }

    v39 = 0;
    v26 = [v4 collectBiomeStreamsAndReturnError:&v39];
    v6 = v39;
    v27 = +[STLog diagnostics];
    v28 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Successfully collected Biome streams", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100002F38(v6, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  v35 = +[STLocations diagnosticsDirectory];
  v36 = [DEAttachmentItem attachmentWithPathURL:v35];

  [v36 setDeleteOnAttach:&__kCFBooleanTrue];
  v43 = v36;
  v37 = [NSArray arrayWithObjects:&v43 count:1];

  return v37;
}

@end