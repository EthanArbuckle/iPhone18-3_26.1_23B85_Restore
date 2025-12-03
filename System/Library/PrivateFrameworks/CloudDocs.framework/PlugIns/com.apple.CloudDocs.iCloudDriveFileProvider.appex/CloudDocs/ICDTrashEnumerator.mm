@interface ICDTrashEnumerator
- (void)enumerateItemsForObserver:(id)observer startingAtPage:(id)page;
@end

@implementation ICDTrashEnumerator

- (void)enumerateItemsForObserver:(id)observer startingAtPage:(id)page
{
  observerCopy = observer;
  pageCopy = page;
  v7 = pageCopy;
  if (pageCopy)
  {
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" from page %llu", [pageCopy br_pageTokenOffset]);
  }

  else
  {
    v8 = &stru_1000457B8;
  }

  memset(v24, 0, sizeof(v24));
  sub_100001C50(0, "[ICDTrashEnumerator enumerateItemsForObserver:startingAtPage:]", 31, 0, v24);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v26 = v24[0];
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx listing trashed items%@%@", buf, 0x20u);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000166E4;
  v21[3] = &unk_100044F18;
  v11 = observerCopy;
  v22 = v11;
  v12 = v7;
  v23 = v12;
  v13 = objc_retainBlock(v21);
  suggestedPageSize = [v11 suggestedPageSize];
  if (suggestedPageSize >= 0xC8)
  {
    v15 = 200;
  }

  else
  {
    v15 = suggestedPageSize;
  }

  v16 = +[BRDaemonConnection defaultConnection];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000168B4;
  v19[3] = &unk_100044700;
  v17 = v11;
  v20 = v17;
  v18 = [v16 remoteObjectProxyWithErrorHandler:v19];
  [v18 enumerateTrashItemsFromRank:objc_msgSend(v12 limit:"br_pageTokenOffset") completion:{v15, v13}];

  sub_100001DE4(v24);
}

@end