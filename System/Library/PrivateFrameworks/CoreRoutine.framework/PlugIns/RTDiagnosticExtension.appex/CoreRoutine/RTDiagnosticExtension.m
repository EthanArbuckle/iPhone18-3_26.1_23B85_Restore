@interface RTDiagnosticExtension
+ (BOOL)isLocationMonitoringStudiesComponent:(id)a3;
+ (BOOL)isLocationWorkoutStudiesComponent:(id)a3;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation RTDiagnosticExtension

+ (BOOL)isLocationWorkoutStudiesComponent:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"componentID"];
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"componentID"];
    v6 = [&off_100004290 isEqualToNumber:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isLocationMonitoringStudiesComponent:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"componentID"];
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"componentID"];
    v6 = [&off_1000042A8 isEqualToNumber:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)attachmentsForParameters:(id)a3
{
  v4 = a3;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_1000014F8;
  v55 = sub_100001508;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_1000014F8;
  v49 = sub_100001508;
  v50 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = sub_1000015AC(&qword_100008148);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v59 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "diagnostic extension parameters, %@", buf, 0xCu);
    }
  }

  v6 = [v4 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if ([v6 isEqualToString:@"com.apple.taptoradard"])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 isEqualToString:@"com.apple.TapToRadar"];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v8 = sub_1000015AC(&qword_100008148);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      v12 = [v4 objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];
      v13 = v12;
      v14 = @"NO";
      *buf = 138413058;
      v60 = 2112;
      if (v7)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v59 = v10;
      v61 = v11;
      if (v12)
      {
        v14 = @"YES";
      }

      v62 = 2114;
      v63 = v15;
      v64 = 2114;
      v65 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@, %@, is host TTR app, %{public}@, consent, %{public}@", buf, 0x2Au);
    }
  }

  if (!v7 || ([v4 objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, !v17))
  {
    v18 = [[RTDiagnosticOptions alloc] initWithOptionsMask:0];
    if ([objc_opt_class() isLocationWorkoutStudiesComponent:v4])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v19 = sub_1000015AC(&qword_100008148);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = NSStringFromSelector(a2);
          *buf = 138412290;
          v59 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@, adding Location Workout Studies related diagnostic files", buf, 0xCu);
        }

        v21 = 2;
LABEL_24:

        goto LABEL_36;
      }

      v21 = 2;
    }

    else
    {
      v22 = [objc_opt_class() isLocationMonitoringStudiesComponent:v4];
      v23 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
      if (v22)
      {
        if (v23)
        {
          v24 = sub_1000015AC(&qword_100008148);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = NSStringFromSelector(a2);
            *buf = 138412290;
            v59 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%@, adding Location Monitoring Studies related diagnostic files", buf, 0xCu);
          }
        }

        [v18 setMask:4];
      }

      else if (v23)
      {
        v19 = sub_1000015AC(&qword_100008148);
        v21 = 1;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v26 = NSStringFromSelector(a2);
          *buf = 138412290;
          v59 = v26;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@, adding CoreRoutine related diagnostic files", buf, 0xCu);

          v21 = 1;
        }

        goto LABEL_24;
      }

      v21 = 1;
    }

LABEL_36:
    [v18 setMask:v21];
    v27 = dispatch_semaphore_create(0);
    v28 = +[RTRoutineManager defaultManager];
    v38 = _NSConcreteStackBlock;
    v39 = 3221225472;
    v40 = sub_100001510;
    v41 = &unk_100004180;
    v43 = &v51;
    v44 = &v45;
    v29 = v27;
    v42 = v29;
    [v28 fetchPathToDiagnosticFilesWithOptions:v18 handler:&v38];

    v30 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(v29, v30))
    {
      v31 = sub_1000015AC(&qword_100008148);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Timed-out waiting for fetchPathToDiagnosticFilesWithOptions:handler", buf, 2u);
      }

      v32 = &__NSArray0__struct;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v33 = sub_1000015AC(&qword_100008148);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = NSStringFromSelector(a2);
          v35 = v52[5];
          v36 = v46[5];
          *buf = 138412802;
          v59 = v34;
          v60 = 2112;
          v61 = v35;
          v62 = 2112;
          v63 = v36;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%@, path to CoreRoutine diagnostic files, %@, error, %@", buf, 0x20u);
        }
      }

      if (![v52[5] length])
      {
        v32 = &__NSArray0__struct;
        goto LABEL_47;
      }

      v31 = [DEAttachmentItem attachmentWithPath:v52[5]];
      v57 = v31;
      v32 = [NSArray arrayWithObjects:&v57 count:1];
    }

LABEL_47:
    goto LABEL_48;
  }

  v32 = &__NSArray0__struct;
LABEL_48:

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  return v32;
}

@end