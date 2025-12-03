@interface DKFollowUp
+ (id)_followUpController;
+ (id)_followUpIconName;
+ (void)clearFollowUp;
+ (void)postFollowUp;
@end

@implementation DKFollowUp

+ (void)postFollowUp
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_248D66000, a2, OS_LOG_TYPE_ERROR, "Failed to post follow up: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)clearFollowUp
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_248D66000, a2, OS_LOG_TYPE_ERROR, "Failed to clear follow up: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (id)_followUpController
{
  v2 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.disembarkui"];

  return v2;
}

+ (id)_followUpIconName
{
  v2 = MGCopyAnswer();
  lowercaseString = [v2 lowercaseString];

  return lowercaseString;
}

@end