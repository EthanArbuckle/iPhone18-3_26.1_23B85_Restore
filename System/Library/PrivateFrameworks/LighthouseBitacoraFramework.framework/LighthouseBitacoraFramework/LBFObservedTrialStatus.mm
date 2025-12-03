@interface LBFObservedTrialStatus
- (LBFObservedTrialStatus)initWithObservedStatus:(id)status deploymentId:(id)id;
- (LBFObservedTrialStatus)initWithObservedStatus:(id)status deploymentId:(id)id isAllocated:(id)allocated isActivated:(id)activated isAllocated_implicit:(BOOL)allocated_implicit isActivated_implicit:(BOOL)activated_implicit;
@end

@implementation LBFObservedTrialStatus

- (LBFObservedTrialStatus)initWithObservedStatus:(id)status deploymentId:(id)id
{
  statusCopy = status;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = LBFObservedTrialStatus;
  v9 = [(LBFObservedTrialStatus *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_experimentOrTaskId, status);
    objc_storeStrong(&v10->_deploymentId, id);
  }

  return v10;
}

- (LBFObservedTrialStatus)initWithObservedStatus:(id)status deploymentId:(id)id isAllocated:(id)allocated isActivated:(id)activated isAllocated_implicit:(BOOL)allocated_implicit isActivated_implicit:(BOOL)activated_implicit
{
  statusCopy = status;
  idCopy = id;
  allocatedCopy = allocated;
  activatedCopy = activated;
  v22.receiver = self;
  v22.super_class = LBFObservedTrialStatus;
  v18 = [(LBFObservedTrialStatus *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_experimentOrTaskId, status);
    objc_storeStrong(&v19->_deploymentId, id);
    objc_storeStrong(&v19->_isAllocated, allocated);
    objc_storeStrong(&v19->_isActivated, activated);
    v19->_isAllocated_implicit = allocated_implicit;
    v19->_isActivated_implicit = activated_implicit;
  }

  return v19;
}

@end