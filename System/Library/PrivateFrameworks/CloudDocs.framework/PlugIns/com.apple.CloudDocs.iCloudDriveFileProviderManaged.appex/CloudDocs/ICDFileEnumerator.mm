@interface ICDFileEnumerator
- (void)invalidate;
- (void)invalidateChangeToken;
@end

@implementation ICDFileEnumerator

- (void)invalidateChangeToken
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000283E4(v3, v4);
  }

  v5 = self;
  objc_sync_enter(v5);
  v5->_hasBoostedItemIdentifier = 0;
  v6.receiver = v5;
  v6.super_class = ICDFileEnumerator;
  [(BRBaseFileEnumerator *)&v6 invalidateChangeToken];
  objc_sync_exit(v5);
}

- (void)invalidate
{
  v2 = self;
  objc_sync_enter(v2);
  hasBoostedItemIdentifier = v2->_hasBoostedItemIdentifier;
  v2->_hasBoostedItemIdentifier = 0;
  objc_sync_exit(v2);

  if (hasBoostedItemIdentifier)
  {
    queue = v2->super._queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001AB6C;
    block[3] = &unk_1000446B0;
    block[4] = v2;
    dispatch_async(queue, block);
  }

  v5.receiver = v2;
  v5.super_class = ICDFileEnumerator;
  [(BRBaseFileEnumerator *)&v5 invalidate];
}

@end