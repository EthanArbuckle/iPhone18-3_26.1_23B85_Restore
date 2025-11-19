@interface CPLInitialDownloadHelper
- (CPLInitialDownloadHelper)initWithWrappers:(id)a3 queue:(id)a4;
- (CPLInitialDownloadHelperDelegate)delegate;
- (void)_requestLibraryWithIdentifier:(id)a3 withActivatedMainScope:(BOOL)a4 completionHandler:(id)a5;
- (void)initialDownloadHelper:(id)a3 checkActiveAccountWithCompletionHandler:(id)a4;
- (void)requestInitialDownloadOfMainScopeForLibraryWithIdentifier:(id)a3 activity:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
- (void)requestLibraryWithIdentifier:(id)a3 withActivatedMainScope:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation CPLInitialDownloadHelper

- (CPLInitialDownloadHelper)initWithWrappers:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CPLInitialDownloadHelper;
  v9 = [(CPLInitialDownloadHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_wrappers, a3);
    objc_storeStrong(&v10->_queue, a4);
  }

  return v10;
}

- (void)requestLibraryWithIdentifier:(id)a3 withActivatedMainScope:(BOOL)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [NSProgress progressWithTotalUnitCount:1];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10001051C;
  v35[3] = &unk_1002724D0;
  v12 = v10;
  v37 = v12;
  v13 = v11;
  v36 = v13;
  v14 = objc_retainBlock(v35);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1001889E8;
  v34[3] = &unk_1002724F0;
  v34[4] = a2;
  [v13 setCancellationHandler:v34];
  if ([(CPLEngineWrapperArray *)self->_wrappers count])
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000107C0;
    v25[3] = &unk_1002725E0;
    v25[4] = self;
    v15 = &v26;
    v16 = v9;
    v28 = a4;
    v17 = &v27;
    v26 = v16;
    v27 = v14;
    v18 = v14;
    [v13 performAsCurrentWithPendingUnitCount:1 usingBlock:v25];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_10000FD9C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v9;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Checking account info before requesting %@", buf, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21 = WeakRetained;
    if (WeakRetained)
    {
      v22 = WeakRetained;
    }

    else
    {
      v22 = self;
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10001056C;
    v29[3] = &unk_100272630;
    v29[4] = self;
    v15 = &v30;
    v23 = v9;
    v33 = a4;
    v17 = &v32;
    v30 = v23;
    v32 = v14;
    v31 = v13;
    v24 = v14;
    [(CPLInitialDownloadHelper *)v22 initialDownloadHelper:self checkActiveAccountWithCompletionHandler:v29];
  }
}

- (void)requestInitialDownloadOfMainScopeForLibraryWithIdentifier:(id)a3 activity:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  dispatch_assert_queue_V2(self->_queue);
  currentLibraryIdentifier = self->_currentLibraryIdentifier;
  if (currentLibraryIdentifier)
  {
    if ([(NSString *)currentLibraryIdentifier isEqualToString:v12])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v17 = sub_10000FD9C();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v12;
          v18 = "Requested to perform initial download for %{public}@ but we are already doing it";
          v19 = v17;
          v20 = 12;
LABEL_14:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
          goto LABEL_15;
        }

        goto LABEL_15;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = sub_10000FD9C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v28 = self->_currentLibraryIdentifier;
        *buf = 138543618;
        *&buf[4] = v12;
        *&buf[12] = 2114;
        *&buf[14] = v28;
        v18 = "Requested to perform initial download for %{public}@ but we are already doing %{public}@";
        v19 = v17;
        v20 = 22;
        goto LABEL_14;
      }

LABEL_15:
    }

    queue = self->_queue;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100010C34;
    v43[3] = &unk_100271E98;
    v44 = v15;
    v30 = v43;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002744;
    v46 = &unk_100271E98;
    v47 = v30;
    v31 = queue;
    v26 = v15;
    v32 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v31, v32);

    v23 = v44;
    goto LABEL_17;
  }

  objc_storeStrong(&self->_currentLibraryIdentifier, a3);
  v21 = [NSProgress progressWithTotalUnitCount:11];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100188AA0;
  v42[3] = &unk_1002724F0;
  v42[4] = a2;
  [v21 setCancellationHandler:v42];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100010CA4;
  v39[3] = &unk_100272658;
  v39[4] = self;
  v22 = v21;
  v40 = v22;
  v41 = v15;
  v23 = v15;
  v24 = objc_retainBlock(v39);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v25 = sub_10000FD9C();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Requesting initial download of main scope for %{public}@", buf, 0xCu);
    }
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100010D30;
  v33[3] = &unk_100272798;
  v33[4] = self;
  v37 = v24;
  v34 = v12;
  v35 = v22;
  v38 = v14;
  v36 = v13;
  v26 = v22;
  v27 = v24;
  [v26 performAsCurrentWithPendingUnitCount:1 usingBlock:v33];

LABEL_17:
}

- (void)initialDownloadHelper:(id)a3 checkActiveAccountWithCompletionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000118BC;
  v11[3] = &unk_100271E98;
  v12 = v5;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002744;
  block[3] = &unk_100271E98;
  v14 = v7;
  v8 = queue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (CPLInitialDownloadHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_requestLibraryWithIdentifier:(id)a3 withActivatedMainScope:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [NSProgress progressWithTotalUnitCount:2];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = sub_10000FD9C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "";
      if (v6)
      {
        v13 = " with activated main scope";
      }

      *buf = 138543618;
      v30 = v9;
      v31 = 2080;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requesting %{public}@%s", buf, 0x16u);
    }
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000FDE0;
  v26[3] = &unk_1002724D0;
  v28 = v10;
  v14 = v11;
  v27 = v14;
  v15 = v10;
  v16 = objc_retainBlock(v26);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100188810;
  v25[3] = &unk_1002724F0;
  v25[4] = a2;
  [v14 setCancellationHandler:v25];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000FE30;
  v20[3] = &unk_1002725B8;
  v20[4] = self;
  v21 = v9;
  v24 = v6;
  v22 = v14;
  v23 = v16;
  v17 = v14;
  v18 = v16;
  v19 = v9;
  [v17 performAsCurrentWithPendingUnitCount:1 usingBlock:v20];
}

@end