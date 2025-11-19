@interface HKClinicalAuthorizationDisplayController
- (HKClinicalAuthorizationDisplayController)init;
- (HKClinicalAuthorizationDisplayController)initWithAuthorizationController:(id)a3;
- (HKSource)source;
- (id)_displayReadAuthorizationDateForMode:(int64_t)a3;
- (id)committedTitleForReadAuthorizationModeFooterWithSelectedMode:(int64_t)a3 formatBlock:(id)a4;
- (id)currentTimeDisplayStringForReadAuthorizationFooter;
- (id)currentTimeTitleForReadAuthorizationModeFooterWithSelectedMode:(int64_t)a3 formatBlock:(id)a4;
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

- (HKClinicalAuthorizationDisplayController)initWithAuthorizationController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKClinicalAuthorizationDisplayController;
  v6 = [(HKClinicalAuthorizationDisplayController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authorizationController, a3);
  }

  return v7;
}

- (id)_displayReadAuthorizationDateForMode:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(HKClinicalAuthorizationDisplayController *)self authorizationController];
    v5 = [v4 orderedTypesForReading];

    if (v5)
    {
      v6 = [v4 displayReadAuthorizationAnchorDate];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
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
        [(HKClinicalAuthorizationDisplayController *)v4 _displayReadAuthorizationDateForMode:v9];
      }

      v3 = 0;
    }
  }

  else if (!a3)
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

- (id)committedTitleForReadAuthorizationModeFooterWithSelectedMode:(int64_t)a3 formatBlock:(id)a4
{
  v6 = a4;
  v7 = [(HKClinicalAuthorizationDisplayController *)self _displayReadAuthorizationDateForMode:a3];
  if (v7)
  {
    v8 = [(HKClinicalAuthorizationDisplayController *)self _displayStringForReadAuthorizationDate:v7];
    v9 = [(HKClinicalAuthorizationDisplayController *)self source];
    v10 = v6[2](v6, v8, a3, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)currentTimeTitleForReadAuthorizationModeFooterWithSelectedMode:(int64_t)a3 formatBlock:(id)a4
{
  v6 = a4;
  v7 = [(HKClinicalAuthorizationDisplayController *)self currentTimeDisplayStringForReadAuthorizationFooter];
  v8 = [(HKClinicalAuthorizationDisplayController *)self source];
  v9 = v6[2](v6, v7, a3, v8);

  return v9;
}

- (HKSource)source
{
  v2 = [(HKClinicalAuthorizationDisplayController *)self authorizationController];
  v3 = [v2 source];

  return v3;
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