int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

uint64_t sub_1000014B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000014D0(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Fail to run in time, exiting", v7, ClassName, Name, 63);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v9))
    {
      v10 = 43;
    }

    else
    {
      v10 = 45;
    }

    v11 = object_getClassName(*(a1 + 32));
    v12 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v15 = v10;
    v16 = 2082;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 1024;
    v21 = 63;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Fail to run in time, exiting", buf, 0x22u);
  }

  exit(-1);
}

void sub_100001610(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 objectForKey:@"FactoryInstall"];
    objc_opt_class();
    v4 = &__kCFBooleanFalse;
    if (objc_opt_isKindOfClass())
    {
      if ([v3 BOOLValue])
      {
        v5 = &__kCFBooleanTrue;
      }

      else
      {
        v5 = &__kCFBooleanFalse;
      }

      v4 = v5;
    }

    v6 = [*(a1 + 32) objectForKeyedSubscript:@"StockholmOnly"];

    objc_opt_class();
    v7 = &__kCFBooleanFalse;
    if (objc_opt_isKindOfClass())
    {
      if ([v6 BOOLValue])
      {
        v8 = &__kCFBooleanTrue;
      }

      else
      {
        v8 = &__kCFBooleanFalse;
      }

      v7 = v8;
    }

    v9 = [*(a1 + 32) objectForKeyedSubscript:@"HammerfestOnly"];

    objc_opt_class();
    v10 = &__kCFBooleanFalse;
    if (objc_opt_isKindOfClass())
    {
      if ([v9 BOOLValue])
      {
        v11 = &__kCFBooleanTrue;
      }

      else
      {
        v11 = &__kCFBooleanFalse;
      }

      v10 = v11;
    }
  }

  else
  {
    v10 = &__kCFBooleanFalse;
    v7 = &__kCFBooleanFalse;
    v4 = &__kCFBooleanFalse;
  }

  v58[0] = @"RootFilePath";
  v58[1] = @"JcopUpdateDisable";
  v59[0] = @"/usr/standalone/firmware/nfrestore/firmware";
  v59[1] = &__kCFBooleanTrue;
  v58[2] = @"FactoryInstall";
  v58[3] = @"StockholmOnly";
  v59[2] = v4;
  v59[3] = v7;
  v58[4] = @"HammerfestOnly";
  v59[4] = v10;
  v12 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:5];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v14 = Logger;
    Class = object_getClass(*(a1 + 40));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 40));
    Name = sel_getName(*(a1 + 72));
    v18 = 45;
    if (isMetaClass)
    {
      v18 = 43;
    }

    v14(5, "%c[%{public}s %{public}s]:%i Updating FW", v18, ClassName, Name, 99);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = object_getClass(*(a1 + 40));
    if (class_isMetaClass(v20))
    {
      v21 = 43;
    }

    else
    {
      v21 = 45;
    }

    v22 = object_getClassName(*(a1 + 40));
    v23 = sel_getName(*(a1 + 72));
    *buf = 67109890;
    v49 = v21;
    v50 = 2082;
    v51 = v22;
    v52 = 2082;
    v53 = v23;
    v54 = 1024;
    v55 = 99;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Updating FW", buf, 0x22u);
  }

  v24 = *(a1 + 40);
  v25 = NfRestore();
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v26 = NFLogGetLogger();
  if (v26)
  {
    v27 = v26;
    v28 = object_getClass(*(a1 + 40));
    v29 = class_isMetaClass(v28);
    v43 = object_getClassName(*(a1 + 40));
    v45 = sel_getName(*(a1 + 72));
    v30 = 45;
    if (v29)
    {
      v30 = 43;
    }

    v27(6, "%c[%{public}s %{public}s]:%i FW is updated with status %d", v30, v43, v45, 101, v25);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v31 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = object_getClass(*(a1 + 40));
    if (class_isMetaClass(v32))
    {
      v33 = 43;
    }

    else
    {
      v33 = 45;
    }

    v34 = object_getClassName(*(a1 + 40));
    v35 = sel_getName(*(a1 + 72));
    *buf = 67110146;
    v49 = v33;
    v50 = 2082;
    v51 = v34;
    v52 = 2082;
    v53 = v35;
    v54 = 1024;
    v55 = 101;
    v56 = 1024;
    v57 = v25;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i FW is updated with status %d", buf, 0x28u);
  }

  dispatch_source_cancel(*(*(*(a1 + 56) + 8) + 40));
  v36 = *(*(a1 + 56) + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = 0;

  v38 = *(a1 + 48);
  if (v25)
  {
    v46 = NSLocalizedDescriptionKey;
    v47 = @"Restore error";
    v39 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v40 = [NSError errorWithDomain:@"nfrestore" code:v25 userInfo:v39];
    (*(v38 + 16))(v38, 0, v40);
  }

  else
  {
    (*(v38 + 16))(*(a1 + 48), 0, 0);
  }

  v41 = *(*(a1 + 64) + 8);
  v42 = *(v41 + 40);
  *(v41 + 40) = 0;
}