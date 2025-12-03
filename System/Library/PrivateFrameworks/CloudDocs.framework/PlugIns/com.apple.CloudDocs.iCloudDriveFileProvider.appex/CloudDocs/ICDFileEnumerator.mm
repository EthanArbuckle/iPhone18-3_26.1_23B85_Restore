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
    sub_100027688(v3, v4);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_hasBoostedItemIdentifier = 0;
  v6.receiver = selfCopy;
  v6.super_class = ICDFileEnumerator;
  [(BRBaseFileEnumerator *)&v6 invalidateChangeToken];
  objc_sync_exit(selfCopy);
}

- (void)invalidate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasBoostedItemIdentifier = selfCopy->_hasBoostedItemIdentifier;
  selfCopy->_hasBoostedItemIdentifier = 0;
  objc_sync_exit(selfCopy);

  if (hasBoostedItemIdentifier)
  {
    queue = selfCopy->super._queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A804;
    block[3] = &unk_1000446B0;
    block[4] = selfCopy;
    dispatch_async(queue, block);
  }

  v5.receiver = selfCopy;
  v5.super_class = ICDFileEnumerator;
  [(BRBaseFileEnumerator *)&v5 invalidate];
}

@end