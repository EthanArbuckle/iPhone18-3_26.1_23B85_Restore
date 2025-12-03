@interface ICCollaborationAnalyticsTracker
- (ICCollaborationAnalyticsTracker)initWithDelegate:(id)delegate;
- (void)saveActivityType:(id)type isCollaborationSelected:(BOOL)selected error:(id)error completed:(BOOL)completed forNote:(id)note;
- (void)saveNewShare:(id)share forNote:(id)note;
- (void)trackShare:(id)share forNote:(id)note;
- (void)unshareNote:(id)note;
@end

@implementation ICCollaborationAnalyticsTracker

- (ICCollaborationAnalyticsTracker)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = ICCollaborationAnalyticsTracker;
  v5 = [(ICCollaborationAnalyticsTracker *)&v9 init];
  if (v5)
  {
    v6 = [[ICCollaborationAnalyticsTrackerInternal alloc] initWithDelegate:delegateCopy];
    collaborationAnalyticsTracker = v5->_collaborationAnalyticsTracker;
    v5->_collaborationAnalyticsTracker = v6;
  }

  return v5;
}

- (void)trackShare:(id)share forNote:(id)note
{
  noteCopy = note;
  shareCopy = share;
  collaborationAnalyticsTracker = [(ICCollaborationAnalyticsTracker *)self collaborationAnalyticsTracker];
  [collaborationAnalyticsTracker trackShare:shareCopy forNote:noteCopy];
}

- (void)saveNewShare:(id)share forNote:(id)note
{
  noteCopy = note;
  shareCopy = share;
  collaborationAnalyticsTracker = [(ICCollaborationAnalyticsTracker *)self collaborationAnalyticsTracker];
  [collaborationAnalyticsTracker saveNewShare:shareCopy forNote:noteCopy];
}

- (void)saveActivityType:(id)type isCollaborationSelected:(BOOL)selected error:(id)error completed:(BOOL)completed forNote:(id)note
{
  completedCopy = completed;
  selectedCopy = selected;
  noteCopy = note;
  errorCopy = error;
  typeCopy = type;
  collaborationAnalyticsTracker = [(ICCollaborationAnalyticsTracker *)self collaborationAnalyticsTracker];
  [collaborationAnalyticsTracker saveActivityType:typeCopy isCollaborationSelected:selectedCopy error:errorCopy completed:completedCopy forNote:noteCopy];
}

- (void)unshareNote:(id)note
{
  noteCopy = note;
  collaborationAnalyticsTracker = [(ICCollaborationAnalyticsTracker *)self collaborationAnalyticsTracker];
  [collaborationAnalyticsTracker unshareNote:noteCopy];
}

@end