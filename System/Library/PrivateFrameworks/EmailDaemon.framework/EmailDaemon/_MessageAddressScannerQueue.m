@interface _MessageAddressScannerQueue
- (BOOL)_flush;
- (BOOL)addHash:(int64_t)a3;
- (BOOL)handleHashes:(id)a3;
- (_MessageAddressScannerQueue)init;
- (void)removeAllObjects;
@end

@implementation _MessageAddressScannerQueue

- (_MessageAddressScannerQueue)init
{
  v8.receiver = self;
  v8.super_class = _MessageAddressScannerQueue;
  v2 = [(_MessageAddressScannerQueue *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(_MessageAddressScannerQueue *)v2 setMaximumSize:100];
    [(_MessageAddressScannerQueue *)v3 setMaximumLatency:2.0];
    v4 = dispatch_queue_create("com.apple.mobilemail.MessageAddressScannerPendingRemovalsQueue", 0);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v6 = v3;
  }

  return v3;
}

- (BOOL)addHash:(int64_t)a3
{
  hashes = self->_hashes;
  if (!hashes)
  {
    v6 = objc_alloc_init(EFMutableInt64Set);
    v7 = self->_hashes;
    self->_hashes = v6;

    hashes = self->_hashes;
  }

  if (([(EFMutableInt64Set *)hashes containsIndex:a3]& 1) != 0)
  {
    return 0;
  }

  ++*&self->MFBufferedQueue_opaque[OBJC_IVAR___MFBufferedQueue__currentSize];
  [(EFMutableInt64Set *)self->_hashes addIndex:a3];

  return [(_MessageAddressScannerQueue *)self flushIfNecessary];
}

- (void)removeAllObjects
{
  hashes = self->_hashes;
  self->_hashes = 0;

  v4.receiver = self;
  v4.super_class = _MessageAddressScannerQueue;
  [(_MessageAddressScannerQueue *)&v4 removeAllObjects];
}

- (BOOL)_flush
{
  if ([(EFMutableInt64Set *)self->_hashes count])
  {
    v3 = [(EFMutableInt64Set *)self->_hashes copy];
  }

  else
  {
    v3 = 0;
  }

  [(_MessageAddressScannerQueue *)self removeAllObjects];
  if (v3)
  {
    v4 = [(_MessageAddressScannerQueue *)self handleHashes:v3];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)handleHashes:(id)a3
{
  v4 = a3;
  v5 = [(_MessageAddressScannerQueue *)self recentsLibrary];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v6 = qword_100185678;
  v22 = qword_100185678;
  if (!qword_100185678)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10003D840;
    v18[3] = &unk_100157290;
    v18[4] = &v19;
    sub_10003D840(v18);
    v6 = v20[3];
  }

  v7 = v6;
  _Block_object_dispose(&v19, 8);
  v8 = objc_alloc_init(v6);
  v9 = sub_10003AE94();
  v23 = v9;
  v10 = [NSArray arrayWithObjects:&v23 count:1];
  [v8 setDomains:v10];

  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003B018;
  v15[3] = &unk_1001577B8;
  v12 = v4;
  v16 = v12;
  v13 = v5;
  v17 = v13;
  [v13 performRecentsSearch:v8 queue:dispatchQueue completion:v15];

  return 1;
}

@end