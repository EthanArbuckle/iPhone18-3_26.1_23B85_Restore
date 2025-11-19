@interface CPLCloudKitUploadOperationContext
- (id)extendedStatusDescriptionStrings;
- (void)addRecord:(id)a3 forRecordID:(id)a4 ignoreResources:(BOOL)a5;
- (void)recordCompletionForRecordID:(id)a3 withError:(id)a4;
- (void)updateProgress:(double)a3 forRecordID:(id)a4;
@end

@implementation CPLCloudKitUploadOperationContext

- (void)addRecord:(id)a3 forRecordID:(id)a4 ignoreResources:(BOOL)a5
{
  v5 = a5;
  v17 = a3;
  v8 = a4;
  recordIDToProgressMap = self->_recordIDToProgressMap;
  if (!recordIDToProgressMap)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = self->_recordIDToProgressMap;
    self->_recordIDToProgressMap = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    recordIDToCPLRecordMap = self->_recordIDToCPLRecordMap;
    self->_recordIDToCPLRecordMap = v12;

    recordIDToProgressMap = self->_recordIDToProgressMap;
  }

  [(NSMutableDictionary *)recordIDToProgressMap setObject:&off_10028EC80 forKey:v8];
  [(NSMutableDictionary *)self->_recordIDToCPLRecordMap setObject:v17 forKey:v8];
  if (v5)
  {
    ignoreResourcesForRecordIDs = self->_ignoreResourcesForRecordIDs;
    if (!ignoreResourcesForRecordIDs)
    {
      v15 = objc_alloc_init(NSMutableSet);
      v16 = self->_ignoreResourcesForRecordIDs;
      self->_ignoreResourcesForRecordIDs = v15;

      ignoreResourcesForRecordIDs = self->_ignoreResourcesForRecordIDs;
    }

    [(NSMutableSet *)ignoreResourcesForRecordIDs addObject:v8];
  }
}

- (void)updateProgress:(double)a3 forRecordID:(id)a4
{
  v8 = a4;
  v6 = [(NSMutableDictionary *)self->_recordIDToProgressMap objectForKey:?];

  if (v6)
  {
    v7 = [NSNumber numberWithInteger:(a3 * 100.0)];
    [(NSMutableDictionary *)self->_recordIDToProgressMap setObject:v7 forKey:v8];
  }
}

- (void)recordCompletionForRecordID:(id)a3 withError:(id)a4
{
  v8 = a3;
  v6 = [(NSMutableDictionary *)self->_recordIDToProgressMap objectForKey:?];

  if (v6)
  {
    if (a4)
    {
      v7 = &off_10028EC98;
    }

    else
    {
      v7 = &off_10028ECB0;
    }

    [(NSMutableDictionary *)self->_recordIDToProgressMap setObject:v7 forKey:v8];
  }
}

- (id)extendedStatusDescriptionStrings
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(NSMutableDictionary *)self->_recordIDToProgressMap count];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"CPLUseCompactCloudKitStatus"];

  if (v4)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    recordIDToProgressMap = self->_recordIDToProgressMap;
    v29 = 0;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10003D0D0;
    v19 = &unk_100273D60;
    v20 = self;
    v22 = &v26;
    v25 = v6 ^ 1;
    v8 = v3;
    v21 = v8;
    v23 = &v30;
    v24 = &v34;
    [(NSMutableDictionary *)recordIDToProgressMap enumerateKeysAndObjectsUsingBlock:&v16];
    if ((v6 & 1) != 0 || v31[3] >= 2)
    {
      v9 = [NSString alloc];
      v10 = v31[3];
      v11 = [NSByteCountFormatter stringFromByteCount:v35[3] countStyle:3];
      v12 = [v9 initWithFormat:@"\tTotal for %lu resources in operation: %@", v10, v11, v16, v17, v18, v19, v20];

      [v8 addObject:v12];
    }

    if (v27[3])
    {
      v13 = [NSString alloc];
      v14 = [v13 initWithFormat:@"\t\t%lu records uploaded", v27[3]];
      [v8 addObject:v14];
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
  }

  return v3;
}

@end