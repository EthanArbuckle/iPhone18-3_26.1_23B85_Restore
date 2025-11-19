void RunBlockWithSandboxExtension(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (v5)
  {
    [v5 bytes];
    v4 = sandbox_extension_consume();
    v3[2](v3);
    if (v4)
    {
      sandbox_extension_release();
    }
  }

  else
  {
    v3[2](v3);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_alloc_init(FontProviderLoaderServiceDelegate);
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100001974(id a1)
{
  qword_10000CCB8 = dispatch_semaphore_create(1);

  _objc_release_x1();
}

void sub_100001A4C(id a1)
{
  v5 = +[UMUserManager sharedManager];
  v1 = [v5 isMultiUser];
  v2 = [v5 currentUser];
  v3 = [v2 userType];

  if (v3 == 1)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  byte_10000CCC8 = v4;
}

void sub_100001B18(id a1)
{
  v1 = container_system_group_path_for_identifier();
  if (v1)
  {
    v2 = v1;
    v3 = [NSURL fileURLWithFileSystemRepresentation:v1 isDirectory:1 relativeToURL:0];
    v4 = qword_10000CCD8;
    qword_10000CCD8 = v3;

    free(v2);
  }
}

uint64_t sub_100001C28(uint64_t a1)
{
  if ([*(a1 + 32) isDeviceInEduMode])
  {
    v2 = [*(a1 + 32) systemContainerURL];
    v3 = [v2 URLByAppendingPathComponent:@"Library"];
    v4 = [v3 path];
    v5 = qword_10000CCE8;
    qword_10000CCE8 = v4;
  }

  else
  {
    v2 = qword_10000CCE8;
    qword_10000CCE8 = @"/var/mobile/Library/OnDemandResources";
  }

  qword_10000CCE8 = [qword_10000CCE8 stringByAppendingPathComponent:@"AssetPacks"];

  return _objc_release_x1();
}

id sub_100002280(void *a1)
{
  v1 = [a1 absoluteURL];
  v2 = [v1 URLByStandardizingPath];

  return v2;
}

void sub_1000022CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 objectForKey:@"NSCTFontFileURLAttribute"];
  v7 = v6;
  if (*(a1 + 72) == 1 && v6 == 0)
  {
    v39 = @"FontProviderErrorUserInfoFontInfoParameterIndexesKey";
    v11 = [NSNumber numberWithUnsignedInteger:a3];
    v38 = v11;
    v12 = [NSArray arrayWithObjects:&v38 count:1];
    v40 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v9 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:7 userInfo:v13];

    v14 = *(a1 + 32);
  }

  else
  {
    if (v6)
    {
      v9 = [*(a1 + 40) objectForKey:v6];
      if (v9)
      {
        v10 = [NSNumber numberWithUnsignedInteger:a3];
        [v9 addObject:v10];
LABEL_8:

LABEL_15:
        v36 = @"FontProviderErrorUserInfoFontInfoParameterIndexesKey";
        v17 = [NSNumber numberWithUnsignedInteger:a3];
        v35 = v17;
        v18 = [NSArray arrayWithObjects:&v35 count:1];
        v37 = v18;
        v19 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v20 = [NSError errorWithDomain:@"FontProviderErrorDomain" code:3 userInfo:v19];

        [*(a1 + 32) addObject:v20];
LABEL_16:

        goto LABEL_17;
      }

      if (![v7 isFileURL])
      {
        goto LABEL_15;
      }

      if (*(a1 + 73) == 1)
      {
        v10 = sub_100002280(v7);
      }

      else
      {
        v21 = [v5 objectForKey:@"CTFontIgnoreURLLocationAttribute"];
        v22 = [v21 BOOLValue];

        v10 = sub_100002280(v7);
        if ((v22 & 1) == 0 && (!*(a1 + 48) || ([*(a1 + 56) isFileURL:v10 forApplicationBundlePath:?] & 1) == 0) && !objc_msgSend(*(a1 + 56), "isOnDemandResourceFile:", v10))
        {
          goto LABEL_8;
        }
      }

      v20 = objc_opt_new();
      v23 = [NSNumber numberWithUnsignedInteger:a3];
      [v20 addObject:v23];

      [*(a1 + 40) setObject:v20 forKey:v7];
      v24 = [v5 mutableCopy];
      [v24 setObject:v20 forKey:@"parameterIndexes"];
      v25 = [v5 objectForKey:@"sandbox"];
      v28 = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_10000275C;
      v31 = &unk_1000083D8;
      v32 = v10;
      v33 = v24;
      v26 = v24;
      v27 = v10;
      RunBlockWithSandboxExtension(v25, &v28);

      [*(a1 + 64) addObject:{v26, v28, v29, v30, v31}];
      goto LABEL_16;
    }

    v9 = [v5 mutableCopy];
    v15 = [NSNumber numberWithUnsignedInteger:a3];
    v34 = v15;
    v16 = [NSArray arrayWithObjects:&v34 count:1];
    [v9 setObject:v16 forKey:@"parameterIndexes"];

    [v9 removeObjectForKey:@"sandbox"];
    v14 = *(a1 + 64);
  }

  [v14 addObject:v9];
LABEL_17:
}

void sub_10000275C(uint64_t a1)
{
  v2 = [*(a1 + 32) path];
  [v2 UTF8String];

  +[FSUserFontManager auditToken];
  v3 = sandbox_extension_issue_file_to_process();
  if (v3 && ([NSData dataWithBytesNoCopy:v3 length:strlen(v3) + 1 freeWhenDone:1], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    [*(a1 + 40) setValue:v4 forKey:@"sandbox"];
  }

  else
  {
    [*(a1 + 40) removeObjectForKey:@"sandbox"];
  }
}

void sub_100002850(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) addObjectsFromArray:v7];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32), v5);
  }
}

void sub_100002C24(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 mutableCopy];
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v8 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [v5 setObject:v7 forKey:@"parameterIndexes"];

  [*(a1 + 32) addObject:v5];
}

void sub_100002CF8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) addObjectsFromArray:v7];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32), v5);
  }
}

void sub_100002EF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = [NSMutableDictionary dictionaryWithCapacity:0];
  [v9 setObject:v5 forKey:@"NSFontFamilyAttribute"];

  [v9 setObject:v6 forKey:@"NSFontNameAttribute"];
  v7 = *(a1 + 32);
  if (v7)
  {
    [v9 setObject:v7 forKey:@"CTFontRegistrationUserInfoAttribute"];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    [v9 setObject:v8 forKey:@"NSCTFontFileURLAttribute"];
  }

  [*(a1 + 48) addObject:v9];
}