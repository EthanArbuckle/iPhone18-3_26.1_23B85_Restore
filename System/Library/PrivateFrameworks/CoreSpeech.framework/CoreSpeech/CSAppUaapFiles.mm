@interface CSAppUaapFiles
+ (BOOL)enumerateUaapLocales:(id)locales error:(id *)error;
- (CSAppUaapFiles)initWithBundleId:(id)id assetDir:(id)dir forLanguage:(id)language;
- (CSAppUaapFiles)initWithBundleId:(id)id forLanguage:(id)language;
- (id)filesAsDictionary;
- (id)generateNextLmPath;
@end

@implementation CSAppUaapFiles

- (id)generateNextLmPath
{
  appLmPath = self->_appLmPath;
  if (appLmPath)
  {
    pathExtension = [(NSString *)appLmPath pathExtension];
    v5 = pathExtension;
    if (pathExtension)
    {
      v6 = [pathExtension integerValue] + 1;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_100060984(self->_bundleId, self->_language);
  v8 = [NSString stringWithFormat:@"LM.%ld", v6];
  v9 = [v7 stringByAppendingPathComponent:v8];

  return v9;
}

- (id)filesAsDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v3;
  appIntentsPath = self->_appIntentsPath;
  if (appIntentsPath)
  {
    [v3 setObject:appIntentsPath forKey:@"AppIntents"];
  }

  return v4;
}

- (CSAppUaapFiles)initWithBundleId:(id)id forLanguage:(id)language
{
  languageCopy = language;
  idCopy = id;
  v8 = sub_100060B30(idCopy, languageCopy);
  v9 = [(CSAppUaapFiles *)self initWithBundleId:idCopy assetDir:v8 forLanguage:languageCopy];

  return v9;
}

- (CSAppUaapFiles)initWithBundleId:(id)id assetDir:(id)dir forLanguage:(id)language
{
  idCopy = id;
  dirCopy = dir;
  languageCopy = language;
  v42.receiver = self;
  v42.super_class = CSAppUaapFiles;
  v12 = [(CSAppUaapFiles *)&v42 init];
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = +[NSFileManager defaultManager];
  v14 = [v13 contentsOfDirectoryAtPath:dirCopy error:0];

  if (!v14 || ![v14 count])
  {
LABEL_8:

    v27 = 0;
    goto LABEL_9;
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100060F68;
  v39[3] = &unk_10024F588;
  v40 = dirCopy;
  v15 = v12;
  v41 = v15;
  [v14 enumerateObjectsUsingBlock:v39];
  if (!v15->_appIntentsPath)
  {

    goto LABEL_8;
  }

  v16 = sub_100060984(idCopy, languageCopy);
  v17 = [v16 stringByAppendingPathComponent:@"LM"];
  appLmPath = v15->_appLmPath;
  v15->_appLmPath = v17;

  v19 = +[NSFileManager defaultManager];
  v20 = sub_100060984(idCopy, languageCopy);
  v30 = objc_alloc_init(NSMutableArray);
  v21 = [v20 stringByAppendingPathComponent:@"LM"];
  v22 = v15->_appLmPath;
  v15->_appLmPath = v21;

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v29 = v19;
  v32 = [v19 contentsOfDirectoryAtPath:v20 error:0];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100060FDC;
  v33[3] = &unk_10024F5B0;
  v23 = v30;
  v34 = v23;
  v31 = v20;
  v35 = v31;
  v37 = v38;
  v24 = v15;
  v36 = v24;
  [v32 enumerateObjectsUsingBlock:v33];

  [v23 removeObject:v15->_appLmPath];
  v25 = [NSArray arrayWithArray:v23];
  oldAppLmPaths = v24->_oldAppLmPaths;
  v24->_oldAppLmPaths = v25;

  objc_storeStrong(&v24->_language, language);
  objc_storeStrong(&v24->_bundleId, id);

  _Block_object_dispose(v38, 8);
LABEL_6:
  v27 = v12;
LABEL_9:

  return v27;
}

+ (BOOL)enumerateUaapLocales:(id)locales error:(id *)error
{
  localesCopy = locales;
  v6 = AFLibraryDirectoryWithSubPath();
  v7 = [v6 stringByAppendingPathComponent:@"SpeechModels"];

  v8 = +[NSFileManager defaultManager];
  v24 = 0;
  v9 = [v8 contentsOfDirectoryAtPath:v7 error:&v24];
  v10 = v24;
  v11 = v10;
  if (v9)
  {
    v23 = 0;
    v12 = +[NSRegularExpression regularExpressionWithPattern:options:error:](NSRegularExpression, "regularExpressionWithPattern:options:error:", @"^[a-z][a-z]-[A-Z][A-Z]$", 0, &v23);
    v13 = v23;
    v14 = v13;
    v15 = v12 != 0;
    if (v12)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100061288;
      v19[3] = &unk_10024F560;
      v20 = v12;
      v21 = v7;
      v22 = localesCopy;
      [v9 enumerateObjectsUsingBlock:v19];
    }

    else if (error)
    {
      v17 = v13;
      *error = v14;
    }
  }

  else if (error)
  {
    v16 = v10;
    v15 = 0;
    *error = v11;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end