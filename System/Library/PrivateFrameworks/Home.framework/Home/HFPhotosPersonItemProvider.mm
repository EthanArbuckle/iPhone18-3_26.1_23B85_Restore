@interface HFPhotosPersonItemProvider
- (HFPhotosPersonItemProvider)initWithHome:(id)home forUser:(id)user;
- (HFPhotosPersonItemProvider)initWithHome:(id)home personManager:(id)manager;
@end

@implementation HFPhotosPersonItemProvider

- (HFPhotosPersonItemProvider)initWithHome:(id)home forUser:(id)user
{
  userCopy = user;
  homeCopy = home;
  hf_allUsersIncludingCurrentUser = [homeCopy hf_allUsersIncludingCurrentUser];
  v9 = [hf_allUsersIncludingCurrentUser containsObject:userCopy];

  if (v9)
  {
    photosPersonManager = [userCopy photosPersonManager];
    v15.receiver = self;
    v15.super_class = HFPhotosPersonItemProvider;
    v11 = [(HFPersonItemProvider *)&v15 initWithHome:homeCopy personManager:photosPersonManager];

    self = v11;
    selfCopy = self;
  }

  else
  {
    hf_allUsersIncludingCurrentUser2 = [homeCopy hf_allUsersIncludingCurrentUser];
    NSLog(&cfstr_SHomeDoesnTInc_0.isa, self, "[HFPhotosPersonItemProvider initWithHome:forUser:]", homeCopy, userCopy, hf_allUsersIncludingCurrentUser2);

    selfCopy = 0;
  }

  return selfCopy;
}

- (HFPhotosPersonItemProvider)initWithHome:(id)home personManager:(id)manager
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_forUser_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFPersonItemProvider.m" lineNumber:106 description:{@"%s is unavailable; use %@ instead", "-[HFPhotosPersonItemProvider initWithHome:personManager:]", v7}];

  return 0;
}

@end