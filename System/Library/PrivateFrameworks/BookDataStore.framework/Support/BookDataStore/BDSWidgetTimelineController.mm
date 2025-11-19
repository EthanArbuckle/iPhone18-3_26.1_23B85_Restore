@interface BDSWidgetTimelineController
- (BDSWidgetTimelineController)initWithExtensionBundleIdentifier:(id)a3 kind:(id)a4;
- (void)reloadTimeline;
@end

@implementation BDSWidgetTimelineController

- (BDSWidgetTimelineController)initWithExtensionBundleIdentifier:(id)a3 kind:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = BDSWidgetTimelineController;
  v8 = [(BDSWidgetTimelineController *)&v21 init];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v9 = [[CHSTimelineController alloc] initWithExtensionBundleIdentifier:v6 kind:v7];
    timelineController = v8->_timelineController;
    v8->_timelineController = v9;

    v11 = [BUCoalescingCallBlock alloc];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000192B4;
    v18 = &unk_10023FC40;
    objc_copyWeak(&v19, &location);
    v12 = [v11 initWithNotifyBlock:&v15 blockDescription:@"BDSWidgetTimelineController Timeline Reload"];
    coalescingBlock = v8->_coalescingBlock;
    v8->_coalescingBlock = v12;

    [(BUCoalescingCallBlock *)v8->_coalescingBlock setCoalescingDelay:2.0, v15, v16, v17, v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)reloadTimeline
{
  v3 = [[BDSOSTransaction alloc] initWithTransactionName:"com.apple.bookdatastored.BDSWidgetTimelineController.reloadTimelines"];
  v4 = [(BDSWidgetTimelineController *)self coalescingBlock];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100019484;
  v6[3] = &unk_10023F6B0;
  v7 = v3;
  v5 = v3;
  [v4 signalWithCompletion:v6];
}

@end