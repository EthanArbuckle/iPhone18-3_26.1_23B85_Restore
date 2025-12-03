@interface HDHealthAppSharingEntryObserver
- (HDHealthAppSharingEntryObserver)initWithProfile:(id)profile;
@end

@implementation HDHealthAppSharingEntryObserver

- (HDHealthAppSharingEntryObserver)initWithProfile:(id)profile
{
  profileCopy = profile;
  v11.receiver = self;
  v11.super_class = HDHealthAppSharingEntryObserver;
  v5 = [(HDHealthAppSharingEntryObserver *)&v11 init];
  if (v5)
  {
    sharingEntryManager = [profileCopy sharingEntryManager];
    sharingEntryManager = v5->_sharingEntryManager;
    v5->_sharingEntryManager = sharingEntryManager;

    [(HDSummarySharingEntryManager *)v5->_sharingEntryManager setDelegate:v5];
    v8 = objc_alloc_init(HDHAHealthPluginHostFeedGenerator);
    feedGenerator = v5->_feedGenerator;
    v5->_feedGenerator = v8;
  }

  return v5;
}

@end