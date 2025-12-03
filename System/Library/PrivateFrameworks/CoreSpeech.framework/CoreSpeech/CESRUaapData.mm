@interface CESRUaapData
+ (BOOL)removeUaapOovsForLanguage:(id)language bundleId:(id)id;
+ (BOOL)writeUaapOovsForLanguage:(id)language bundleId:(id)id customProns:(id)prons newOovs:(id)oovs error:(id *)error;
+ (id)readUaapOovsForLanguage:(id)language;
@end

@implementation CESRUaapData

+ (BOOL)removeUaapOovsForLanguage:(id)language bundleId:(id)id
{
  idCopy = id;
  v6 = sub_1000091D4(language);
  v7 = [v6 stringByAppendingPathComponent:idCopy];

  v8 = [v7 stringByAppendingPathComponent:@"Prons"];
  v9 = +[NSFileManager defaultManager];
  v10 = [v9 removeItemAtPath:v8 error:0];

  return v10;
}

+ (BOOL)writeUaapOovsForLanguage:(id)language bundleId:(id)id customProns:(id)prons newOovs:(id)oovs error:(id *)error
{
  idCopy = id;
  oovsCopy = oovs;
  pronsCopy = prons;
  languageCopy = language;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10000966C;
  v38[3] = &unk_10024E080;
  v14 = objc_alloc_init(NSMutableDictionary);
  v39 = v14;
  [oovsCopy enumerateObjectsUsingBlock:v38];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000096E4;
  v36[3] = &unk_10024E0A8;
  v15 = v14;
  v37 = v15;
  [pronsCopy enumerateKeysAndObjectsUsingBlock:v36];

  v16 = sub_1000091D4(languageCopy);

  v17 = [v16 stringByAppendingPathComponent:idCopy];

  v18 = [v17 stringByAppendingPathComponent:@"Prons"];
  v19 = +[NSFileManager defaultManager];
  v20 = [NSURL fileURLWithPath:v17];
  v46 = NSFileProtectionKey;
  v47 = NSFileProtectionNone;
  v21 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v35 = 0;
  v22 = [v19 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:v21 error:&v35];
  v23 = v35;

  if (v22)
  {
    v24 = [NSURL fileURLWithPath:v18];
    v34 = v23;
    v25 = [v15 writeToURL:v24 error:&v34];
    v26 = v34;

    if (v25)
    {
      v27 = 1;
LABEL_14:
      v23 = v26;
      goto LABEL_15;
    }

    v30 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v41 = "+[CESRUaapData writeUaapOovsForLanguage:bundleId:customProns:newOovs:error:]";
      v42 = 2112;
      v43 = idCopy;
      v44 = 2112;
      v45 = v26;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s Failed to write app-specific OOVs for %@: %@", buf, 0x20u);
    }

    errorCopy2 = error;
    if (!error)
    {
      v27 = 0;
      goto LABEL_14;
    }

    v23 = v26;
    goto LABEL_12;
  }

  v28 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v41 = "+[CESRUaapData writeUaapOovsForLanguage:bundleId:customProns:newOovs:error:]";
    v42 = 2112;
    v43 = idCopy;
    v44 = 2112;
    v45 = v23;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Failed to create UaaP app directory for %@: %@", buf, 0x20u);
  }

  errorCopy2 = error;
  if (error)
  {
LABEL_12:
    v31 = v23;
    v27 = 0;
    *errorCopy2 = v23;
    goto LABEL_15;
  }

  v27 = 0;
LABEL_15:

  return v27;
}

+ (id)readUaapOovsForLanguage:(id)language
{
  v3 = sub_1000091D4(language);
  v4 = +[NSFileManager defaultManager];
  v15 = 0;
  v5 = [v4 contentsOfDirectoryAtPath:v3 error:&v15];
  v6 = v15;
  if (v6)
  {
    v7 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "+[CESRUaapData readUaapOovsForLanguage:]";
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to enumerate UaaP pron directory at %@: %@", buf, 0x20u);
    }

    v8 = 0;
  }

  else
  {
    v9 = objc_alloc_init(NSMutableArray);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000993C;
    v12[3] = &unk_10024F588;
    v13 = v3;
    v14 = v9;
    v10 = v9;
    [v5 enumerateObjectsUsingBlock:v12];
    v8 = [NSArray arrayWithArray:v10];
  }

  return v8;
}

@end