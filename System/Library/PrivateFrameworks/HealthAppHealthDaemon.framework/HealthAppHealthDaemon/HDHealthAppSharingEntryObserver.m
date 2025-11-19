@interface HDHealthAppSharingEntryObserver
- (HDHealthAppSharingEntryObserver)initWithProfile:(id)a3;
@end

@implementation HDHealthAppSharingEntryObserver

- (HDHealthAppSharingEntryObserver)initWithProfile:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HDHealthAppSharingEntryObserver;
  v5 = [(HDHealthAppSharingEntryObserver *)&v11 init];
  if (v5)
  {
    v6 = [v4 sharingEntryManager];
    sharingEntryManager = v5->_sharingEntryManager;
    v5->_sharingEntryManager = v6;

    [(HDSummarySharingEntryManager *)v5->_sharingEntryManager setDelegate:v5];
    v8 = objc_alloc_init(HDHAHealthPluginHostFeedGenerator);
    feedGenerator = v5->_feedGenerator;
    v5->_feedGenerator = v8;
  }

  return v5;
}

@end