@interface CPLCloudKitTaskGroupThrottler
- (BOOL)shouldRunOperationsForTask:(id)task error:(id *)error;
- (BOOL)shouldRunOperationsNow:(id)now forGroupName:(id)name error:(id *)error;
- (CPLCloudKitTaskGroupThrottler)init;
- (id)statusWithIndent:(id)indent;
- (void)operation:(id)operation forTask:(id)task didFinishWithError:(id)error;
- (void)operationWithGroupName:(id)name didFinishNow:(id)now withError:(id)error;
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

- (BOOL)shouldRunOperationsForTask:(id)task error:(id *)error
{
  operationGroup = [task operationGroup];
  name = [operationGroup name];

  if (name)
  {
    v8 = +[NSDate date];
    v9 = [(CPLCloudKitTaskGroupThrottler *)self shouldRunOperationsNow:v8 forGroupName:name error:error];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)shouldRunOperationsNow:(id)now forGroupName:(id)name error:(id *)error
{
  nowCopy = now;
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
  selfCopy = self;
  nameCopy = name;
  v18 = nameCopy;
  v20 = &v28;
  v10 = nowCopy;
  v19 = v10;
  v21 = &v22;
  v11 = v14;
  os_unfair_lock_lock(&self->_lock);
  v15(v11);
  os_unfair_lock_unlock(&self->_lock);

  v12 = *(v29 + 24);
  if (error && (v29[3] & 1) == 0)
  {
    *error = v23[5];
    v12 = *(v29 + 24);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12 & 1;
}

- (void)operation:(id)operation forTask:(id)task didFinishWithError:(id)error
{
  errorCopy = error;
  operationGroup = [task operationGroup];
  name = [operationGroup name];

  if (name)
  {
    v9 = +[NSDate date];
    [(CPLCloudKitTaskGroupThrottler *)self operationWithGroupName:name didFinishNow:v9 withError:errorCopy];
  }
}

- (void)operationWithGroupName:(id)name didFinishNow:(id)now withError:(id)error
{
  nameCopy = name;
  nowCopy = now;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v15 = sub_1000405A4;
  v16 = &unk_100273198;
  errorCopy = error;
  v17 = errorCopy;
  selfCopy = self;
  v11 = nameCopy;
  v19 = v11;
  v12 = nowCopy;
  v20 = v12;
  v13 = v14;
  os_unfair_lock_lock(&self->_lock);
  v15(v13);
  os_unfair_lock_unlock(&self->_lock);
}

- (id)statusWithIndent:(id)indent
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
  selfCopy = self;
  indentCopy = indent;
  v12 = indentCopy;
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