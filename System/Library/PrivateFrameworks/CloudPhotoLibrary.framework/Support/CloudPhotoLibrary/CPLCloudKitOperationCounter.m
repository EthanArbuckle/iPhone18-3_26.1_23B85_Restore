@interface CPLCloudKitOperationCounter
- (CPLCloudKitOperationCounter)init;
- (id)status;
- (id)statusObject;
- (void)beginTask:(id)a3;
- (void)endTask:(id)a3 withOperationClasses:(id)a4 operationsAllowingCellular:(id)a5;
@end

@implementation CPLCloudKitOperationCounter

- (CPLCloudKitOperationCounter)init
{
  v6.receiver = self;
  v6.super_class = CPLCloudKitOperationCounter;
  v2 = [(CPLCloudKitOperationCounter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    sessions = v2->_sessions;
    v2->_sessions = v3;
  }

  return v2;
}

- (void)beginTask:(id)a3
{
  v4 = a3;
  if (qword_1002C5618 != -1)
  {
    sub_1001AD3CC();
  }

  v5 = qword_1002C5610;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A77D0;
  v9[3] = &unk_1002720E0;
  v9[4] = self;
  v10 = v4;
  v6 = v9;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002B20;
  block[3] = &unk_100271E98;
  v12 = v6;
  v7 = v4;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v8);
}

- (void)endTask:(id)a3 withOperationClasses:(id)a4 operationsAllowingCellular:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_1002C5618 != -1)
  {
    sub_1001AD3CC();
  }

  v11 = qword_1002C5610;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A7A3C;
  v17[3] = &unk_100273198;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = v17;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002B20;
  block[3] = &unk_100271E98;
  v22 = v12;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v16);
}

- (id)statusObject
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100004510;
  v10 = sub_10000536C;
  v11 = 0;
  if (qword_1002C5618 != -1)
  {
    sub_1001AD4CC();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A7B60;
  v5[3] = &unk_1002729E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(qword_1002C5610, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100004510;
  v10 = sub_10000536C;
  v11 = 0;
  if (qword_1002C5618 != -1)
  {
    sub_1001AD4CC();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A7DD8;
  v5[3] = &unk_1002729E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(qword_1002C5610, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end