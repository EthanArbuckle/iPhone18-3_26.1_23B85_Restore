@interface ICPasswordReaskController
+ (id)sharedController;
- (BOOL)isEnrolledInReaskForAccount:(id)account;
- (BOOL)shouldReaskForAccount:(id)account;
- (id)keyForEnrolledInReask:(id)reask;
- (id)keyForLastReaskDate:(id)date;
- (id)lastReaskDateForAccount:(id)account;
- (void)enrollInReaskForAccount:(id)account;
- (void)reaskPasswordForAccount:(id)account;
- (void)reaskPasswordForAccountIfNecessary:(id)necessary;
- (void)setIsEnrolledInReask:(BOOL)reask forAccount:(id)account;
- (void)setLastReaskDate:(id)date forAccount:(id)account;
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

- (void)enrollInReaskForAccount:(id)account
{
  v10 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    shortLoggingDescription = [accountCopy shortLoggingDescription];
    v8 = 138412290;
    v9 = shortLoggingDescription;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Enrolling account for password reask: %@", &v8, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(ICPasswordReaskController *)self setLastReaskDate:date forAccount:accountCopy];

  [(ICPasswordReaskController *)self setIsEnrolledInReask:1 forAccount:accountCopy];
}

- (void)reaskPasswordForAccountIfNecessary:(id)necessary
{
  v12 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  if ([(ICPasswordReaskController *)self isEnrolledInReaskForAccount:necessaryCopy])
  {
    v5 = [(ICPasswordReaskController *)self shouldReaskForAccount:necessaryCopy];
    v6 = os_log_create("com.apple.notes", "Crypto");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        shortLoggingDescription = [necessaryCopy shortLoggingDescription];
        v10 = 138412290;
        v11 = shortLoggingDescription;
        _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Account is being reasked for password: %@", &v10, 0xCu);
      }

      [(ICPasswordReaskController *)self reaskPasswordForAccount:necessaryCopy];
    }

    else
    {
      if (v7)
      {
        shortLoggingDescription2 = [necessaryCopy shortLoggingDescription];
        v10 = 138412290;
        v11 = shortLoggingDescription2;
        _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Account is NOT reasked for password: %@", &v10, 0xCu);
      }
    }
  }
}

- (void)reaskPasswordForAccount:(id)account
{
  accountCopy = account;
  v5 = +[ICAuthenticationState sharedState];
  [v5 removeMainKeysFromKeychainForAccount:accountCopy];

  date = [MEMORY[0x277CBEAA8] date];
  [(ICPasswordReaskController *)self setLastReaskDate:date forAccount:accountCopy];
}

- (BOOL)shouldReaskForAccount:(id)account
{
  v3 = [(ICPasswordReaskController *)self lastReaskDateForAccount:account];
  if (v3)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:v3];
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

- (id)keyForEnrolledInReask:(id)reask
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [reask identifier];
  v5 = [v3 stringWithFormat:@"%@_%@", @"kICDefaultsKeyEnrolledInPasswordReask", identifier];

  return v5;
}

- (id)keyForLastReaskDate:(id)date
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [date identifier];
  v5 = [v3 stringWithFormat:@"%@_%@", @"kICDefaultsKeyLastPasswordReaskDate", identifier];

  return v5;
}

- (BOOL)isEnrolledInReaskForAccount:(id)account
{
  v4 = MEMORY[0x277D36180];
  accountCopy = account;
  sharedAppGroupDefaults = [v4 sharedAppGroupDefaults];
  v7 = [(ICPasswordReaskController *)self keyForEnrolledInReask:accountCopy];

  LOBYTE(accountCopy) = [sharedAppGroupDefaults BOOLForKey:v7];
  return accountCopy;
}

- (void)setIsEnrolledInReask:(BOOL)reask forAccount:(id)account
{
  reaskCopy = reask;
  v6 = MEMORY[0x277D36180];
  accountCopy = account;
  sharedAppGroupDefaults = [v6 sharedAppGroupDefaults];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:reaskCopy];
  v9 = [(ICPasswordReaskController *)self keyForEnrolledInReask:accountCopy];

  [sharedAppGroupDefaults setObject:v8 forKey:v9];
}

- (id)lastReaskDateForAccount:(id)account
{
  accountCopy = account;
  objc_opt_class();
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v6 = [(ICPasswordReaskController *)self keyForLastReaskDate:accountCopy];

  v7 = [mEMORY[0x277D36180] objectForKey:v6];
  v8 = ICCheckedDynamicCast();

  return v8;
}

- (void)setLastReaskDate:(id)date forAccount:(id)account
{
  v16 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  accountCopy = account;
  v8 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    shortLoggingDescription = [accountCopy shortLoggingDescription];
    v12 = 138412546;
    v13 = shortLoggingDescription;
    v14 = 2112;
    v15 = dateCopy;
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "Setting last reask date for account %@ to %@", &v12, 0x16u);
  }

  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v11 = [(ICPasswordReaskController *)self keyForLastReaskDate:accountCopy];
  [mEMORY[0x277D36180] setObject:dateCopy forKey:v11];
}

@end