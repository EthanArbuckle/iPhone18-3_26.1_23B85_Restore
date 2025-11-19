@interface CPLCloudKitTaskGroupThrottler
- (BOOL)shouldRunOperationsForTask:(id)a3 error:(id *)a4;
- (BOOL)shouldRunOperationsNow:(id)a3 forGroupName:(id)a4 error:(id *)a5;
- (CPLCloudKitTaskGroupThrottler)init;
- (id)statusWithIndent:(id)a3;
- (void)operation:(id)a3 forTask:(id)a4 didFinishWithError:(id)a5;
- (void)operationWithGroupName:(id)a3 didFinishNow:(id)a4 withError:(id)a5;
@end

@implementation CPLCloudKitTaskGroupThrottler

- (CPLCloudKitTaskGroupThrottler)init
{
  v7.receiver = self;
  v7.super_class = CPLCloudKitTaskGroupThrottler;
  v2 = [(CPLCloudKitTaskGroupThrottler *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableDictionary);
    throttlers = v3->_throttlers;
    v3->_throttlers = v4;
  }

  return v3;
}

- (BOOL)shouldRunOperationsForTask:(id)a3 error:(id *)a4
{
  v6 = [a3 operationGroup];
  v7 = [v6 name];

  if (v7)
  {
    v8 = +[NSDate date];
    v9 = [(CPLCloudKitTaskGroupThrottler *)self shouldRunOperationsNow:v8 forGroupName:v7 error:a4];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)shouldRunOperationsNow:(id)a3 forGroupName:(id)a4 error:(id *)a5
{
  v8 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000043E0;
  v26 = sub_1000052D4;
  v27 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = sub_100040314;
  v16 = &unk_100273F58;
  v17 = self;
  v9 = a4;
  v18 = v9;
  v20 = &v28;
  v10 = v8;
  v19 = v10;
  v21 = &v22;
  v11 = v14;
  os_unfair_lock_lock(&self->_lock);
  v15(v11);
  os_unfair_lock_unlock(&self->_lock);

  v12 = *(v29 + 24);
  if (a5 && (v29[3] & 1) == 0)
  {
    *a5 = v23[5];
    v12 = *(v29 + 24);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12 & 1;
}

- (void)operation:(id)a3 forTask:(id)a4 didFinishWithError:(id)a5
{
  v10 = a5;
  v7 = [a4 operationGroup];
  v8 = [v7 name];

  if (v8)
  {
    v9 = +[NSDate date];
    [(CPLCloudKitTaskGroupThrottler *)self operationWithGroupName:v8 didFinishNow:v9 withError:v10];
  }
}

- (void)operationWithGroupName:(id)a3 didFinishNow:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = sub_1000405A4;
  v16 = &unk_100273198;
  v10 = a5;
  v17 = v10;
  v18 = self;
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v13 = v14;
  os_unfair_lock_lock(&self->_lock);
  v15(v13);
  os_unfair_lock_unlock(&self->_lock);
}

- (id)statusWithIndent:(id)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000043E0;
  v18 = sub_1000052D4;
  v19 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_100040788;
  v10 = &unk_100273F80;
  v11 = self;
  v4 = a3;
  v12 = v4;
  v13 = &v14;
  v5 = v8;
  os_unfair_lock_lock(&self->_lock);
  v9(v5);
  os_unfair_lock_unlock(&self->_lock);

  v6 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v6;
}

@end