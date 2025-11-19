@interface BLStorage
+ (id)sharedInstance;
- (BLStorage)init;
- (void)requestFreeSpace:(unint64_t)a3 atPath:(id)a4 withOptions:(id)a5 completionBlock:(id)a6;
@end

@implementation BLStorage

- (BLStorage)init
{
  v6.receiver = self;
  v6.super_class = BLStorage;
  v2 = [(BLStorage *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.BookLibrary.BLStorage", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_lastFreeSpaceRequest = -1.79769313e308;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008412C;
  block[3] = &unk_10011D1C8;
  block[4] = a1;
  if (qword_10013EBE8 != -1)
  {
    dispatch_once(&qword_10013EBE8, block);
  }

  v2 = qword_10013EBF0;

  return v2;
}

- (void)requestFreeSpace:(unint64_t)a3 atPath:(id)a4 withOptions:(id)a5 completionBlock:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_1000842C0;
  v18[4] = sub_1000842D0;
  v19 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000842D8;
  block[3] = &unk_10011DC00;
  v13 = v10;
  v16 = self;
  v17 = v18;
  v15 = v13;
  dispatch_sync(dispatchQueue, block);
  CPFreeSpaceRequestBytesAtPathWithCompletionBlock();

  _Block_object_dispose(v18, 8);
}

@end