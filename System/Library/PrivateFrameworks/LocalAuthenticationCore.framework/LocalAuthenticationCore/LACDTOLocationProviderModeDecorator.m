@interface LACDTOLocationProviderModeDecorator
- (LACDTOLocationProviderModeDecorator)initWithLocationProvider:(id)a3 featureController:(id)a4;
- (void)_checkIsFeatureStrictModeEnabledWithCompletion:(id)a3;
- (void)checkIsInFamiliarLocationWithCompletion:(id)a3;
@end

@implementation LACDTOLocationProviderModeDecorator

- (LACDTOLocationProviderModeDecorator)initWithLocationProvider:(id)a3 featureController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LACDTOLocationProviderModeDecorator;
  v9 = [(LACDTOLocationProviderModeDecorator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationProvider, a3);
    objc_storeStrong(&v10->_featureController, a4);
  }

  return v10;
}

- (void)checkIsInFamiliarLocationWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__LACDTOLocationProviderModeDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke;
  v6[3] = &unk_1E7A977D0;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(LACDTOLocationProviderModeDecorator *)self _checkIsFeatureStrictModeEnabledWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __79__LACDTOLocationProviderModeDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = +[LACDTOLocationState strictLocationState];
      v7 = LACLogDTOLocation();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543618;
        v10 = v5;
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will use strict mode value %@", &v9, 0x16u);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      [WeakRetained[1] checkIsInFamiliarLocationWithCompletion:*(a1 + 32)];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_checkIsFeatureStrictModeEnabledWithCompletion:(id)a3
{
  v4 = a3;
  featureController = self->_featureController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__LACDTOLocationProviderModeDecorator__checkIsFeatureStrictModeEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7A97C78;
  v8 = v4;
  v6 = v4;
  [(LACDTOFeatureControlling *)featureController checkIsFeatureStrictModeEnabledWithCompletion:v7];
}

@end