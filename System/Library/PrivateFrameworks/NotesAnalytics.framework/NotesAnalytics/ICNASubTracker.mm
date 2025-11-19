@interface ICNASubTracker
- (ICNASubTracker)initWithName:(id)a3 parentAATracker:(id)a4;
- (ICNASubTracker)initWithName:(id)a3 parentTracker:(id)a4;
@end

@implementation ICNASubTracker

- (ICNASubTracker)initWithName:(id)a3 parentTracker:(id)a4
{
  v6 = a3;
  v7 = [a4 aaTracker];
  v8 = [(ICNASubTracker *)self initWithName:v6 parentAATracker:v7];

  return v8;
}

- (ICNASubTracker)initWithName:(id)a3 parentAATracker:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = ICNASubTracker;
  v9 = [(ICNASubTracker *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_aaTrackerName, a3);
    v11 = +[ICNAController sharedController];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__ICNASubTracker_initWithName_parentAATracker___block_invoke;
    v13[3] = &unk_2799AF748;
    v14 = v10;
    [v11 newAATrackerWithName:v7 parentAATracker:v8 completionBlock:v13];
  }

  return v10;
}

@end