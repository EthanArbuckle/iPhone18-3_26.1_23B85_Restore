@interface MBProgressModel
- (MBProgressModel)init;
- (NSString)description;
- (void)_addBytesRemaining:(unint64_t)a3;
- (void)_subBytesRemaining:(unint64_t)a3;
- (void)abortedTransferringItem:(id)a3;
- (void)abortedTransferringItemWithSize:(int64_t)a3;
- (void)beginStageWithMinProgress:(double)a3 maxProgress:(double)a4;
- (void)endStage;
- (void)ended;
- (void)failedToTransferItem:(id)a3;
- (void)finishedItem:(id)a3;
- (void)finishedItem:(id)a3 size:(unint64_t)a4;
- (void)finishedScanningDomain;
- (void)finishedTransferringItem:(id)a3 size:(int64_t)a4;
- (void)record:(id)a3 madeProgress:(double)a4 previousProgress:(double)a5 assetSize:(int64_t)a6 recordSize:(int64_t)a7;
- (void)retrying;
- (void)updatingProgress:(double)a3 forItem:(id)a4;
- (void)updatingProgress:(double)a3 previousProgress:(double)a4 size:(int64_t)a5;
- (void)willScanDomains:(unint64_t)a3;
- (void)willTransferItemsWithSize:(int64_t)a3 count:(unint64_t)a4;
@end

@implementation MBProgressModel

- (MBProgressModel)init
{
  v16.receiver = self;
  v16.super_class = MBProgressModel;
  v2 = [(MBProgressModel *)&v16 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_minProgress = xmmword_1002B9E20;
    v2->_maxBytesProgress = 0.95;
    objc_initWeak(&location, v2);
    v4 = [MBWatchdog alloc];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(MBWatchdog *)v4 initWithName:v6];
    watchdog = v3->_watchdog;
    v3->_watchdog = v7;

    [(MBWatchdog *)v3->_watchdog setTimeout:30.0];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000EED78;
    v13 = &unk_1003BE6A0;
    objc_copyWeak(&v14, &location);
    [(MBWatchdog *)v3->_watchdog setTimeoutBlock:&v10];
    [(MBWatchdog *)v3->_watchdog resume:v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)_addBytesRemaining:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_bytesRemaining += a3;
  sub_1000EEF54(obj);
  objc_sync_exit(obj);
}

- (void)_subBytesRemaining:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_combinedProgress < 1.0)
  {
    bytesRemaining = obj->_bytesRemaining;
    if (bytesRemaining < a3)
    {
      if (obj->_verify)
      {
        objc_exception_throw([[MBException alloc] initWithCode:1 format:{@"Bytes remaining underflow (%llu bytes)", a3 - obj->_bytesRemaining}]);
      }

      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = a3 - obj->_bytesRemaining;
        *buf = 134217984;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Progress model bytes remaining underflow (%{bytes}llu)", buf, 0xCu);
        v15 = a3 - obj->_bytesRemaining;
        _MBLog();
      }

      v4 = obj;
      bytesRemaining = obj->_bytesRemaining;
      a3 = bytesRemaining;
    }

    maxBytesProgress = v4->_maxBytesProgress;
    if (bytesRemaining >= 1)
    {
      maxBytesProgress = v4->_bytesProgress + (maxBytesProgress - v4->_bytesProgress) * (a3 / bytesRemaining);
    }

    v4->_bytesProgress = maxBytesProgress;
    itemCount = v4->_itemCount;
    if (itemCount)
    {
      v10 = v4->_itemsCompleted / itemCount;
      v4->_itemProgress = v10;
      p_itemProgress = &v4->_itemProgress;
      if (v10 <= 1.0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      p_itemProgress = &v4->_itemProgress;
    }

    p_itemProgress->super.isa = 0x3FF0000000000000;
    v10 = 1.0;
LABEL_17:
    obj->_combinedProgress = obj->_minProgress + (maxBytesProgress + v10) * 0.5 * (obj->_maxProgress - obj->_minProgress);
    v12 = [(MBProgressModel *)obj block];
    v13 = v12;
    if (v12)
    {
      (*(v12 + 16))(v12, obj->_combinedProgress);
    }

    obj->_bytesRemaining -= a3;
    sub_1000EEF54(obj);
    v14 = obj->_watchdog;

    objc_sync_exit(obj);
    [(MBWatchdog *)v14 resume];

    return;
  }

  objc_sync_exit(obj);
}

- (void)willTransferItemsWithSize:(int64_t)a3 count:(unint64_t)a4
{
  v5 = a3 + (a4 << 13);
  v6 = self;
  objc_sync_enter(v6);
  [(MBProgressModel *)v6 _addBytesRemaining:v5];
  v6->_itemCount += a4;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v9 = v5;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "willTransfer: size:%llu, count:%ld", buf, 0x16u);
    _MBLog();
  }

  objc_sync_exit(v6);
}

- (void)willScanDomains:(unint64_t)a3
{
  v4 = a3 << 13;
  v5 = self;
  objc_sync_enter(v5);
  [(MBProgressModel *)v5 _addBytesRemaining:v4];
  v5->_itemCount += a3;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v8 = v4;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "willScanDomains: size:%llu domainsToScan:%llu", buf, 0x16u);
    _MBLog();
  }

  objc_sync_exit(v5);
}

- (void)finishedScanningDomain
{
  v2 = self;
  objc_sync_enter(v2);
  ++v2->_itemsCompleted;
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    bytesRemaining = v2->_bytesRemaining;
    itemsCompleted = v2->_itemsCompleted;
    itemCount = v2->_itemCount;
    *buf = 134218752;
    v11 = 0x2000;
    v12 = 2048;
    v13 = bytesRemaining;
    v14 = 2048;
    v15 = itemsCompleted;
    v16 = 2048;
    v17 = itemCount;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "finishedScanningDomain, size:%llu, remaining:%lld, completed:%lld/%lld", buf, 0x2Au);
    v8 = v2->_itemsCompleted;
    v9 = v2->_itemCount;
    v7 = v2->_bytesRemaining;
    _MBLog();
  }

  [(MBProgressModel *)v2 _subBytesRemaining:0x2000];
  objc_sync_exit(v2);
}

- (void)finishedTransferringItem:(id)a3 size:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v6 itemID];
      bytesRemaining = v7->_bytesRemaining;
      itemsCompleted = v7->_itemsCompleted;
      itemCount = v7->_itemCount;
      *buf = 138413314;
      v19 = v10;
      v20 = 2048;
      v21 = a4;
      v22 = 2048;
      v23 = bytesRemaining;
      v24 = 2048;
      v25 = itemsCompleted;
      v26 = 2048;
      v27 = itemCount;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "finishedTransferringItem, fileID:%@, size:%llu, remaining:%lld, completed:%lld/%lld", buf, 0x34u);
    }

    v14 = [v6 itemID];
    v16 = v7->_itemsCompleted;
    v17 = v7->_itemCount;
    v15 = v7->_bytesRemaining;
    _MBLog();
  }

  [(MBProgressModel *)v7 _subBytesRemaining:a4];
  objc_sync_exit(v7);
}

- (void)finishedItem:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  ++v5->_itemsCompleted;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v4 itemID];
      bytesRemaining = v5->_bytesRemaining;
      itemsCompleted = v5->_itemsCompleted;
      itemCount = v5->_itemCount;
      *buf = 138413314;
      v17 = v8;
      v18 = 2048;
      v19 = 0x2000;
      v20 = 2048;
      v21 = bytesRemaining;
      v22 = 2048;
      v23 = itemsCompleted;
      v24 = 2048;
      v25 = itemCount;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "finishedItem, itemID:%@, size:%llu, remaining:%lld, completed:%lld/%lld", buf, 0x34u);
    }

    v12 = [v4 itemID];
    v14 = v5->_itemsCompleted;
    v15 = v5->_itemCount;
    v13 = v5->_bytesRemaining;
    _MBLog();
  }

  [(MBProgressModel *)v5 _subBytesRemaining:0x2000];
  objc_sync_exit(v5);
}

- (void)finishedItem:(id)a3 size:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  ++v7->_itemsCompleted;
  v8 = MBGetDefaultLog();
  v9 = a4 + 0x2000;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = v8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v6 itemID];
      bytesRemaining = v7->_bytesRemaining;
      itemsCompleted = v7->_itemsCompleted;
      itemCount = v7->_itemCount;
      *buf = 138413314;
      v20 = v11;
      v21 = 2048;
      v22 = v9;
      v23 = 2048;
      v24 = bytesRemaining;
      v25 = 2048;
      v26 = itemsCompleted;
      v27 = 2048;
      v28 = itemCount;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "finishedItem, itemID:%@, size:%llu, remaining:%lld, completed:%lld/%lld", buf, 0x34u);
    }

    v15 = [v6 itemID];
    v17 = v7->_itemsCompleted;
    v18 = v7->_itemCount;
    v16 = v7->_bytesRemaining;
    _MBLog();
  }

  [(MBProgressModel *)v7 _subBytesRemaining:v9];
  objc_sync_exit(v7);
}

- (void)updatingProgress:(double)a3 forItem:(id)a4
{
  v6 = a4;
  v7 = [v6 size];
  v8 = [v6 resourcesSize];
  v9 = self;
  objc_sync_enter(v9);
  [v6 progress];
  if (v10 != a3)
  {
    if (a3 >= 0.0)
    {
      if (a3 == 1.0)
      {
        ++v9->_itemsCompleted;
      }

      [v6 progress];
      [(MBProgressModel *)v9 _subBytesRemaining:((a3 - v12) * (v8 + v7 + 0x2000))];
    }

    else
    {
      if (v9->_verify)
      {
        objc_exception_throw([[MBException alloc] initWithCode:1 format:{@"Negative progress update (%0.3f)", *&a3}]);
      }

      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v15 = a3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Negative progress update (%0.3f)", buf, 0xCu);
        v13 = a3;
        _MBLog();
      }
    }

    [v6 setProgress:{a3, *&v13}];
  }

  objc_sync_exit(v9);
}

- (void)updatingProgress:(double)a3 previousProgress:(double)a4 size:(int64_t)a5
{
  v8 = self;
  objc_sync_enter(v8);
  if (a3 != a4)
  {
    if (a3 >= 0.0)
    {
      if (a3 == 1.0)
      {
        ++v8->_itemsCompleted;
      }

      [(MBProgressModel *)v8 _subBytesRemaining:((a3 - a4) * (a5 + 0x2000))];
    }

    else
    {
      if (v8->_verify)
      {
        objc_exception_throw([[MBException alloc] initWithCode:1 format:{@"Negative progress update (%0.3f)", *&a3}]);
      }

      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v11 = a3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Negative progress update (%0.3f)", buf, 0xCu);
        _MBLog();
      }
    }
  }

  objc_sync_exit(v8);
}

- (void)failedToTransferItem:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v6 progress];
  -[MBProgressModel _addBytesRemaining:](v4, "_addBytesRemaining:", (v5 * [v6 size]));
  objc_sync_exit(v4);
}

- (void)abortedTransferringItem:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  -[MBProgressModel abortedTransferringItemWithSize:](v4, "abortedTransferringItemWithSize:", [v5 size]);
  objc_sync_exit(v4);
}

- (void)abortedTransferringItemWithSize:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  [(MBProgressModel *)obj _subBytesRemaining:a3 + 0x2000];
  objc_sync_exit(obj);
}

- (void)retrying
{
  v2 = self;
  objc_sync_enter(v2);
  v2->_bytesRemaining = 0;
  v2->_maxBytesProgress = v2->_bytesProgress + (1.0 - v2->_bytesProgress) * 0.5;
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    bytesProgress = v2->_bytesProgress;
    maxBytesProgress = v2->_maxBytesProgress;
    *buf = 134218240;
    v9 = bytesProgress;
    v10 = 2048;
    v11 = maxBytesProgress;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Bytes Progress is %lf. Max Bytes Progress is now %lf", buf, 0x16u);
    v6 = v2->_bytesProgress;
    v7 = v2->_maxBytesProgress;
    _MBLog();
  }

  sub_1000EEF54(v2);
  objc_sync_exit(v2);
}

- (void)ended
{
  v2 = self;
  objc_sync_enter(v2);
  bytesRemaining = v2->_bytesRemaining;
  if (bytesRemaining)
  {
    if (v2->_verify)
    {
      objc_exception_throw([[MBException alloc] initWithCode:1 format:{@"Progress model ended with %llu bytes remaining", v2->_bytesRemaining}]);
    }

    if (bytesRemaining < 1025)
    {
      v4 = MBGetDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = v2->_bytesRemaining;
        *buf = 134217984;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Progress model ended with %{bytes}llu remaining", buf, 0xCu);
        v10 = v2->_bytesRemaining;
        _MBLog();
      }
    }

    else
    {
      v4 = MBGetDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v2->_bytesRemaining;
        *buf = 134217984;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Progress model ended with %{bytes}llu remaining", buf, 0xCu);
        v10 = v2->_bytesRemaining;
        _MBLog();
      }
    }
  }

  v2->_bytesProgress = 1.0;
  v2->_bytesRemaining = 0;
  v2->_itemProgress = 1.0;
  v2->_combinedProgress = 1.0;
  v7 = [(MBProgressModel *)v2 block];
  [(MBProgressModel *)v2 setBlock:0];
  if (v7)
  {
    v7[2](v7, v2->_combinedProgress);
  }

  watchdog = v2->_watchdog;
  v2->_watchdog = 0;
  v9 = watchdog;

  objc_sync_exit(v2);
  [(MBWatchdog *)v9 suspend];
}

- (void)beginStageWithMinProgress:(double)a3 maxProgress:(double)a4
{
  obj = self;
  objc_sync_enter(obj);
  obj->_minProgress = a3;
  obj->_maxProgress = a4;
  obj->_bytesRemaining = 0;
  obj->_maxBytesProgress = 0.95;
  obj->_itemsCompleted = 0;
  obj->_itemCount = 0;
  obj->_bytesProgress = a3;
  obj->_itemProgress = a3;
  obj->_combinedProgress = a3;
  v6 = [(MBProgressModel *)obj block];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, obj->_combinedProgress);
  }

  objc_sync_exit(obj);
}

- (void)endStage
{
  obj = self;
  objc_sync_enter(obj);
  obj->_bytesRemaining = 0;
  maxProgress = obj->_maxProgress;
  obj->_bytesProgress = maxProgress;
  obj->_itemProgress = maxProgress;
  obj->_combinedProgress = maxProgress;
  v3 = [(MBProgressModel *)obj block];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, obj->_combinedProgress);
  }

  objc_sync_exit(obj);
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  bytesProgress = self->_bytesProgress;
  v6 = [v3 initWithFormat:@"<%@: combinedProgress=%0.3f, byteProgress=%0.3f, itemProgress=%0.2f, bytesRemaining=%llu, completed:%lld/%lld>", v4, *&self->_combinedProgress, *&bytesProgress, *&self->_itemProgress, self->_bytesRemaining, self->_itemsCompleted, self->_itemCount];

  return v6;
}

- (void)record:(id)a3 madeProgress:(double)a4 previousProgress:(double)a5 assetSize:(int64_t)a6 recordSize:(int64_t)a7
{
  v12 = a3;
  if (a6 >= 20000001)
  {
    v13 = [NSByteCountFormatter stringFromByteCount:a6 countStyle:0];
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v12 recordID];
      v16 = [v15 recordName];
      *buf = 134219010;
      v24 = a5;
      v25 = 2048;
      v26 = a4;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v13;
      v31 = 2048;
      v32 = a7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "=upload assets= Received progress update from %.2f to %.2f for %@ with assetSize %@ recordSize %llu", buf, 0x34u);

      v17 = [v12 recordID];
      [v17 recordName];
      v21 = v13;
      v20 = v22 = a7;
      v18 = a5;
      v19 = a4;
      _MBLog();
    }
  }

  [(MBProgressModel *)self updatingProgress:a6 previousProgress:a4 size:a5, *&v18, *&v19, v20, v21, v22];
}

@end