@interface CPLBGSTGenericActivity
- (BOOL)shouldDefer;
- (CPLBGSTGenericActivity)initWithTask:(id)a3;
- (id)addDeferHandler:(id)a3;
- (id)description;
- (unint64_t)deferReason;
- (void)removeDeferHandler:(id)a3;
- (void)reportThroughputWorkForMetrics:(id)a3 itemCount:(unint64_t)a4 done:(BOOL)a5;
@end

@implementation CPLBGSTGenericActivity

- (CPLBGSTGenericActivity)initWithTask:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CPLBGSTGenericActivity;
  v6 = [(CPLBGSTGenericActivity *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, a3);
    v7->_shouldDeferLock._os_unfair_lock_opaque = 0;
    v8 = CPLCopyDefaultSerialQueueAttributes();
    v9 = dispatch_queue_create("com.apple.cpl.bgst.activity", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    objc_initWeak(&location, v7);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100018958;
    v12[3] = &unk_100272BE0;
    objc_copyWeak(&v13, &location);
    [(BGSystemTask *)v7->_task setExpirationHandlerWithReason:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (id)description
{
  v3 = [NSString alloc];
  task = self->_task;
  v5 = objc_opt_class();
  v6 = [(BGSystemTask *)self->_task identifier];
  v7 = [v3 initWithFormat:@"[%@ for %@]", v5, v6];

  return v7;
}

- (BOOL)shouldDefer
{
  v2 = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = sub_100018B4C;
  v7 = &unk_100272028;
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&v2->_shouldDeferLock);
  v6(v3);
  os_unfair_lock_unlock(&v2->_shouldDeferLock);

  LOBYTE(v2) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v2;
}

- (unint64_t)deferReason
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100018C78;
  v8 = &unk_100272028;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_shouldDeferLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_shouldDeferLock);

  v4 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (id)addDeferHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID UUID];
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100018DEC;
  v15[3] = &unk_100272C08;
  v15[4] = self;
  v17 = v4;
  v7 = v5;
  v16 = v7;
  v8 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002828;
  block[3] = &unk_100271E98;
  v19 = v8;
  v9 = queue;
  v10 = v4;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);

  v12 = v16;
  v13 = v7;

  return v7;
}

- (void)removeDeferHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100018FE8;
  v10[3] = &unk_1002720E0;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002828;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)reportThroughputWorkForMetrics:(id)a3 itemCount:(unint64_t)a4 done:(BOOL)a5
{
  v8 = [a3 copy];
  v9 = +[NSDate now];
  v10 = qos_class_self();
  queue = self->_queue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100019318;
  v17[3] = &unk_100272C58;
  v17[4] = self;
  v18 = v8;
  v22 = a5;
  v21 = v10;
  v19 = v9;
  v20 = a4;
  v12 = v17;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002828;
  block[3] = &unk_100271E98;
  v24 = v12;
  v13 = queue;
  v14 = v9;
  v15 = v8;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v16);
}

@end