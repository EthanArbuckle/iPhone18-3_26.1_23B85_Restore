@interface FontRegistrationInfo
+ (id)dictionaryFileURLForTargetDirectoryURL:(id)l;
- (BOOL)isKnownDestinationFileURL:(id)l uuid:(id *)uuid;
- (BOOL)isKnownFontInfo:(id)info;
- (BOOL)isKnownSourceFileURL:(id)l uuid:(id *)uuid;
- (BOOL)isKnownUserSpecifiedInfo:(id)info;
- (FontRegistrationInfo)initWithTargetDirectoryURL:(id)l;
- (id)externalizeFontInfo:(id)info;
- (id)fontInfoForUUID:(id)d;
- (id)internalizeFontInfo:(id)info;
- (id)souceFontFileURLStringForUUID:(id)d;
- (id)subpathForAppBundlePath:(id)path;
- (id)uuidNameForFontInfo:(id)info;
- (id)uuidsForUserInfo:(id)info;
- (void)update;
@end

@implementation FontRegistrationInfo

+ (id)dictionaryFileURLForTargetDirectoryURL:(id)l
{
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];

  v5URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];

  v7 = [NSString stringWithFormat:@"%@.plist", lastPathComponent];
  v8 = [v5URLByDeletingLastPathComponent URLByAppendingPathComponent:v7];

  return v8;
}

- (id)internalizeFontInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy mutableCopy];
  v5 = [v4 objectForKey:@"CTFontIgnoreURLLocationAttribute"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    [v4 removeObjectForKey:@"CTFontIgnoreURLLocationAttribute"];
    [v4 removeObjectForKey:@"NSCTFontFileURLAttribute"];
    [v4 removeObjectForKey:@"CTFontAssetDataAttribute"];
  }

  else
  {
    v7 = [infoCopy objectForKey:@"NSCTFontFileURLAttribute"];
    v8 = v7;
    if (v7)
    {
      absoluteString = [v7 absoluteString];
      [v4 setObject:absoluteString forKey:@"NSCTFontFileURLAttribute"];
    }
  }

  [v4 removeObjectForKey:@"sandbox"];

  return v4;
}

- (id)externalizeFontInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy mutableCopy];
  v5 = [infoCopy objectForKey:@"NSCTFontFileURLAttribute"];

  if (v5)
  {
    v6 = [NSURL URLWithString:v5];
    [v4 setObject:v6 forKey:@"NSCTFontFileURLAttribute"];
  }

  return v4;
}

- (FontRegistrationInfo)initWithTargetDirectoryURL:(id)l
{
  lCopy = l;
  v23.receiver = self;
  v23.super_class = FontRegistrationInfo;
  v6 = [(FontRegistrationInfo *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetDirectoryURL, l);
    v8 = [objc_opt_class() dictionaryFileURLForTargetDirectoryURL:lCopy];
    sourceDictFileURL = v7->_sourceDictFileURL;
    v7->_sourceDictFileURL = v8;

    v10 = +[NSFileManager defaultManager];
    path = [(NSURL *)v7->_sourceDictFileURL path];
    v12 = [v10 fileExistsAtPath:path];

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
        path2 = [(NSURL *)v7->_sourceDictFileURL path];
        domain = [v15 domain];
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

- (id)uuidNameForFontInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKey:@"NSCTFontFileURLAttribute"];
  v13 = 0;
  v6 = [(FontRegistrationInfo *)self isKnownSourceFileURL:v5 uuid:&v13];
  v7 = v13;
  if ((v6 & 1) == 0)
  {
    v8 = +[NSUUID UUID];
    uUIDString = [v8 UUIDString];

    self->_modified = 1;
    uuidToFontInfo = self->_uuidToFontInfo;
    v11 = [(FontRegistrationInfo *)self internalizeFontInfo:infoCopy];
    [(NSMutableDictionary *)uuidToFontInfo setObject:v11 forKey:uUIDString];

    v7 = uUIDString;
  }

  return v7;
}

- (id)uuidsForUserInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v5 = objc_opt_new();
    uuidToFontInfo = self->_uuidToFontInfo;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000848C;
    v11[3] = &unk_100010410;
    v12 = infoCopy;
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

- (id)subpathForAppBundlePath:(id)path
{
  pathCopy = path;
  v4 = [pathCopy rangeOfString:@".app/"];
  if (v5)
  {
    v6 = [pathCopy substringFromIndex:v4 + 5];
  }

  else
  {
    v6 = pathCopy;
  }

  v7 = v6;

  return v7;
}

- (BOOL)isKnownSourceFileURL:(id)l uuid:(id *)uuid
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  v8 = [(FontRegistrationInfo *)self subpathForAppBundlePath:absoluteString];
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
  if (uuid)
  {
    *uuid = v18[5];
  }

  v11 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (BOOL)isKnownDestinationFileURL:(id)l uuid:(id *)uuid
{
  lCopy = l;
  path = [lCopy path];
  path2 = [(NSURL *)self->_targetDirectoryURL path];
  if ([path hasPrefix:path2])
  {
    lastPathComponent = [lCopy lastPathComponent];
    v10 = [(NSMutableDictionary *)self->_uuidToFontInfo objectForKey:lastPathComponent];

    if (v10)
    {
      v10 = lastPathComponent;
    }

    if (uuid)
    {
      v11 = v10;
      *uuid = v10;
    }

    v12 = v10 != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isKnownFontInfo:(id)info
{
  v4 = [info objectForKey:@"NSCTFontFileURLAttribute"];
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

- (BOOL)isKnownUserSpecifiedInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
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
    v10 = infoCopy;
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

- (id)fontInfoForUUID:(id)d
{
  v4 = [(NSMutableDictionary *)self->_uuidToFontInfo objectForKey:d];
  v5 = [(FontRegistrationInfo *)self externalizeFontInfo:v4];

  return v5;
}

- (id)souceFontFileURLStringForUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_uuidToFontInfo objectForKey:d];
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
    path = [(NSURL *)self->_targetDirectoryURL path];
    v7 = [v5 contentsOfDirectoryAtPath:path error:0];

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
        path2 = [(NSURL *)self->_sourceDictFileURL path];
        domain = [v13 domain];
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