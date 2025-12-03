@interface ICNASubTracker
- (ICNASubTracker)initWithName:(id)name parentAATracker:(id)tracker;
- (ICNASubTracker)initWithName:(id)name parentTracker:(id)tracker;
@end

@implementation ICNASubTracker

- (ICNASubTracker)initWithName:(id)name parentTracker:(id)tracker
{
  nameCopy = name;
  aaTracker = [tracker aaTracker];
  v8 = [(ICNASubTracker *)self initWithName:nameCopy parentAATracker:aaTracker];

  return v8;
}

- (ICNASubTracker)initWithName:(id)name parentAATracker:(id)tracker
{
  nameCopy = name;
  trackerCopy = tracker;
  v15.receiver = self;
  v15.super_class = ICNASubTracker;
  v9 = [(ICNASubTracker *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_aaTrackerName, name);
    v11 = +[ICNAController sharedController];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__ICNASubTracker_initWithName_parentAATracker___block_invoke;
    v13[3] = &unk_2799AF748;
    v14 = v10;
    [v11 newAATrackerWithName:nameCopy parentAATracker:trackerCopy completionBlock:v13];
  }

  return v10;
}

@end