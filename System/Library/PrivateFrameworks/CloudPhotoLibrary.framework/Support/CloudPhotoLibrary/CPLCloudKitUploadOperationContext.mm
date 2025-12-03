@interface CPLCloudKitUploadOperationContext
- (id)extendedStatusDescriptionStrings;
- (void)addRecord:(id)record forRecordID:(id)d ignoreResources:(BOOL)resources;
- (void)recordCompletionForRecordID:(id)d withError:(id)error;
- (void)updateProgress:(double)progress forRecordID:(id)d;
@end

@implementation CPLCloudKitUploadOperationContext

- (void)addRecord:(id)record forRecordID:(id)d ignoreResources:(BOOL)resources
{
  resourcesCopy = resources;
  recordCopy = record;
  dCopy = d;
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

  [(NSMutableDictionary *)recordIDToProgressMap setObject:&off_10028EC80 forKey:dCopy];
  [(NSMutableDictionary *)self->_recordIDToCPLRecordMap setObject:recordCopy forKey:dCopy];
  if (resourcesCopy)
  {
    ignoreResourcesForRecordIDs = self->_ignoreResourcesForRecordIDs;
    if (!ignoreResourcesForRecordIDs)
    {
      v15 = objc_alloc_init(NSMutableSet);
      v16 = self->_ignoreResourcesForRecordIDs;
      self->_ignoreResourcesForRecordIDs = v15;

      ignoreResourcesForRecordIDs = self->_ignoreResourcesForRecordIDs;
    }

    [(NSMutableSet *)ignoreResourcesForRecordIDs addObject:dCopy];
  }
}

- (void)updateProgress:(double)progress forRecordID:(id)d
{
  dCopy = d;
  v6 = [(NSMutableDictionary *)self->_recordIDToProgressMap objectForKey:?];

  if (v6)
  {
    v7 = [NSNumber numberWithInteger:(progress * 100.0)];
    [(NSMutableDictionary *)self->_recordIDToProgressMap setObject:v7 forKey:dCopy];
  }
}

- (void)recordCompletionForRecordID:(id)d withError:(id)error
{
  dCopy = d;
  v6 = [(NSMutableDictionary *)self->_recordIDToProgressMap objectForKey:?];

  if (v6)
  {
    if (error)
    {
      v7 = &off_10028EC98;
    }

    else
    {
      v7 = &off_10028ECB0;
    }

    [(NSMutableDictionary *)self->_recordIDToProgressMap setObject:v7 forKey:dCopy];
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
    selfCopy = self;
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
      selfCopy = [v9 initWithFormat:@"\tTotal for %lu resources in operation: %@", v10, v11, v16, v17, v18, v19, selfCopy];

      [v8 addObject:selfCopy];
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