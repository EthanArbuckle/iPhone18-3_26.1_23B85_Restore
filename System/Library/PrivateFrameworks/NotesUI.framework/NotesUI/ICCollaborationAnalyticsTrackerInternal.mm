@interface ICCollaborationAnalyticsTrackerInternal
- (ICCollaborationAnalyticsTrackerInternal)init;
- (void)saveActivityType:(id)a3 isCollaborationSelected:(BOOL)a4 error:(id)a5 completed:(BOOL)a6 forNote:(id)a7;
- (void)saveNewShare:(id)a3 forNote:(id)a4;
- (void)trackShare:(id)a3 forNote:(id)a4;
- (void)unshareNote:(id)a3;
@end

@implementation ICCollaborationAnalyticsTrackerInternal

- (void)trackShare:(id)a3 forNote:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  ICCollaborationAnalyticsTrackerInternal.track(share:note:)(a3, v8);
}

- (void)saveNewShare:(id)a3 forNote:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  ICCollaborationAnalyticsTrackerInternal.save(newShare:note:)(v6, v7);
}

- (void)saveActivityType:(id)a3 isCollaborationSelected:(BOOL)a4 error:(id)a5 completed:(BOOL)a6 forNote:(id)a7
{
  v8 = a6;
  if (a3)
  {
    v12 = sub_1D4419C54();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = a5;
  v16 = a7;
  v17 = self;
  ICCollaborationAnalyticsTrackerInternal.save(activityType:collaborationSelected:error:completed:note:)(v12, v14, a4, a5, v8, v16);
}

- (void)unshareNote:(id)a3
{
  v4 = a3;
  v5 = self;
  ICCollaborationAnalyticsTrackerInternal.unshare(note:)(v4);
}

- (ICCollaborationAnalyticsTrackerInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end