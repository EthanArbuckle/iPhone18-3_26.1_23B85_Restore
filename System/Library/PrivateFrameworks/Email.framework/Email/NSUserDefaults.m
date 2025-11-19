@interface NSUserDefaults
@end

@implementation NSUserDefaults

void __40__NSUserDefaults_Email__em_userDefaults__block_invoke()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.mail"];

  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"group.com.apple.mail"];
  v3 = em_userDefaults_userDefaults;
  em_userDefaults_userDefaults = v2;
}

void __47__NSUserDefaults_Email__em_lockdownModeEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E69AD390] shared];
  em_lockdownModeEnabled_lockdownModeEnabled = [v0 enabled];
}

@end