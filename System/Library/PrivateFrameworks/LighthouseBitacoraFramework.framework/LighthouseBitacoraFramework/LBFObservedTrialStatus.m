@interface LBFObservedTrialStatus
- (LBFObservedTrialStatus)initWithObservedStatus:(id)a3 deploymentId:(id)a4;
- (LBFObservedTrialStatus)initWithObservedStatus:(id)a3 deploymentId:(id)a4 isAllocated:(id)a5 isActivated:(id)a6 isAllocated_implicit:(BOOL)a7 isActivated_implicit:(BOOL)a8;
@end

@implementation LBFObservedTrialStatus

- (LBFObservedTrialStatus)initWithObservedStatus:(id)a3 deploymentId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LBFObservedTrialStatus;
  v9 = [(LBFObservedTrialStatus *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_experimentOrTaskId, a3);
    objc_storeStrong(&v10->_deploymentId, a4);
  }

  return v10;
}

- (LBFObservedTrialStatus)initWithObservedStatus:(id)a3 deploymentId:(id)a4 isAllocated:(id)a5 isActivated:(id)a6 isAllocated_implicit:(BOOL)a7 isActivated_implicit:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v22.receiver = self;
  v22.super_class = LBFObservedTrialStatus;
  v18 = [(LBFObservedTrialStatus *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_experimentOrTaskId, a3);
    objc_storeStrong(&v19->_deploymentId, a4);
    objc_storeStrong(&v19->_isAllocated, a5);
    objc_storeStrong(&v19->_isActivated, a6);
    v19->_isAllocated_implicit = a7;
    v19->_isActivated_implicit = a8;
  }

  return v19;
}

@end