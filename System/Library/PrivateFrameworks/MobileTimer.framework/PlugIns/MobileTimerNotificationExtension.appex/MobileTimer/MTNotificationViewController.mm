@interface MTNotificationViewController
- (MTNotificationView)noteView;
- (void)_setupDisplayLink;
- (void)_teardownDisplayLink;
- (void)_updateCountDown:(id)down;
- (void)didReceiveNotification:(id)notification;
- (void)viewDidLoad;
@end

@implementation MTNotificationViewController

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = MTNotificationViewController;
  [(MTNotificationViewController *)&v15 viewDidLoad];
  view = [(MTNotificationViewController *)self view];
  noteView = [(MTNotificationViewController *)self noteView];
  [view addSubview:noteView];

  v5 = objc_alloc_init(NSDateComponentsFormatter);
  durationFormatter = self->_durationFormatter;
  self->_durationFormatter = v5;

  [(NSDateComponentsFormatter *)self->_durationFormatter setUnitsStyle:0];
  [(NSDateComponentsFormatter *)self->_durationFormatter setZeroFormattingBehavior:0x10000];
  [(NSDateComponentsFormatter *)self->_durationFormatter setAllowedUnits:192];
  v16 = @"noteView";
  noteView2 = [(MTNotificationViewController *)self noteView];
  v17 = noteView2;
  v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  v9 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[noteView]|" options:0 metrics:0 views:v8];
  [NSLayoutConstraint activateConstraints:v9];

  v10 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[noteView]" options:0 metrics:0 views:v8];
  [NSLayoutConstraint activateConstraints:v10];

  noteView3 = [(MTNotificationViewController *)self noteView];
  v12 = +[UIScreen mainScreen];
  [v12 bounds];
  [noteView3 systemLayoutSizeFittingSize:{v13, v14}];
  [(MTNotificationViewController *)self setPreferredContentSize:?];
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  v5 = MTLogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RECEIVED NOTIFICATION: %@", &v10, 0xCu);
  }

  request = [notificationCopy request];
  content = [request content];
  userInfo = [content userInfo];
  v9 = [userInfo objectForKey:MTAlarmScheduledFiredDateKey];
  [(MTNotificationViewController *)self setCountDownDate:v9];

  [(MTNotificationViewController *)self _setupDisplayLink];
}

- (MTNotificationView)noteView
{
  noteView = self->_noteView;
  if (!noteView)
  {
    v4 = objc_opt_new();
    v5 = self->_noteView;
    self->_noteView = v4;

    [(MTNotificationView *)self->_noteView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SNOOZE_REMAINING" value:&stru_100004250 table:0];
    [(MTNotificationView *)self->_noteView setStatusString:v7];

    noteView = self->_noteView;
  }

  v8 = noteView;

  return v8;
}

- (void)_updateCountDown:(id)down
{
  countDownDate = [(MTNotificationViewController *)self countDownDate];

  if (!countDownDate || (-[MTNotificationViewController countDownDate](self, "countDownDate"), v5 = objc_claimAutoreleasedReturnValue(), +[NSDate date](NSDate, "date"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 compare:v6], v6, v5, v7 == -1))
  {

    [(MTNotificationViewController *)self _teardownDisplayLink];
  }

  else
  {
    durationFormatter = [(MTNotificationViewController *)self durationFormatter];
    countDownDate2 = [(MTNotificationViewController *)self countDownDate];
    [countDownDate2 timeIntervalSinceNow];
    v9 = [durationFormatter stringFromTimeInterval:?];
    noteView = [(MTNotificationViewController *)self noteView];
    [noteView setTimeString:v9];
  }
}

- (void)_setupDisplayLink
{
  displayLink = [(MTNotificationViewController *)self displayLink];

  if (!displayLink)
  {
    v4 = MTLogForCategory(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100002164(v4);
    }

    v5 = [CADisplayLink displayLinkWithTarget:self selector:"_updateCountDown:"];
    [(MTNotificationViewController *)self setDisplayLink:v5];

    displayLink2 = [(MTNotificationViewController *)self displayLink];
    [displayLink2 setPreferredFramesPerSecond:10];

    displayLink3 = [(MTNotificationViewController *)self displayLink];
    v8 = +[NSRunLoop mainRunLoop];
    [displayLink3 addToRunLoop:v8 forMode:NSRunLoopCommonModes];
  }
}

- (void)_teardownDisplayLink
{
  displayLink = [(MTNotificationViewController *)self displayLink];

  if (displayLink)
  {
    v4 = MTLogForCategory(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000021A8(v4);
    }

    displayLink2 = [(MTNotificationViewController *)self displayLink];
    [displayLink2 invalidate];

    [(MTNotificationViewController *)self setDisplayLink:0];
  }
}

@end