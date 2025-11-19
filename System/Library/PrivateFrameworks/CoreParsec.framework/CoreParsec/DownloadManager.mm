@interface DownloadManager
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willBeginDelayedRequest:(id)a5 completionHandler:(id)a6;
- (void)bagChangeNotificationWithNotification:(id)a3;
@end

@implementation DownloadManager

- (void)bagChangeNotificationWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A88F8();
}

- (void)URLSession:(id)a3 task:(id)a4 willBeginDelayedRequest:(id)a5 completionHandler:(id)a6
{
  v10 = type metadata accessor for URLRequest();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a6);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v15);
  v16 = a3;
  v17 = a4;
  v18 = self;
  sub_1000AD8C8(v16, v17, v14, v18, v15);
  _Block_release(v15);

  (*(v11 + 8))(v14, v10);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_1000AEA78();
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_1000B03E0();

  (*(v9 + 8))(v12, v8);
}

@end