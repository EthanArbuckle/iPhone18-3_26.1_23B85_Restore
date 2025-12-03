@interface NTKFaceSnapshotService
+ (id)sharedSnapshotter;
+ (void)_prepareForSnapshot;
+ (void)_purgeSnapshotCausedCachedData;
- (void)provideSnapshotOfFaceInstanceDescriptor:(id)descriptor options:(id)options completion:(id)completion;
- (void)requestSnapshotOfFaceInstanceDescriptor:(id)descriptor options:(id)options completion:(id)completion;
@end

@implementation NTKFaceSnapshotService

+ (id)sharedSnapshotter
{
  if (qword_1000086C8 != -1)
  {
    sub_100001FCC();
  }

  v3 = qword_1000086C0;

  return v3;
}

+ (void)_prepareForSnapshot
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:UIApplicationDidBecomeActiveNotification object:0];
  v3 = +[CLKDevice currentDevice];
  isLocked = [v3 isLocked];

  v5 = +[CLKDevice currentDevice];
  unlockedSinceBoot = [v5 unlockedSinceBoot];

  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = isLocked;
    v10 = 2048;
    v11 = unlockedSinceBoot;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Preparing Snapshot: Locked? %ld Ever Unlocked? %ld", &v8, 0x16u);
  }
}

+ (void)_purgeSnapshotCausedCachedData
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:CLKClearCacheRequestNotification object:0];
  [v3 postNotificationName:UIApplicationDidEnterBackgroundNotification object:0];
  +[UIFont _evictAllItemsFromFontAndFontDescriptorCaches];
  CTFontRemoveFromCaches();
  +[_UIAssetManager _clearAllCachedImagesAndAssets];
  v2 = MTLCreateSystemDefaultDevice();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 _purgeDevice];
  }
}

- (void)provideSnapshotOfFaceInstanceDescriptor:(id)descriptor options:(id)options completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001574;
  v9[3] = &unk_100004360;
  completionCopy = completion;
  v8 = completionCopy;
  [(NTKFaceSnapshotService *)self requestSnapshotOfFaceInstanceDescriptor:descriptor options:options completion:v9];
}

- (void)requestSnapshotOfFaceInstanceDescriptor:(id)descriptor options:(id)options completion:(id)completion
{
  descriptorCopy = descriptor;
  optionsCopy = options;
  completionCopy = completion;
  v11 = [NTKFace faceWithInstanceDescriptor:descriptorCopy];
  v12 = [NTKJetsamInfoInterval alloc];
  name = [v11 name];
  v14 = [NSString stringWithFormat:@"NTKFaceSnapshotService - %@", name];
  v15 = [v12 initWithLabel:v14];

  v16 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [v11 name];
    *buf = 138543362;
    v34 = name2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Starting snapshot request for %{public}@", buf, 0xCu);
  }

  if (completionCopy)
  {
    device = [v11 device];

    if (device)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000019B0;
      v28[3] = &unk_1000043B0;
      v19 = v11;
      v29 = v19;
      v30 = optionsCopy;
      v31 = v15;
      v32 = completionCopy;
      v20 = objc_retainBlock(v28);
      [v19 device];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001DD4;
      block[3] = &unk_100004400;
      v26 = block[4] = self;
      v27 = v20;
      v21 = v20;
      v22 = v26;
      dispatch_async(&_dispatch_main_q, block);

      v23 = v29;
    }

    else
    {
      v24 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100001FE0(v11, v24);
      }

      v23 = [NSError errorWithDomain:@"com.apple.nanotimekit.snapshots" code:31000 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v23);
    }
  }

  else
  {
    v23 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100002058(descriptorCopy, v23);
    }
  }
}

@end