@interface ICCollaborationAnalyticsTracker
- (ICCollaborationAnalyticsTracker)initWithDelegate:(id)a3;
- (void)saveActivityType:(id)a3 isCollaborationSelected:(BOOL)a4 error:(id)a5 completed:(BOOL)a6 forNote:(id)a7;
- (void)saveNewShare:(id)a3 forNote:(id)a4;
- (void)trackShare:(id)a3 forNote:(id)a4;
- (void)unshareNote:(id)a3;
@end

@implementation ICCollaborationAnalyticsTracker

- (ICCollaborationAnalyticsTracker)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICCollaborationAnalyticsTracker;
  v5 = [(ICCollaborationAnalyticsTracker *)&v9 init];
  if (v5)
  {
    v6 = [[ICCollaborationAnalyticsTrackerInternal alloc] initWithDelegate:v4];
    collaborationAnalyticsTracker = v5->_collaborationAnalyticsTracker;
    v5->_collaborationAnalyticsTracker = v6;
  }

  return v5;
}

- (void)trackShare:(id)a3 forNote:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCollaborationAnalyticsTracker *)self collaborationAnalyticsTracker];
  [v8 trackShare:v7 forNote:v6];
}

- (void)saveNewShare:(id)a3 forNote:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCollaborationAnalyticsTracker *)self collaborationAnalyticsTracker];
  [v8 saveNewShare:v7 forNote:v6];
}

- (void)saveActivityType:(id)a3 isCollaborationSelected:(BOOL)a4 error:(id)a5 completed:(BOOL)a6 forNote:(id)a7
{
  v7 = a6;
  v9 = a4;
  v12 = a7;
  v13 = a5;
  v14 = a3;
  v15 = [(ICCollaborationAnalyticsTracker *)self collaborationAnalyticsTracker];
  [v15 saveActivityType:v14 isCollaborationSelected:v9 error:v13 completed:v7 forNote:v12];
}

- (void)unshareNote:(id)a3
{
  v4 = a3;
  v5 = [(ICCollaborationAnalyticsTracker *)self collaborationAnalyticsTracker];
  [v5 unshareNote:v4];
}

@end