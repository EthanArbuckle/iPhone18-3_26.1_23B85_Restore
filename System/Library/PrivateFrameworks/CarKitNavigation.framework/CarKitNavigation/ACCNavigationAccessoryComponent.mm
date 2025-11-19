@interface ACCNavigationAccessoryComponent
@end

@implementation ACCNavigationAccessoryComponent

void __62__ACCNavigationAccessoryComponent_CarPlay__CP_ignoreMaxLength__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 valueForKey:@"CPACCNavIgnoreMaxLengths"];

  if (v1)
  {
    CP_ignoreMaxLength_ignoreMaxLength = [v1 BOOLValue];
    v2 = CarNavLogging();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (CP_ignoreMaxLength_ignoreMaxLength)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_224A23000, v2, OS_LOG_TYPE_DEFAULT, "ignoreMaxLength set to %{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end