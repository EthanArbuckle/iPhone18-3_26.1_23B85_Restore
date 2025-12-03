@interface VoiceMemosDiagnosticsExtension
- (id)_generateAttachments;
@end

@implementation VoiceMemosDiagnosticsExtension

- (id)_generateAttachments
{
  v2 = objc_opt_new();
  v3 = [RCPersistentContainer alloc];
  v4 = RCCloudRecordingsStoreURL();
  v5 = [v3 initWithURL:v4];

  newBackgroundModel = [v5 newBackgroundModel];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100000D9C;
  v23[3] = &unk_100004158;
  v7 = v2;
  v24 = v7;
  v8 = objc_retainBlock(v23);
  v9 = RCLogsDirectoryURL();
  path = [v9 path];

  v11 = [path stringByAppendingPathComponent:@"VoiceMemos-AllRecordings.txt"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100000F40;
  v21[3] = &unk_1000041A8;
  v12 = newBackgroundModel;
  v22 = v12;
  (v8[2])(v8, v11, v21);
  v13 = [path stringByAppendingPathComponent:@"VoiceMemos-PersistentHistory.txt"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001120;
  v19[3] = &unk_1000041A8;
  v20 = v12;
  v14 = v8[2];
  v15 = v12;
  v14(v8, v13, v19);
  v16 = v20;
  v17 = v7;

  return v7;
}

@end