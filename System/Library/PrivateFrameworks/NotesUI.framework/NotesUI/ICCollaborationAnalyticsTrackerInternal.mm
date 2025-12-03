@interface ICCollaborationAnalyticsTrackerInternal
- (ICCollaborationAnalyticsTrackerInternal)init;
- (void)saveActivityType:(id)type isCollaborationSelected:(BOOL)selected error:(id)error completed:(BOOL)completed forNote:(id)note;
- (void)saveNewShare:(id)share forNote:(id)note;
- (void)trackShare:(id)share forNote:(id)note;
- (void)unshareNote:(id)note;
@end

@implementation ICCollaborationAnalyticsTrackerInternal

- (void)trackShare:(id)share forNote:(id)note
{
  shareCopy = share;
  noteCopy = note;
  selfCopy = self;
  ICCollaborationAnalyticsTrackerInternal.track(share:note:)(share, noteCopy);
}

- (void)saveNewShare:(id)share forNote:(id)note
{
  shareCopy = share;
  noteCopy = note;
  selfCopy = self;
  ICCollaborationAnalyticsTrackerInternal.save(newShare:note:)(shareCopy, noteCopy);
}

- (void)saveActivityType:(id)type isCollaborationSelected:(BOOL)selected error:(id)error completed:(BOOL)completed forNote:(id)note
{
  completedCopy = completed;
  if (type)
  {
    v12 = sub_1D4419C54();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  errorCopy = error;
  noteCopy = note;
  selfCopy = self;
  ICCollaborationAnalyticsTrackerInternal.save(activityType:collaborationSelected:error:completed:note:)(v12, v14, selected, error, completedCopy, noteCopy);
}

- (void)unshareNote:(id)note
{
  noteCopy = note;
  selfCopy = self;
  ICCollaborationAnalyticsTrackerInternal.unshare(note:)(noteCopy);
}

- (ICCollaborationAnalyticsTrackerInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end