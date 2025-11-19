@interface ICPasswordReaskController
+ (id)sharedController;
- (BOOL)isEnrolledInReaskForAccount:(id)a3;
- (BOOL)shouldReaskForAccount:(id)a3;
- (id)keyForEnrolledInReask:(id)a3;
- (id)keyForLastReaskDate:(id)a3;
- (id)lastReaskDateForAccount:(id)a3;
- (void)enrollInReaskForAccount:(id)a3;
- (void)reaskPasswordForAccount:(id)a3;
- (void)reaskPasswordForAccountIfNecessary:(id)a3;
- (void)setIsEnrolledInReask:(BOOL)a3 forAccount:(id)a4;
- (void)setLastReaskDate:(id)a3 forAccount:(id)a4;
@end

@implementation ICPasswordReaskController

+ (id)sharedController
{
  if (s_onceToken != -1)
  {
    +[ICPasswordReaskController sharedController];
  }

  v3 = sharedController_s_instance;

  return v3;
}

void __45__ICPasswordReaskController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(ICPasswordReaskController);
  v1 = sharedController_s_instance;
  sharedController_s_instance = v0;
}

- (void)enrollInReaskForAccount:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 shortLoggingDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Enrolling account for password reask: %@", &v8, 0xCu);
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  [(ICPasswordReaskController *)self setLastReaskDate:v7 forAccount:v4];

  [(ICPasswordReaskController *)self setIsEnrolledInReask:1 forAccount:v4];
}

- (void)reaskPasswordForAccountIfNecessary:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ICPasswordReaskController *)self isEnrolledInReaskForAccount:v4])
  {
    v5 = [(ICPasswordReaskController *)self shouldReaskForAccount:v4];
    v6 = os_log_create("com.apple.notes", "Crypto");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        v8 = [v4 shortLoggingDescription];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Account is being reasked for password: %@", &v10, 0xCu);
      }

      [(ICPasswordReaskController *)self reaskPasswordForAccount:v4];
    }

    else
    {
      if (v7)
      {
        v9 = [v4 shortLoggingDescription];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Account is NOT reasked for password: %@", &v10, 0xCu);
      }
    }
  }
}

- (void)reaskPasswordForAccount:(id)a3
{
  v4 = a3;
  v5 = +[ICAuthenticationState sharedState];
  [v5 removeMainKeysFromKeychainForAccount:v4];

  v6 = [MEMORY[0x277CBEAA8] date];
  [(ICPasswordReaskController *)self setLastReaskDate:v6 forAccount:v4];
}

- (BOOL)shouldReaskForAccount:(id)a3
{
  v3 = [(ICPasswordReaskController *)self lastReaskDateForAccount:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    [v4 timeIntervalSinceDate:v3];
    v6 = v5;
    v7 = +[ICCloudConfiguration sharedConfiguration];
    v8 = v6 >= [v7 durationForNextPasswordReask];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)keyForEnrolledInReask:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 identifier];
  v5 = [v3 stringWithFormat:@"%@_%@", @"kICDefaultsKeyEnrolledInPasswordReask", v4];

  return v5;
}

- (id)keyForLastReaskDate:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 identifier];
  v5 = [v3 stringWithFormat:@"%@_%@", @"kICDefaultsKeyLastPasswordReaskDate", v4];

  return v5;
}

- (BOOL)isEnrolledInReaskForAccount:(id)a3
{
  v4 = MEMORY[0x277D36180];
  v5 = a3;
  v6 = [v4 sharedAppGroupDefaults];
  v7 = [(ICPasswordReaskController *)self keyForEnrolledInReask:v5];

  LOBYTE(v5) = [v6 BOOLForKey:v7];
  return v5;
}

- (void)setIsEnrolledInReask:(BOOL)a3 forAccount:(id)a4
{
  v4 = a3;
  v6 = MEMORY[0x277D36180];
  v7 = a4;
  v10 = [v6 sharedAppGroupDefaults];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v9 = [(ICPasswordReaskController *)self keyForEnrolledInReask:v7];

  [v10 setObject:v8 forKey:v9];
}

- (id)lastReaskDateForAccount:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v6 = [(ICPasswordReaskController *)self keyForLastReaskDate:v4];

  v7 = [v5 objectForKey:v6];
  v8 = ICCheckedDynamicCast();

  return v8;
}

- (void)setLastReaskDate:(id)a3 forAccount:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 shortLoggingDescription];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "Setting last reask date for account %@ to %@", &v12, 0x16u);
  }

  v10 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v11 = [(ICPasswordReaskController *)self keyForLastReaskDate:v7];
  [v10 setObject:v6 forKey:v11];
}

@end