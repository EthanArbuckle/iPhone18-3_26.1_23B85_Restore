@interface AppStoreService
- (void)startOperation:(id)operation toFetchAppStoreIconsForAppBundleIDs:(id)ds desiredSizeToScale:(CGSize)scale completionHandler:(id)handler;
@end

@implementation AppStoreService

- (void)startOperation:(id)operation toFetchAppStoreIconsForAppBundleIDs:(id)ds desiredSizeToScale:(CGSize)scale completionHandler:(id)handler
{
  height = scale.height;
  width = scale.width;
  operationCopy = operation;
  dsCopy = ds;
  handlerCopy = handler;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = sub_100001530;
  v64[4] = sub_100001540;
  v65 = 0;
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_100001548;
  v63[3] = &unk_100004200;
  v63[4] = v64;
  v38 = operationCopy;
  v44 = [operationCopy remoteObjectProxyWithErrorHandler:v63];
  v11 = objc_autoreleasePoolPush();
  v12 = [AMSBag bagForProfile:@"fileproviderd" profileVersion:@"1"];
  v13 = [[AMSMediaTask alloc] initWithType:0 clientIdentifier:@"com.apple.FileProvider" clientVersion:@"1" bag:v12];
  v77[0] = AMSMediaTaskPlatformiPad;
  v77[1] = AMSMediaTaskPlatformiPhone;
  v77[2] = AMSMediaTaskPlatformMac;
  v14 = [NSArray arrayWithObjects:v77 count:3];
  [v13 setAdditionalPlatforms:v14];

  [v13 setBundleIdentifiers:dsCopy];
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [dsCopy componentsJoinedByString:{@", "}];
    sub_1000018A0(v16, v76, v15);
  }

  perform = [v13 perform];
  v62 = 0;
  v18 = [perform resultWithTimeout:&v62 error:30.0];
  v19 = v62;
  if (v19)
  {
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      fp_prettyDescription = [v19 fp_prettyDescription];
      sub_1000018F8(fp_prettyDescription, v75, v20);
    }

    handlerCopy[2]();
    responseDataItems = 0;
  }

  else
  {
    responseDataItems = [v18 responseDataItems];
  }

  objc_autoreleasePoolPop(v11);
  if (!v19)
  {
    v22 = dispatch_group_create();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = responseDataItems;
    v23 = [obj countByEnumeratingWithState:&v58 objects:v74 count:16];
    group = v22;
    if (v23)
    {
      v47 = AMSMediaArtworkCropStyleBoundedBox;
      v48 = *v59;
      v46 = AMSMediaArtworkFormatPNG;
      v41 = AMSLookupItemArtworkFormatPNG;
      do
      {
        v49 = v23;
        for (i = 0; i != v49; i = i + 1)
        {
          if (*v59 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v25 = [*(*(&v58 + 1) + 8 * i) objectForKey:@"attributes"];
          v26 = v25;
          if (v25)
          {
            v50 = [v25 objectForKey:@"platformAttributes"];
            v27 = [v50 objectForKey:@"ios"];
            v28 = v27;
            if (!v27)
            {
              v28 = [v50 objectForKey:@"osx"];
            }

            v29 = [v28 objectForKey:@"bundleId"];
            v30 = [v28 objectForKey:@"artwork"];
            v31 = [[AMSMediaArtwork alloc] initWithDictionary:v30];
            v32 = [v31 URLWithSize:v47 cropStyle:v46 format:{width, height}];
            if (v32)
            {
              v33 = fp_current_or_default_log();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v67 = v29;
                _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] fetching remote icon for %@...", buf, 0xCu);
              }

              dispatch_group_enter(group);
              v34 = +[NSURLSession sharedSession];
              v53[0] = _NSConcreteStackBlock;
              v53[1] = 3221225472;
              v53[2] = sub_1000015B8;
              v53[3] = &unk_100004250;
              v54 = v29;
              v57 = v27 != 0;
              v55 = v44;
              v56 = group;
              v35 = objc_retainBlock(v53);
              v36 = [v34 downloadTaskWithURL:v32 completionHandler:v35];
              [v36 resume];
            }

            else
            {
              v34 = fp_current_or_default_log();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138413058;
                v67 = v29;
                v68 = 2048;
                v69 = width;
                v70 = 2048;
                v71 = height;
                v72 = 2112;
                v73 = v41;
                _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "[DEBUG] can't craft URL for %@ (s:%.2fx%.2f, format:%@)", buf, 0x2Au);
              }
            }
          }
        }

        v23 = [obj countByEnumeratingWithState:&v58 objects:v74 count:16];
      }

      while (v23);
    }

    if (qword_1000085E8 != -1)
    {
      sub_100001950();
    }

    v37 = qword_1000085F0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001814;
    block[3] = &unk_100004278;
    v52 = handlerCopy;
    dispatch_group_notify(group, v37, block);
  }

  _Block_object_dispose(v64, 8);
}

@end