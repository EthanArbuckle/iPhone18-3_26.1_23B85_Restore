@interface MCDPlayableContentQueueTableViewController
- (MCDPlayableContentQueueTableViewController)initWithContentManager:(id)manager;
- (void)viewDidLoad;
@end

@implementation MCDPlayableContentQueueTableViewController

- (MCDPlayableContentQueueTableViewController)initWithContentManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = MCDPlayableContentQueueTableViewController;
  v6 = [(MCDPlayableContentQueueTableViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentManager, manager);
  }

  return v7;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MCDPlayableContentQueueTableViewController;
  [(MCDPlayableContentQueueTableViewController *)&v6 viewDidLoad];
  v3 = MCDCarDisplayBundle();
  v4 = [v3 localizedStringForKey:@"PLAYBACK_QUEUE_TITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
  [(MCDPlayableContentQueueTableViewController *)self setTitle:v4];

  tableView = [(MCDPlayableContentQueueTableViewController *)self tableView];
  [(_MCDNowPlayingContentManager *)self->_contentManager setTableView:tableView];
}

@end