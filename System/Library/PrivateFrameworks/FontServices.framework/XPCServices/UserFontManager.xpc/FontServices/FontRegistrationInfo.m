@interface FontRegistrationInfo
+ (id)dictionaryFileURLForTargetDirectoryURL:(id)a3;
- (BOOL)isKnownDestinationFileURL:(id)a3 uuid:(id *)a4;
- (BOOL)isKnownFontInfo:(id)a3;
- (BOOL)isKnownSourceFileURL:(id)a3 uuid:(id *)a4;
- (BOOL)isKnownUserSpecifiedInfo:(id)a3;
- (FontRegistrationInfo)initWithTargetDirectoryURL:(id)a3;
- (id)externalizeFontInfo:(id)a3;
- (id)fontInfoForUUID:(id)a3;
- (id)internalizeFontInfo:(id)a3;
- (id)souceFontFileURLStringForUUID:(id)a3;
- (id)subpathForAppBundlePath:(id)a3;
- (id)uuidNameForFontInfo:(id)a3;
- (id)uuidsForUserInfo:(id)a3;
- (void)update;
@end

@implementation FontRegistrationInfo

+ (id)dictionaryFileURLForTargetDirectoryURL:(id)a3
{
  v3 = a3;
  v4 = [v3 lastPathComponent];
  v5 = [v3 URLByDeletingLastPathComponent];

  v6 = [v5 URLByDeletingLastPathComponent];

  v7 = [NSString stringWithFormat:@"%@.plist", v4];
  v8 = [v6 URLByAppendingPathComponent:v7];

  return v8;
}

- (id)internalizeFontInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [v4 objectForKey:@"CTFontIgnoreURLLocationAttribute"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [v4 removeObjectForKey:@"CTFontIgnoreURLLocationAttribute"];
    [v4 removeObjectForKey:@"NSCTFontFileURLAttribute"];
    [v4 removeObjectForKey:@"CTFontAssetDataAttribute"];
  }

  else
  {
    v7 = [v3 objectForKey:@"NSCTFontFileURLAttribute"];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 absoluteString];
      [v4 setObject:v9 forKey:@"NSCTFontFileURLAttribute"];
    }
  }

  [v4 removeObjectForKey:@"sandbox"];

  return v4;
}

- (id)externalizeFontInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [v3 objectForKey:@"NSCTFontFileURLAttribute"];

  if (v5)
  {
    v6 = [NSURL URLWithString:v5];
    [v4 setObject:v6 forKey:@"NSCTFontFileURLAttribute"];
  }

  return v4;
}

- (FontRegistrationInfo)initWithTargetDirectoryURL:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = FontRegistrationInfo;
  v6 = [(FontRegistrationInfo *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetDirectoryURL, a3);
    v8 = [objc_opt_class() dictionaryFileURLForTargetDirectoryURL:v5];
    sourceDictFileURL = v7->_sourceDictFileURL;
    v7->_sourceDictFileURL = v8;

    v10 = +[NSFileManager defaultManager];
    v11 = [(NSURL *)v7->_sourceDictFileURL path];
    v12 = [v10 fileExistsAtPath:v11];

    if (v12)
    {
      v13 = [NSInputStream inputStreamWithURL:v7->_sourceDictFileURL];
      [v13 open];
      v22 = 0;
      v14 = [NSPropertyListSerialization propertyListWithStream:v13 options:1 format:0 error:&v22];
      v15 = v22;
      uuidToFontInfo = v7->_uuidToFontInfo;
      v7->_uuidToFontInfo = v14;

      [v13 close];
      if (v15)
      {
        v17 = [(NSURL *)v7->_sourceDictFileURL path];
        v21 = [v15 domain];
        [v15 code];
        FSLog_Error();
      }
    }

    if (!v7->_uuidToFontInfo)
    {
      v18 = [NSMutableDictionary dictionaryWithCapacity:0];
      v19 = v7->_uuidToFontInfo;
      v7->_uuidToFontInfo = v18;
    }
  }

  return v7;
}

- (id)uuidNameForFontInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"NSCTFontFileURLAttribute"];
  v13 = 0;
  v6 = [(FontRegistrationInfo *)self isKnownSourceFileURL:v5 uuid:&v13];
  v7 = v13;
  if ((v6 & 1) == 0)
  {
    v8 = +[NSUUID UUID];
    v9 = [v8 UUIDString];

    self->_modified = 1;
    uuidToFontInfo = self->_uuidToFontInfo;
    v11 = [(FontRegistrationInfo *)self internalizeFontInfo:v4];
    [(NSMutableDictionary *)uuidToFontInfo setObject:v11 forKey:v9];

    v7 = v9;
  }

  return v7;
}

- (id)uuidsForUserInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_new();
    uuidToFontInfo = self->_uuidToFontInfo;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000848C;
    v11[3] = &unk_100010410;
    v12 = v4;
    v7 = v5;
    v13 = v7;
    [(NSMutableDictionary *)uuidToFontInfo enumerateKeysAndObjectsUsingBlock:v11];
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)subpathForAppBundlePath:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@".app/"];
  if (v5)
  {
    v6 = [v3 substringFromIndex:v4 + 5];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

- (BOOL)isKnownSourceFileURL:(id)a3 uuid:(id *)a4
{
  v6 = a3;
  v7 = [v6 absoluteString];
  v8 = [(FontRegistrationInfo *)self subpathForAppBundlePath:v7];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100004184;
  v21 = sub_100004194;
  v22 = 0;
  uuidToFontInfo = self->_uuidToFontInfo;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008714;
  v13[3] = &unk_1000105C8;
  v13[4] = self;
  v10 = v8;
  v14 = v10;
  v15 = &v23;
  v16 = &v17;
  [(NSMutableDictionary *)uuidToFontInfo enumerateKeysAndObjectsUsingBlock:v13];
  if (a4)
  {
    *a4 = v18[5];
  }

  v11 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (BOOL)isKnownDestinationFileURL:(id)a3 uuid:(id *)a4
{
  v6 = a3;
  v7 = [v6 path];
  v8 = [(NSURL *)self->_targetDirectoryURL path];
  if ([v7 hasPrefix:v8])
  {
    v9 = [v6 lastPathComponent];
    v10 = [(NSMutableDictionary *)self->_uuidToFontInfo objectForKey:v9];

    if (v10)
    {
      v10 = v9;
    }

    if (a4)
    {
      v11 = v10;
      *a4 = v10;
    }

    v12 = v10 != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isKnownFontInfo:(id)a3
{
  v4 = [a3 objectForKey:@"NSCTFontFileURLAttribute"];
  if (v4)
  {
    v5 = [(FontRegistrationInfo *)self isKnownSourceFileURL:v4 uuid:0];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)isKnownUserSpecifiedInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    uuidToFontInfo = self->_uuidToFontInfo;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100008A10;
    v9[3] = &unk_1000105F0;
    v11 = &v12;
    v10 = v4;
    [(NSMutableDictionary *)uuidToFontInfo enumerateKeysAndObjectsUsingBlock:v9];
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (id)fontInfoForUUID:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_uuidToFontInfo objectForKey:a3];
  v5 = [(FontRegistrationInfo *)self externalizeFontInfo:v4];

  return v5;
}

- (id)souceFontFileURLStringForUUID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_uuidToFontInfo objectForKey:a3];
  v4 = [v3 objectForKey:@"NSCTFontFileURLAttribute"];

  return v4;
}

- (void)update
{
  if (self->_modified)
  {
    v20 = v2;
    v21 = v3;
    v5 = +[NSFileManager defaultManager];
    v6 = [(NSURL *)self->_targetDirectoryURL path];
    v7 = [v5 contentsOfDirectoryAtPath:v6 error:0];

    v8 = [NSMutableDictionary dictionaryWithCapacity:0];
    uuidToFontInfo = self->_uuidToFontInfo;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100008D88;
    v17[3] = &unk_100010410;
    v10 = v7;
    v18 = v10;
    v11 = v8;
    v19 = v11;
    [(NSMutableDictionary *)uuidToFontInfo enumerateKeysAndObjectsUsingBlock:v17];
    if ([v11 count])
    {
      v12 = [NSOutputStream outputStreamWithURL:self->_sourceDictFileURL append:0];
      [v12 open];
      v16 = 0;
      [NSPropertyListSerialization writePropertyList:v11 toStream:v12 format:200 options:0 error:&v16];
      v13 = v16;
      [v12 close];
      if (v13)
      {
        v14 = [(NSURL *)self->_sourceDictFileURL path];
        v15 = [v13 domain];
        [v13 code];
        FSLog_Error();
      }
    }

    else
    {
      v13 = +[NSFileManager defaultManager];
      [v13 removeItemAtURL:self->_sourceDictFileURL error:0];
    }
  }
}

@end