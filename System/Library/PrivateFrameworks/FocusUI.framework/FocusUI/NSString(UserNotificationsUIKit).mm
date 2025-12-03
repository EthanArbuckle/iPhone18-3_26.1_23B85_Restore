@interface NSString(UserNotificationsUIKit)
- (BOOL)fcui_containsExcessiveLineHeightCharacters;
@end

@implementation NSString(UserNotificationsUIKit)

- (BOOL)fcui_containsExcessiveLineHeightCharacters
{
  fcui_excessiveLineHeightChars = [MEMORY[0x277D74300] fcui_excessiveLineHeightChars];
  v3 = [self rangeOfCharacterFromSet:fcui_excessiveLineHeightChars] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

@end