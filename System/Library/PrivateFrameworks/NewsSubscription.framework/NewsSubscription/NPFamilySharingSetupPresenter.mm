@interface NPFamilySharingSetupPresenter
- (void)presentFamilySharingSetupWith:(id)a3;
@end

@implementation NPFamilySharingSetupPresenter

- (void)presentFamilySharingSetupWith:(id)a3
{
  v3 = MEMORY[0x1E699C090];
  v4 = a3;
  v5 = [v3 alloc];
  v7 = [v5 initWithEventType:*MEMORY[0x1E699C088]];
  [v7 setClientName:@"AppleNewsPlus"];
  v6 = [objc_alloc(MEMORY[0x1E699C098]) initWithPresenter:v4];

  [v6 performWithContext:v7 completion:&__block_literal_global];
}

void __63__NPFamilySharingSetupPresenter_presentFamilySharingSetupWith___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = *MEMORY[0x1E69B50F8];
    if (os_log_type_enabled(*MEMORY[0x1E69B50F8], OS_LOG_TYPE_ERROR))
    {
      __63__NPFamilySharingSetupPresenter_presentFamilySharingSetupWith___block_invoke_cold_1(v4, v2);
    }
  }
}

void __63__NPFamilySharingSetupPresenter_presentFamilySharingSetupWith___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 error];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D7739000, v3, OS_LOG_TYPE_ERROR, "Failed to launch family setup UI with error: %{public}@", &v5, 0xCu);
}

@end