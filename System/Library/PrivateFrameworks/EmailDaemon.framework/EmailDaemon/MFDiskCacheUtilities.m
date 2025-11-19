@interface MFDiskCacheUtilities
+ (id)_pathsForContentWithType:(unint64_t)a3;
+ (id)mailSpaceWithError:(id *)a3;
+ (id)systemSpaceWithError:(id *)a3;
+ (int64_t)deletePlaceholderAttachmentsWithCreationDateOver:(int64_t)a3;
+ (int64_t)deleteTemporaryDirectoryContent;
+ (int64_t)sizeForPurgeableTemporaryDirectoryContent;
+ (void)_enumerateContentPathsAndAttributes:(id)a3;
+ (void)_enumerateContentsForAccounts:(id)a3 withType:(unint64_t)a4 handler:(id)a5;
+ (void)_enumeratePurgeableContentsWithType:(unint64_t)a3 handler:(id)a4;
+ (void)_enumeratePurgeableFileInTemporaryDirectoryWithHandler:(id)a3;
@end

@implementation MFDiskCacheUtilities

+ (id)_pathsForContentWithType:(unint64_t)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = v4;
  if ((v3 & 2) != 0)
  {
    [v4 addObject:@"/Attachments"];
  }

  if (v3)
  {
    [v5 addObject:@"/Messages"];
  }

  return v5;
}

+ (void)_enumerateContentsForAccounts:(id)a3 withType:(unint64_t)a4 handler:(id)a5
{
  v21 = a3;
  v24 = a5;
  if (!v24)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"MFDiskCacheUtilities.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v9 = +[NSFileManager defaultManager];
  v22 = [a1 _pathsForContentWithType:a4];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  [v21 ef_flatMap:&stru_100158610];
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  obj = v33 = 0u;
  v18 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v18)
  {
    v19 = *v34;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v11 = v22;
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v12)
        {
          v13 = *v30;
          while (2)
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = [v10 stringByAppendingPathComponent:*(*(&v29 + 1) + 8 * j)];
              v25[0] = _NSConcreteStackBlock;
              v25[1] = 3221225472;
              v25[2] = sub_100061B1C;
              v25[3] = &unk_100158678;
              v27 = v24;
              v26 = v9;
              v28 = &v37;
              [v26 mf_enumerateAtPath:v15 withBlock:v25];
              v16 = *(v38 + 24);

              if (v16)
              {

                goto LABEL_20;
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v18);
  }

LABEL_20:

  _Block_object_dispose(&v37, 8);
}

+ (void)_enumeratePurgeableContentsWithType:(unint64_t)a3 handler:(id)a4
{
  v7 = a4;
  v6 = +[MailAccount purgeableAccounts];
  [a1 _enumerateContentsForAccounts:v6 withType:a3 handler:v7];
}

+ (void)_enumerateContentPathsAndAttributes:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"MFDiskCacheUtilities.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"fileHandler"}];
  }

  v6 = MFMailDirectory();
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 enumeratorAtPath:v6];
  v14 = 0;
  v9 = [v8 nextObject];
  if (v9)
  {
    do
    {
      v10 = [v6 stringByAppendingPathComponent:v9];
      v11 = [v7 attributesOfItemAtPath:v10 error:0];
      v5[2](v5, v7, v10, v11, &v14);

      v12 = [v8 nextObject];

      if (!v12)
      {
        break;
      }

      v9 = v12;
    }

    while ((v14 & 1) == 0);
  }
}

+ (id)systemSpaceWithError:(id *)a3
{
  v4 = +[NSFileManager defaultManager];
  v5 = MFMailDirectory();
  v13 = 0;
  v6 = [v4 attributesOfFileSystemForPath:v5 error:&v13];
  v7 = v13;

  if (v6)
  {
    v8 = [v6 objectForKey:NSFileSystemSize];
    v9 = [v6 objectForKey:NSFileSystemFreeSize];
    v10 = [NSDictionary dictionaryWithObjectsAndKeys:v8, @"MFFileSystemTotalSize", v9, @"MFFileSystemFreeSize", 0];
  }

  else
  {
    v10 = 0;
    if (a3 && v7)
    {
      v11 = v7;
      v10 = 0;
      *a3 = v7;
    }
  }

  return v10;
}

+ (id)mailSpaceWithError:(id *)a3
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000621B4;
  v10[3] = &unk_1001586A0;
  v10[4] = &v23;
  v10[5] = &v11;
  v10[6] = &v15;
  v10[7] = &v19;
  [a1 _enumerateContentPathsAndAttributes:v10];
  v4 = [NSNumber numberWithUnsignedLongLong:v24[3]];
  v5 = [NSNumber numberWithUnsignedLongLong:v16[3]];
  v6 = [NSNumber numberWithUnsignedLongLong:v12[3]];
  v7 = [NSNumber numberWithUnsignedLongLong:v20[3]];
  v8 = [NSDictionary dictionaryWithObjectsAndKeys:v4, @"MFMailTotalCacheSize", v5, @"MFMailMessageCacheSize", v6, @"MFMailAttachmentCacheSize", v7, @"MFMailHeaderCacheSize", 0];

  if (a3)
  {
    *a3 = 0;
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v8;
}

+ (int64_t)sizeForPurgeableTemporaryDirectoryContent
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062384;
  v4[3] = &unk_1001586C8;
  v4[4] = &v5;
  [a1 _enumeratePurgeableFileInTemporaryDirectoryWithHandler:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (int64_t)deletePlaceholderAttachmentsWithCreationDateOver:(int64_t)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v4 = +[MFAttachmentPlaceholder placeholderDirectory];
  v5 = +[NSFileManager defaultManager];
  v6 = +[NSCalendar currentCalendar];
  v7 = +[NSDate date];
  v8 = [v6 dateByAddingUnit:16 value:-a3 toDate:v7 options:0];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100062618;
  v13[3] = &unk_1001586F0;
  v14 = v8;
  v16 = &v17;
  v9 = v5;
  v15 = v9;
  v10 = v8;
  [v9 mf_enumerateAtPath:v4 withBlock:v13];
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

+ (int64_t)deleteTemporaryDirectoryContent
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000627C4;
  v4[3] = &unk_1001586C8;
  v4[4] = &v5;
  [a1 _enumeratePurgeableFileInTemporaryDirectoryWithHandler:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)_enumeratePurgeableFileInTemporaryDirectoryWithHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"MFDiskCacheUtilities.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v6 = +[NSCalendar currentCalendar];
  v7 = +[NSDate date];
  v8 = [v6 dateByAddingUnit:64 value:-30 toDate:v7 options:0];

  v9 = NSTemporaryDirectory();
  v10 = +[NSFileManager defaultManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100062AC8;
  v14[3] = &unk_100158718;
  v11 = v8;
  v15 = v11;
  v12 = v5;
  v16 = v12;
  [v10 mf_enumerateAtPath:v9 withBlock:v14];
}

@end