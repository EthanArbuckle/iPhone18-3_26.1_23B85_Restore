@interface NSString(UserNotificationsUIKit)
- (BOOL)fcui_containsExcessiveLineHeightCharacters;
@end

@implementation NSString(UserNotificationsUIKit)

- (BOOL)fcui_containsExcessiveLineHeightCharacters
{
  v2 = [MEMORY[0x277D74300] fcui_excessiveLineHeightChars];
  v3 = [a1 rangeOfCharacterFromSet:v2] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

@end