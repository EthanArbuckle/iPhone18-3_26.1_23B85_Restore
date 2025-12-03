@interface HKClinicalAuthorizationDisplayController
- (HKClinicalAuthorizationDisplayController)init;
- (HKClinicalAuthorizationDisplayController)initWithAuthorizationController:(id)controller;
- (HKSource)source;
- (id)_displayReadAuthorizationDateForMode:(int64_t)mode;
- (id)committedTitleForReadAuthorizationModeFooterWithSelectedMode:(int64_t)mode formatBlock:(id)block;
- (id)currentTimeDisplayStringForReadAuthorizationFooter;
- (id)currentTimeTitleForReadAuthorizationModeFooterWithSelectedMode:(int64_t)mode formatBlock:(id)block;
@end

@implementation HKClinicalAuthorizationDisplayController

- (HKClinicalAuthorizationDisplayController)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalAuthorizationDisplayController)initWithAuthorizationController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = HKClinicalAuthorizationDisplayController;
  v6 = [(HKClinicalAuthorizationDisplayController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authorizationController, controller);
  }

  return v7;
}

- (id)_displayReadAuthorizationDateForMode:(int64_t)mode
{
  if (mode == 1)
  {
    authorizationController = [(HKClinicalAuthorizationDisplayController *)self authorizationController];
    orderedTypesForReading = [authorizationController orderedTypesForReading];

    if (orderedTypesForReading)
    {
      displayReadAuthorizationAnchorDate = [authorizationController displayReadAuthorizationAnchorDate];
      v7 = displayReadAuthorizationAnchorDate;
      if (displayReadAuthorizationAnchorDate)
      {
        v8 = displayReadAuthorizationAnchorDate;
      }

      else
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF00]);
      }

      v3 = v8;
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(HKClinicalAuthorizationDisplayController *)authorizationController _displayReadAuthorizationDateForMode:v9];
      }

      v3 = 0;
    }
  }

  else if (!mode)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
  }

  return v3;
}

- (id)currentTimeDisplayStringForReadAuthorizationFooter
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v4 = [(HKClinicalAuthorizationDisplayController *)self _displayStringForReadAuthorizationDate:v3];

  return v4;
}

- (id)committedTitleForReadAuthorizationModeFooterWithSelectedMode:(int64_t)mode formatBlock:(id)block
{
  blockCopy = block;
  v7 = [(HKClinicalAuthorizationDisplayController *)self _displayReadAuthorizationDateForMode:mode];
  if (v7)
  {
    v8 = [(HKClinicalAuthorizationDisplayController *)self _displayStringForReadAuthorizationDate:v7];
    source = [(HKClinicalAuthorizationDisplayController *)self source];
    v10 = blockCopy[2](blockCopy, v8, mode, source);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)currentTimeTitleForReadAuthorizationModeFooterWithSelectedMode:(int64_t)mode formatBlock:(id)block
{
  blockCopy = block;
  currentTimeDisplayStringForReadAuthorizationFooter = [(HKClinicalAuthorizationDisplayController *)self currentTimeDisplayStringForReadAuthorizationFooter];
  source = [(HKClinicalAuthorizationDisplayController *)self source];
  v9 = blockCopy[2](blockCopy, currentTimeDisplayStringForReadAuthorizationFooter, mode, source);

  return v9;
}

- (HKSource)source
{
  authorizationController = [(HKClinicalAuthorizationDisplayController *)self authorizationController];
  source = [authorizationController source];

  return source;
}

- (void)_displayReadAuthorizationDateForMode:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 fetchError];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Missing date for read authorization: last authorization controller fetch failed with error %{public}@", &v4, 0xCu);
}

@end